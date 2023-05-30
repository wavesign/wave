# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249

# Include any dependencies generated for this target.
include CMakeFiles/benchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/benchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/benchmark.dir/flags.make

util/compress.c: gen_trit_comp.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating util/compress.c"
	./gen_trit_comp.py > util/compress.c

CMakeFiles/benchmark.dir/benchmark.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/benchmark.c.o: benchmark.c
CMakeFiles/benchmark.dir/benchmark.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/benchmark.dir/benchmark.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/benchmark.c.o -MF CMakeFiles/benchmark.dir/benchmark.c.o.d -o CMakeFiles/benchmark.dir/benchmark.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/benchmark.c

CMakeFiles/benchmark.dir/benchmark.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/benchmark.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/benchmark.c > CMakeFiles/benchmark.dir/benchmark.c.i

CMakeFiles/benchmark.dir/benchmark.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/benchmark.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/benchmark.c -o CMakeFiles/benchmark.dir/benchmark.c.s

CMakeFiles/benchmark.dir/keygen.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/keygen.c.o: keygen.c
CMakeFiles/benchmark.dir/keygen.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/benchmark.dir/keygen.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/keygen.c.o -MF CMakeFiles/benchmark.dir/keygen.c.o.d -o CMakeFiles/benchmark.dir/keygen.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/keygen.c

CMakeFiles/benchmark.dir/keygen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/keygen.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/keygen.c > CMakeFiles/benchmark.dir/keygen.c.i

CMakeFiles/benchmark.dir/keygen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/keygen.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/keygen.c -o CMakeFiles/benchmark.dir/keygen.c.s

CMakeFiles/benchmark.dir/sign.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/sign.c.o: sign.c
CMakeFiles/benchmark.dir/sign.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/benchmark.dir/sign.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/sign.c.o -MF CMakeFiles/benchmark.dir/sign.c.o.d -o CMakeFiles/benchmark.dir/sign.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/sign.c

CMakeFiles/benchmark.dir/sign.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/sign.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/sign.c > CMakeFiles/benchmark.dir/sign.c.i

CMakeFiles/benchmark.dir/sign.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/sign.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/sign.c -o CMakeFiles/benchmark.dir/sign.c.s

CMakeFiles/benchmark.dir/verify.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/verify.c.o: verify.c
CMakeFiles/benchmark.dir/verify.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/benchmark.dir/verify.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/verify.c.o -MF CMakeFiles/benchmark.dir/verify.c.o.d -o CMakeFiles/benchmark.dir/verify.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/verify.c

CMakeFiles/benchmark.dir/verify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/verify.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/verify.c > CMakeFiles/benchmark.dir/verify.c.i

CMakeFiles/benchmark.dir/verify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/verify.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/verify.c -o CMakeFiles/benchmark.dir/verify.c.s

CMakeFiles/benchmark.dir/api.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/api.c.o: api.c
CMakeFiles/benchmark.dir/api.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/benchmark.dir/api.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/api.c.o -MF CMakeFiles/benchmark.dir/api.c.o.d -o CMakeFiles/benchmark.dir/api.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/api.c

CMakeFiles/benchmark.dir/api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/api.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/api.c > CMakeFiles/benchmark.dir/api.c.i

CMakeFiles/benchmark.dir/api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/api.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/api.c -o CMakeFiles/benchmark.dir/api.c.s

CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o: fq_arithmetic/mf3.c
CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o -MF CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o.d -o CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/mf3.c

CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/mf3.c > CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.i

CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/mf3.c -o CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.s

CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o: fq_arithmetic/vf3.c
CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o -MF CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o.d -o CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/vf3.c

CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/vf3.c > CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.i

CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/vf3.c -o CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.s

CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o: fq_arithmetic/vf2.c
CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o -MF CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o.d -o CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/vf2.c

CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/vf2.c > CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.i

CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/fq_arithmetic/vf2.c -o CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.s

CMakeFiles/benchmark.dir/util/bitstream.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/bitstream.c.o: util/bitstream.c
CMakeFiles/benchmark.dir/util/bitstream.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/benchmark.dir/util/bitstream.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/bitstream.c.o -MF CMakeFiles/benchmark.dir/util/bitstream.c.o.d -o CMakeFiles/benchmark.dir/util/bitstream.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/bitstream.c

CMakeFiles/benchmark.dir/util/bitstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/bitstream.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/bitstream.c > CMakeFiles/benchmark.dir/util/bitstream.c.i

CMakeFiles/benchmark.dir/util/bitstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/bitstream.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/bitstream.c -o CMakeFiles/benchmark.dir/util/bitstream.c.s

CMakeFiles/benchmark.dir/util/tritstream.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/tritstream.c.o: util/tritstream.c
CMakeFiles/benchmark.dir/util/tritstream.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/benchmark.dir/util/tritstream.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/tritstream.c.o -MF CMakeFiles/benchmark.dir/util/tritstream.c.o.d -o CMakeFiles/benchmark.dir/util/tritstream.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/tritstream.c

CMakeFiles/benchmark.dir/util/tritstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/tritstream.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/tritstream.c > CMakeFiles/benchmark.dir/util/tritstream.c.i

CMakeFiles/benchmark.dir/util/tritstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/tritstream.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/tritstream.c -o CMakeFiles/benchmark.dir/util/tritstream.c.s

CMakeFiles/benchmark.dir/util/compress.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/compress.c.o: util/compress.c
CMakeFiles/benchmark.dir/util/compress.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/benchmark.dir/util/compress.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/compress.c.o -MF CMakeFiles/benchmark.dir/util/compress.c.o.d -o CMakeFiles/benchmark.dir/util/compress.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/compress.c

CMakeFiles/benchmark.dir/util/compress.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/compress.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/compress.c > CMakeFiles/benchmark.dir/util/compress.c.i

CMakeFiles/benchmark.dir/util/compress.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/compress.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/compress.c -o CMakeFiles/benchmark.dir/util/compress.c.s

CMakeFiles/benchmark.dir/prng/prng.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/prng/prng.c.o: prng/prng.c
CMakeFiles/benchmark.dir/prng/prng.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/benchmark.dir/prng/prng.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/prng/prng.c.o -MF CMakeFiles/benchmark.dir/prng/prng.c.o.d -o CMakeFiles/benchmark.dir/prng/prng.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/prng/prng.c

CMakeFiles/benchmark.dir/prng/prng.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/prng/prng.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/prng/prng.c > CMakeFiles/benchmark.dir/prng/prng.c.i

CMakeFiles/benchmark.dir/prng/prng.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/prng/prng.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/prng/prng.c -o CMakeFiles/benchmark.dir/prng/prng.c.s

CMakeFiles/benchmark.dir/prng/fips202.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/prng/fips202.c.o: prng/fips202.c
CMakeFiles/benchmark.dir/prng/fips202.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/benchmark.dir/prng/fips202.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/prng/fips202.c.o -MF CMakeFiles/benchmark.dir/prng/fips202.c.o.d -o CMakeFiles/benchmark.dir/prng/fips202.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/prng/fips202.c

CMakeFiles/benchmark.dir/prng/fips202.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/prng/fips202.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/prng/fips202.c > CMakeFiles/benchmark.dir/prng/fips202.c.i

CMakeFiles/benchmark.dir/prng/fips202.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/prng/fips202.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/prng/fips202.c -o CMakeFiles/benchmark.dir/prng/fips202.c.s

CMakeFiles/benchmark.dir/util/djbsort_portable.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/djbsort_portable.c.o: util/djbsort_portable.c
CMakeFiles/benchmark.dir/util/djbsort_portable.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/benchmark.dir/util/djbsort_portable.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/djbsort_portable.c.o -MF CMakeFiles/benchmark.dir/util/djbsort_portable.c.o.d -o CMakeFiles/benchmark.dir/util/djbsort_portable.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/djbsort_portable.c

CMakeFiles/benchmark.dir/util/djbsort_portable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/djbsort_portable.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/djbsort_portable.c > CMakeFiles/benchmark.dir/util/djbsort_portable.c.i

CMakeFiles/benchmark.dir/util/djbsort_portable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/djbsort_portable.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/djbsort_portable.c -o CMakeFiles/benchmark.dir/util/djbsort_portable.c.s

CMakeFiles/benchmark.dir/util/gauss.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/gauss.c.o: util/gauss.c
CMakeFiles/benchmark.dir/util/gauss.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/benchmark.dir/util/gauss.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/gauss.c.o -MF CMakeFiles/benchmark.dir/util/gauss.c.o.d -o CMakeFiles/benchmark.dir/util/gauss.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/gauss.c

CMakeFiles/benchmark.dir/util/gauss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/gauss.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/gauss.c > CMakeFiles/benchmark.dir/util/gauss.c.i

CMakeFiles/benchmark.dir/util/gauss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/gauss.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/gauss.c -o CMakeFiles/benchmark.dir/util/gauss.c.s

CMakeFiles/benchmark.dir/util/hash.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/hash.c.o: util/hash.c
CMakeFiles/benchmark.dir/util/hash.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/benchmark.dir/util/hash.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/hash.c.o -MF CMakeFiles/benchmark.dir/util/hash.c.o.d -o CMakeFiles/benchmark.dir/util/hash.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/hash.c

CMakeFiles/benchmark.dir/util/hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/hash.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/hash.c > CMakeFiles/benchmark.dir/util/hash.c.i

CMakeFiles/benchmark.dir/util/hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/hash.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/hash.c -o CMakeFiles/benchmark.dir/util/hash.c.s

CMakeFiles/benchmark.dir/wave/decode.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/wave/decode.c.o: wave/decode.c
CMakeFiles/benchmark.dir/wave/decode.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/benchmark.dir/wave/decode.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/wave/decode.c.o -MF CMakeFiles/benchmark.dir/wave/decode.c.o.d -o CMakeFiles/benchmark.dir/wave/decode.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/decode.c

CMakeFiles/benchmark.dir/wave/decode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/wave/decode.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/decode.c > CMakeFiles/benchmark.dir/wave/decode.c.i

CMakeFiles/benchmark.dir/wave/decode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/wave/decode.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/decode.c -o CMakeFiles/benchmark.dir/wave/decode.c.s

CMakeFiles/benchmark.dir/wave/randperm.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/wave/randperm.c.o: wave/randperm.c
CMakeFiles/benchmark.dir/wave/randperm.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/benchmark.dir/wave/randperm.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/wave/randperm.c.o -MF CMakeFiles/benchmark.dir/wave/randperm.c.o.d -o CMakeFiles/benchmark.dir/wave/randperm.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/randperm.c

CMakeFiles/benchmark.dir/wave/randperm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/wave/randperm.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/randperm.c > CMakeFiles/benchmark.dir/wave/randperm.c.i

CMakeFiles/benchmark.dir/wave/randperm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/wave/randperm.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/randperm.c -o CMakeFiles/benchmark.dir/wave/randperm.c.s

CMakeFiles/benchmark.dir/wave/reject.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/wave/reject.c.o: wave/reject.c
CMakeFiles/benchmark.dir/wave/reject.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/benchmark.dir/wave/reject.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/wave/reject.c.o -MF CMakeFiles/benchmark.dir/wave/reject.c.o.d -o CMakeFiles/benchmark.dir/wave/reject.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/reject.c

CMakeFiles/benchmark.dir/wave/reject.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/wave/reject.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/reject.c > CMakeFiles/benchmark.dir/wave/reject.c.i

CMakeFiles/benchmark.dir/wave/reject.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/wave/reject.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/reject.c -o CMakeFiles/benchmark.dir/wave/reject.c.s

CMakeFiles/benchmark.dir/wave/sample.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/wave/sample.c.o: wave/sample.c
CMakeFiles/benchmark.dir/wave/sample.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/benchmark.dir/wave/sample.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/wave/sample.c.o -MF CMakeFiles/benchmark.dir/wave/sample.c.o.d -o CMakeFiles/benchmark.dir/wave/sample.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/sample.c

CMakeFiles/benchmark.dir/wave/sample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/wave/sample.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/sample.c > CMakeFiles/benchmark.dir/wave/sample.c.i

CMakeFiles/benchmark.dir/wave/sample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/wave/sample.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/wave/sample.c -o CMakeFiles/benchmark.dir/wave/sample.c.s

CMakeFiles/benchmark.dir/util/mf3permut.c.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/util/mf3permut.c.o: util/mf3permut.c
CMakeFiles/benchmark.dir/util/mf3permut.c.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building C object CMakeFiles/benchmark.dir/util/mf3permut.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/benchmark.dir/util/mf3permut.c.o -MF CMakeFiles/benchmark.dir/util/mf3permut.c.o.d -o CMakeFiles/benchmark.dir/util/mf3permut.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/mf3permut.c

CMakeFiles/benchmark.dir/util/mf3permut.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/util/mf3permut.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/mf3permut.c > CMakeFiles/benchmark.dir/util/mf3permut.c.i

CMakeFiles/benchmark.dir/util/mf3permut.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/util/mf3permut.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/util/mf3permut.c -o CMakeFiles/benchmark.dir/util/mf3permut.c.s

# Object files for target benchmark
benchmark_OBJECTS = \
"CMakeFiles/benchmark.dir/benchmark.c.o" \
"CMakeFiles/benchmark.dir/keygen.c.o" \
"CMakeFiles/benchmark.dir/sign.c.o" \
"CMakeFiles/benchmark.dir/verify.c.o" \
"CMakeFiles/benchmark.dir/api.c.o" \
"CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o" \
"CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o" \
"CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o" \
"CMakeFiles/benchmark.dir/util/bitstream.c.o" \
"CMakeFiles/benchmark.dir/util/tritstream.c.o" \
"CMakeFiles/benchmark.dir/util/compress.c.o" \
"CMakeFiles/benchmark.dir/prng/prng.c.o" \
"CMakeFiles/benchmark.dir/prng/fips202.c.o" \
"CMakeFiles/benchmark.dir/util/djbsort_portable.c.o" \
"CMakeFiles/benchmark.dir/util/gauss.c.o" \
"CMakeFiles/benchmark.dir/util/hash.c.o" \
"CMakeFiles/benchmark.dir/wave/decode.c.o" \
"CMakeFiles/benchmark.dir/wave/randperm.c.o" \
"CMakeFiles/benchmark.dir/wave/reject.c.o" \
"CMakeFiles/benchmark.dir/wave/sample.c.o" \
"CMakeFiles/benchmark.dir/util/mf3permut.c.o"

# External object files for target benchmark
benchmark_EXTERNAL_OBJECTS =

benchmark: CMakeFiles/benchmark.dir/benchmark.c.o
benchmark: CMakeFiles/benchmark.dir/keygen.c.o
benchmark: CMakeFiles/benchmark.dir/sign.c.o
benchmark: CMakeFiles/benchmark.dir/verify.c.o
benchmark: CMakeFiles/benchmark.dir/api.c.o
benchmark: CMakeFiles/benchmark.dir/fq_arithmetic/mf3.c.o
benchmark: CMakeFiles/benchmark.dir/fq_arithmetic/vf3.c.o
benchmark: CMakeFiles/benchmark.dir/fq_arithmetic/vf2.c.o
benchmark: CMakeFiles/benchmark.dir/util/bitstream.c.o
benchmark: CMakeFiles/benchmark.dir/util/tritstream.c.o
benchmark: CMakeFiles/benchmark.dir/util/compress.c.o
benchmark: CMakeFiles/benchmark.dir/prng/prng.c.o
benchmark: CMakeFiles/benchmark.dir/prng/fips202.c.o
benchmark: CMakeFiles/benchmark.dir/util/djbsort_portable.c.o
benchmark: CMakeFiles/benchmark.dir/util/gauss.c.o
benchmark: CMakeFiles/benchmark.dir/util/hash.c.o
benchmark: CMakeFiles/benchmark.dir/wave/decode.c.o
benchmark: CMakeFiles/benchmark.dir/wave/randperm.c.o
benchmark: CMakeFiles/benchmark.dir/wave/reject.c.o
benchmark: CMakeFiles/benchmark.dir/wave/sample.c.o
benchmark: CMakeFiles/benchmark.dir/util/mf3permut.c.o
benchmark: CMakeFiles/benchmark.dir/build.make
benchmark: /usr/lib/libcrypto.so
benchmark: CMakeFiles/benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Linking C executable benchmark"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/benchmark.dir/build: benchmark
.PHONY : CMakeFiles/benchmark.dir/build

CMakeFiles/benchmark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/benchmark.dir/cmake_clean.cmake
.PHONY : CMakeFiles/benchmark.dir/clean

CMakeFiles/benchmark.dir/depend: util/compress.c
	cd /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave1249/CMakeFiles/benchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/benchmark.dir/depend
