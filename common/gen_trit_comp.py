#!/usr/bin/env python

from collections import defaultdict
from dataclasses import dataclass
from itertools import product
from operator import mul
from functools import reduce
from math import ceil, floor
from random import randint, shuffle


# Node class for the binary prefix tree.
@dataclass(order=True)
class Node:
    v: int
    n: str
    left: object
    right: object
    

# Return a compression table mapping 'grp' values into a code word.
def gen_comp_table(weights, grp):
  combs = product(weights, repeat=grp)
  
  l = [Node(reduce(mul, [v for _, v in w], 1), "".join([str(n) for n,_ in w]), None, None) for w in combs]
      
  # build up prefix tree
  while len(l) > 1:
    l = sorted(l)
    i = l[0]
    j = l[1]
    l = l[2:]
    l = [Node(i.v+j.v,i.n+j.n,i,j)] + l
    
  def table(n, pref="", t={}):
    if n.left:
      t = table(n.left, pref + "1", t)
    if n.right:
      t = table(n.right, pref + "0", t)
      
    if not n.left and not n.right:
      #print(n.n, pref)
      t[n.n] = pref
      
    return t
    
  # parse tree to prefix table
  t = table(l[0])

  return t

# Generate C compression and decompression functions.
def gen_compress(weights, grp):
  ret = []

  t = gen_comp_table(weights, grp)

  # generate compression function
  ret.append("#include <stdint.h>")
  ret.append("#include <stddef.h>")
  ret.append('#include "bitstream.h"')
  ret.append('#include "fq_arithmetic/vf3.h"')
  ret.append('#include "params.h"')

  ret.append('')
  
  ret.append(f"uint32_t tab_enc_val[{len(t)}] = {{")
  ret.append("  " + ", ".join(["0b" + t["".join([str(floor(i/3**j)%3) for j in range(grp)])][::-1] for i in range(3**grp)]))
  ret.append("};\n")
  
  ret.append(f"uint8_t tab_enc_len[{len(t)}] = {{")
  ret.append("  " + ", ".join([str(len(t["".join([str(floor(i/3**j)%3) for j in range(grp)])])) for i in range(3**grp)]))
  ret.append("};\n")
  
  ret.append("int compress(bitstream_t *stream, vf3_e *vec)\n{")
  ret.append("  int ret = 0;\n")
  ret.append(f"  for (int i = 0; i+{grp-1} < vec->size; i += {grp}){{")
  addr = " + ".join([f"vf3_get_element(i + {j}, vec) * {3**j}" for j in range(grp)])
  #ret.append(f'    printf("%i %i %i - %i  %b\\n", {", ".join([f"vf3_get_element(i + {j}, vec)" for j in range(grp)])}, tab_enc_len[{addr}], tab_enc_val[{addr}]);')
  ret.append(f"    ret |= bs_write(stream, tab_enc_val[{addr}], tab_enc_len[{addr}]);")
  ret.append("}")
  ret.append(f"  for (int i = 0; i < vec->size % {grp}; i++)")
  ret.append(f"    ret |= bs_write(stream, vf3_get_element(vec->size - (vec->size % {grp}) + i, vec), 2);")
  ret.append("\n  return ret;")
  ret.append("}\n")
  
  
  # recursively generate case-switch blocks
  def rec_cases(t, ind="  ", plen=0):
    ret = []

    minblen = float('inf')

    for pref in t.values():
      minblen = min(minblen, len(pref))

    prefixes = defaultdict(lambda: [])
    for k, v in t.items():
      if v not in prefixes:
        prefixes[v[:minblen]].append((k, v))
  
    ret.append(f"{ind}val = bs_read(stream, {minblen-plen});")
    #ret.append(f'{ind}printf("val: %b   len: %i\\n", val, {minblen-plen});')
    ret.append(f"{ind}switch (val) {{""")
  
    ind += "  "
   
    for pattern, l in prefixes.items():
      if len(l) == 1:
        for res, c in l:
          ret.append(f"{ind}case 0b{c[plen:][::-1]}:")
          ind += "  "
          for v in res:
            ret.append(f"{ind}vf3_set_coeff(pos++, vec, {v});")
          ind = ind[:-2]
          ret.append(f"{ind}break;")
    
      else:
        ret.append(f"{ind}case 0b{pattern[plen:][::-1]}:")
        ret += rec_cases(dict(l), ind + "  ", minblen)
        ret.append(f"{ind}break;")
  
    ind = ind[:-2]
    ret.append(f"""{ind}}}""")

    return ret
  
  # genrate decompression function
  ret.append("int decompress(bitstream_t *stream, vf3_e *vec)")
  ret.append("{")
  ret.append("  uint32_t pos = 0;")
  ret.append("")
  ret.append(f"  for (int i = 0; i+{grp-1} < vec->size; i += {grp})")
  ret.append("  {")
  
  ret.append("    uint32_t val;")
  ret.append("")
  ret += rec_cases(t, ind="    ")
  #ret.append('    printf("\\n");')
  ret.append("  }")
  ret.append("")
  for i in range(1, grp):
    ret.append(f"  if (vec->size % {grp} == {i})")
    ret.append("  {")
    for j in reversed(range(1, i+1)):
      ret.append(f"    vf3_set_coeff(vec->size-{j}, vec, bs_read(stream, 2));")
    ret.append("  }")
    ret.append("")
  ret.append("")
  ret.append("  return 0;")
  ret.append("}")
  ret.append("")

  return ret


if __name__ == "__main__":
  import argparse, sys

  parser = argparse.ArgumentParser(
    description="Generate Huffman compression and decompression code for a GF(3) vector with high Hamming weight.")

  parser.add_argument("-n", "--veclen", type=int, help = "Length of the vector. Default: 4288.", default=4288)
  parser.add_argument("-w", "--weight", type=int, help = "Weight of the vector. Default: 3834.", default=3834)
  parser.add_argument("-g", "--group",  type=int, help = "Group [GROUP] elemtents together for compression. Default: 3.", default=3)

  parser.add_argument('file', nargs='?', type=argparse.FileType('w'), help = "Output file. Default: stdout.", default=sys.stdout)

  parser.add_argument("-t", "--table", action='store_true', help = "Print prefix table and exit.")

  args = parser.parse_args()

  if args.weight > args.veclen:
    sys.stderr.write("Vector weight larger than vector length!\n")
    sys.exit(-1)

  weights = [
    (0, float(1 - (args.weight/args.veclen))),
    (1, float((args.weight/args.veclen)/2)),
    (2, float((args.weight/args.veclen)/2))
  ]
  
  if args.table:
    t = gen_comp_table(weights, args.group)
    
    print("\n".join([f"{pref} | {code}" for pref, code in sorted(t.items(), key=lambda x: f"{len(x[1]):032} {x[1]}")]))
  else:
    args.file.write("\n".join(gen_compress(weights, args.group)) + "\n")

