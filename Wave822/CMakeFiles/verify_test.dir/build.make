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
CMAKE_SOURCE_DIR = /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822

# Include any dependencies generated for this target.
include CMakeFiles/verify_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/verify_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/verify_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/verify_test.dir/flags.make

util/compress.c: gen_trit_comp.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating util/compress.c"
	./gen_trit_comp.py > util/compress.c

CMakeFiles/verify_test.dir/verify_test.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/verify_test.c.o: verify_test.c
CMakeFiles/verify_test.dir/verify_test.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/verify_test.dir/verify_test.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/verify_test.c.o -MF CMakeFiles/verify_test.dir/verify_test.c.o.d -o CMakeFiles/verify_test.dir/verify_test.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/verify_test.c

CMakeFiles/verify_test.dir/verify_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/verify_test.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/verify_test.c > CMakeFiles/verify_test.dir/verify_test.c.i

CMakeFiles/verify_test.dir/verify_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/verify_test.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/verify_test.c -o CMakeFiles/verify_test.dir/verify_test.c.s

CMakeFiles/verify_test.dir/keygen.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/keygen.c.o: keygen.c
CMakeFiles/verify_test.dir/keygen.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/verify_test.dir/keygen.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/keygen.c.o -MF CMakeFiles/verify_test.dir/keygen.c.o.d -o CMakeFiles/verify_test.dir/keygen.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/keygen.c

CMakeFiles/verify_test.dir/keygen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/keygen.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/keygen.c > CMakeFiles/verify_test.dir/keygen.c.i

CMakeFiles/verify_test.dir/keygen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/keygen.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/keygen.c -o CMakeFiles/verify_test.dir/keygen.c.s

CMakeFiles/verify_test.dir/sign.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/sign.c.o: sign.c
CMakeFiles/verify_test.dir/sign.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/verify_test.dir/sign.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/sign.c.o -MF CMakeFiles/verify_test.dir/sign.c.o.d -o CMakeFiles/verify_test.dir/sign.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/sign.c

CMakeFiles/verify_test.dir/sign.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/sign.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/sign.c > CMakeFiles/verify_test.dir/sign.c.i

CMakeFiles/verify_test.dir/sign.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/sign.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/sign.c -o CMakeFiles/verify_test.dir/sign.c.s

CMakeFiles/verify_test.dir/verify.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/verify.c.o: verify.c
CMakeFiles/verify_test.dir/verify.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/verify_test.dir/verify.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/verify.c.o -MF CMakeFiles/verify_test.dir/verify.c.o.d -o CMakeFiles/verify_test.dir/verify.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/verify.c

CMakeFiles/verify_test.dir/verify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/verify.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/verify.c > CMakeFiles/verify_test.dir/verify.c.i

CMakeFiles/verify_test.dir/verify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/verify.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/verify.c -o CMakeFiles/verify_test.dir/verify.c.s

CMakeFiles/verify_test.dir/api.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/api.c.o: api.c
CMakeFiles/verify_test.dir/api.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/verify_test.dir/api.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/api.c.o -MF CMakeFiles/verify_test.dir/api.c.o.d -o CMakeFiles/verify_test.dir/api.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/api.c

CMakeFiles/verify_test.dir/api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/api.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/api.c > CMakeFiles/verify_test.dir/api.c.i

CMakeFiles/verify_test.dir/api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/api.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/api.c -o CMakeFiles/verify_test.dir/api.c.s

CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o: fq_arithmetic/mf3.c
CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o -MF CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o.d -o CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/mf3.c

CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/mf3.c > CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.i

CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/mf3.c -o CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.s

CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o: fq_arithmetic/vf3.c
CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o -MF CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o.d -o CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/vf3.c

CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/vf3.c > CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.i

CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/vf3.c -o CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.s

CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o: fq_arithmetic/vf2.c
CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o -MF CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o.d -o CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/vf2.c

CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/vf2.c > CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.i

CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/fq_arithmetic/vf2.c -o CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.s

CMakeFiles/verify_test.dir/util/bitstream.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/bitstream.c.o: util/bitstream.c
CMakeFiles/verify_test.dir/util/bitstream.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/verify_test.dir/util/bitstream.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/bitstream.c.o -MF CMakeFiles/verify_test.dir/util/bitstream.c.o.d -o CMakeFiles/verify_test.dir/util/bitstream.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/bitstream.c

CMakeFiles/verify_test.dir/util/bitstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/bitstream.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/bitstream.c > CMakeFiles/verify_test.dir/util/bitstream.c.i

CMakeFiles/verify_test.dir/util/bitstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/bitstream.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/bitstream.c -o CMakeFiles/verify_test.dir/util/bitstream.c.s

CMakeFiles/verify_test.dir/util/tritstream.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/tritstream.c.o: util/tritstream.c
CMakeFiles/verify_test.dir/util/tritstream.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/verify_test.dir/util/tritstream.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/tritstream.c.o -MF CMakeFiles/verify_test.dir/util/tritstream.c.o.d -o CMakeFiles/verify_test.dir/util/tritstream.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/tritstream.c

CMakeFiles/verify_test.dir/util/tritstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/tritstream.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/tritstream.c > CMakeFiles/verify_test.dir/util/tritstream.c.i

CMakeFiles/verify_test.dir/util/tritstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/tritstream.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/tritstream.c -o CMakeFiles/verify_test.dir/util/tritstream.c.s

CMakeFiles/verify_test.dir/util/compress.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/compress.c.o: util/compress.c
CMakeFiles/verify_test.dir/util/compress.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/verify_test.dir/util/compress.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/compress.c.o -MF CMakeFiles/verify_test.dir/util/compress.c.o.d -o CMakeFiles/verify_test.dir/util/compress.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/compress.c

CMakeFiles/verify_test.dir/util/compress.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/compress.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/compress.c > CMakeFiles/verify_test.dir/util/compress.c.i

CMakeFiles/verify_test.dir/util/compress.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/compress.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/compress.c -o CMakeFiles/verify_test.dir/util/compress.c.s

CMakeFiles/verify_test.dir/prng/prng.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/prng/prng.c.o: prng/prng.c
CMakeFiles/verify_test.dir/prng/prng.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/verify_test.dir/prng/prng.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/prng/prng.c.o -MF CMakeFiles/verify_test.dir/prng/prng.c.o.d -o CMakeFiles/verify_test.dir/prng/prng.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/prng/prng.c

CMakeFiles/verify_test.dir/prng/prng.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/prng/prng.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/prng/prng.c > CMakeFiles/verify_test.dir/prng/prng.c.i

CMakeFiles/verify_test.dir/prng/prng.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/prng/prng.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/prng/prng.c -o CMakeFiles/verify_test.dir/prng/prng.c.s

CMakeFiles/verify_test.dir/prng/fips202.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/prng/fips202.c.o: prng/fips202.c
CMakeFiles/verify_test.dir/prng/fips202.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/verify_test.dir/prng/fips202.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/prng/fips202.c.o -MF CMakeFiles/verify_test.dir/prng/fips202.c.o.d -o CMakeFiles/verify_test.dir/prng/fips202.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/prng/fips202.c

CMakeFiles/verify_test.dir/prng/fips202.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/prng/fips202.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/prng/fips202.c > CMakeFiles/verify_test.dir/prng/fips202.c.i

CMakeFiles/verify_test.dir/prng/fips202.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/prng/fips202.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/prng/fips202.c -o CMakeFiles/verify_test.dir/prng/fips202.c.s

CMakeFiles/verify_test.dir/util/djbsort_portable.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/djbsort_portable.c.o: util/djbsort_portable.c
CMakeFiles/verify_test.dir/util/djbsort_portable.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/verify_test.dir/util/djbsort_portable.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/djbsort_portable.c.o -MF CMakeFiles/verify_test.dir/util/djbsort_portable.c.o.d -o CMakeFiles/verify_test.dir/util/djbsort_portable.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/djbsort_portable.c

CMakeFiles/verify_test.dir/util/djbsort_portable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/djbsort_portable.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/djbsort_portable.c > CMakeFiles/verify_test.dir/util/djbsort_portable.c.i

CMakeFiles/verify_test.dir/util/djbsort_portable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/djbsort_portable.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/djbsort_portable.c -o CMakeFiles/verify_test.dir/util/djbsort_portable.c.s

CMakeFiles/verify_test.dir/util/gauss.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/gauss.c.o: util/gauss.c
CMakeFiles/verify_test.dir/util/gauss.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/verify_test.dir/util/gauss.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/gauss.c.o -MF CMakeFiles/verify_test.dir/util/gauss.c.o.d -o CMakeFiles/verify_test.dir/util/gauss.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/gauss.c

CMakeFiles/verify_test.dir/util/gauss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/gauss.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/gauss.c > CMakeFiles/verify_test.dir/util/gauss.c.i

CMakeFiles/verify_test.dir/util/gauss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/gauss.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/gauss.c -o CMakeFiles/verify_test.dir/util/gauss.c.s

CMakeFiles/verify_test.dir/util/hash.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/hash.c.o: util/hash.c
CMakeFiles/verify_test.dir/util/hash.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/verify_test.dir/util/hash.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/hash.c.o -MF CMakeFiles/verify_test.dir/util/hash.c.o.d -o CMakeFiles/verify_test.dir/util/hash.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/hash.c

CMakeFiles/verify_test.dir/util/hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/hash.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/hash.c > CMakeFiles/verify_test.dir/util/hash.c.i

CMakeFiles/verify_test.dir/util/hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/hash.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/hash.c -o CMakeFiles/verify_test.dir/util/hash.c.s

CMakeFiles/verify_test.dir/wave/decode.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/wave/decode.c.o: wave/decode.c
CMakeFiles/verify_test.dir/wave/decode.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/verify_test.dir/wave/decode.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/wave/decode.c.o -MF CMakeFiles/verify_test.dir/wave/decode.c.o.d -o CMakeFiles/verify_test.dir/wave/decode.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/decode.c

CMakeFiles/verify_test.dir/wave/decode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/wave/decode.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/decode.c > CMakeFiles/verify_test.dir/wave/decode.c.i

CMakeFiles/verify_test.dir/wave/decode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/wave/decode.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/decode.c -o CMakeFiles/verify_test.dir/wave/decode.c.s

CMakeFiles/verify_test.dir/wave/randperm.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/wave/randperm.c.o: wave/randperm.c
CMakeFiles/verify_test.dir/wave/randperm.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/verify_test.dir/wave/randperm.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/wave/randperm.c.o -MF CMakeFiles/verify_test.dir/wave/randperm.c.o.d -o CMakeFiles/verify_test.dir/wave/randperm.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/randperm.c

CMakeFiles/verify_test.dir/wave/randperm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/wave/randperm.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/randperm.c > CMakeFiles/verify_test.dir/wave/randperm.c.i

CMakeFiles/verify_test.dir/wave/randperm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/wave/randperm.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/randperm.c -o CMakeFiles/verify_test.dir/wave/randperm.c.s

CMakeFiles/verify_test.dir/wave/reject.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/wave/reject.c.o: wave/reject.c
CMakeFiles/verify_test.dir/wave/reject.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/verify_test.dir/wave/reject.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/wave/reject.c.o -MF CMakeFiles/verify_test.dir/wave/reject.c.o.d -o CMakeFiles/verify_test.dir/wave/reject.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/reject.c

CMakeFiles/verify_test.dir/wave/reject.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/wave/reject.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/reject.c > CMakeFiles/verify_test.dir/wave/reject.c.i

CMakeFiles/verify_test.dir/wave/reject.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/wave/reject.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/reject.c -o CMakeFiles/verify_test.dir/wave/reject.c.s

CMakeFiles/verify_test.dir/wave/sample.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/wave/sample.c.o: wave/sample.c
CMakeFiles/verify_test.dir/wave/sample.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/verify_test.dir/wave/sample.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/wave/sample.c.o -MF CMakeFiles/verify_test.dir/wave/sample.c.o.d -o CMakeFiles/verify_test.dir/wave/sample.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/sample.c

CMakeFiles/verify_test.dir/wave/sample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/wave/sample.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/sample.c > CMakeFiles/verify_test.dir/wave/sample.c.i

CMakeFiles/verify_test.dir/wave/sample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/wave/sample.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/wave/sample.c -o CMakeFiles/verify_test.dir/wave/sample.c.s

CMakeFiles/verify_test.dir/util/mf3permut.c.o: CMakeFiles/verify_test.dir/flags.make
CMakeFiles/verify_test.dir/util/mf3permut.c.o: util/mf3permut.c
CMakeFiles/verify_test.dir/util/mf3permut.c.o: CMakeFiles/verify_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building C object CMakeFiles/verify_test.dir/util/mf3permut.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/verify_test.dir/util/mf3permut.c.o -MF CMakeFiles/verify_test.dir/util/mf3permut.c.o.d -o CMakeFiles/verify_test.dir/util/mf3permut.c.o -c /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/mf3permut.c

CMakeFiles/verify_test.dir/util/mf3permut.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/verify_test.dir/util/mf3permut.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/mf3permut.c > CMakeFiles/verify_test.dir/util/mf3permut.c.i

CMakeFiles/verify_test.dir/util/mf3permut.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/verify_test.dir/util/mf3permut.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/util/mf3permut.c -o CMakeFiles/verify_test.dir/util/mf3permut.c.s

# Object files for target verify_test
verify_test_OBJECTS = \
"CMakeFiles/verify_test.dir/verify_test.c.o" \
"CMakeFiles/verify_test.dir/keygen.c.o" \
"CMakeFiles/verify_test.dir/sign.c.o" \
"CMakeFiles/verify_test.dir/verify.c.o" \
"CMakeFiles/verify_test.dir/api.c.o" \
"CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o" \
"CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o" \
"CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o" \
"CMakeFiles/verify_test.dir/util/bitstream.c.o" \
"CMakeFiles/verify_test.dir/util/tritstream.c.o" \
"CMakeFiles/verify_test.dir/util/compress.c.o" \
"CMakeFiles/verify_test.dir/prng/prng.c.o" \
"CMakeFiles/verify_test.dir/prng/fips202.c.o" \
"CMakeFiles/verify_test.dir/util/djbsort_portable.c.o" \
"CMakeFiles/verify_test.dir/util/gauss.c.o" \
"CMakeFiles/verify_test.dir/util/hash.c.o" \
"CMakeFiles/verify_test.dir/wave/decode.c.o" \
"CMakeFiles/verify_test.dir/wave/randperm.c.o" \
"CMakeFiles/verify_test.dir/wave/reject.c.o" \
"CMakeFiles/verify_test.dir/wave/sample.c.o" \
"CMakeFiles/verify_test.dir/util/mf3permut.c.o"

# External object files for target verify_test
verify_test_EXTERNAL_OBJECTS =

verify_test: CMakeFiles/verify_test.dir/verify_test.c.o
verify_test: CMakeFiles/verify_test.dir/keygen.c.o
verify_test: CMakeFiles/verify_test.dir/sign.c.o
verify_test: CMakeFiles/verify_test.dir/verify.c.o
verify_test: CMakeFiles/verify_test.dir/api.c.o
verify_test: CMakeFiles/verify_test.dir/fq_arithmetic/mf3.c.o
verify_test: CMakeFiles/verify_test.dir/fq_arithmetic/vf3.c.o
verify_test: CMakeFiles/verify_test.dir/fq_arithmetic/vf2.c.o
verify_test: CMakeFiles/verify_test.dir/util/bitstream.c.o
verify_test: CMakeFiles/verify_test.dir/util/tritstream.c.o
verify_test: CMakeFiles/verify_test.dir/util/compress.c.o
verify_test: CMakeFiles/verify_test.dir/prng/prng.c.o
verify_test: CMakeFiles/verify_test.dir/prng/fips202.c.o
verify_test: CMakeFiles/verify_test.dir/util/djbsort_portable.c.o
verify_test: CMakeFiles/verify_test.dir/util/gauss.c.o
verify_test: CMakeFiles/verify_test.dir/util/hash.c.o
verify_test: CMakeFiles/verify_test.dir/wave/decode.c.o
verify_test: CMakeFiles/verify_test.dir/wave/randperm.c.o
verify_test: CMakeFiles/verify_test.dir/wave/reject.c.o
verify_test: CMakeFiles/verify_test.dir/wave/sample.c.o
verify_test: CMakeFiles/verify_test.dir/util/mf3permut.c.o
verify_test: CMakeFiles/verify_test.dir/build.make
verify_test: /usr/lib/libcrypto.so
verify_test: CMakeFiles/verify_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Linking C executable verify_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/verify_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/verify_test.dir/build: verify_test
.PHONY : CMakeFiles/verify_test.dir/build

CMakeFiles/verify_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/verify_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/verify_test.dir/clean

CMakeFiles/verify_test.dir/depend: util/compress.c
	cd /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822 /home/obiwan/papers/waveimplemsoftware/Software/wave/wave2.0/Wave822/CMakeFiles/verify_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/verify_test.dir/depend
