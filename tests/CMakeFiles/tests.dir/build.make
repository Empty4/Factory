# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/kali/projects/Factory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kali/projects/Factory/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/tests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/tests.dir/flags.make

tests/CMakeFiles/tests.dir/codegen:
.PHONY : tests/CMakeFiles/tests.dir/codegen

tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o: tests/CMakeFiles/tests.dir/flags.make
tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o: /home/kali/projects/Factory/tests/test_GameAgent.cpp
tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o: tests/CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o -MF CMakeFiles/tests.dir/test_GameAgent.cpp.o.d -o CMakeFiles/tests.dir/test_GameAgent.cpp.o -c /home/kali/projects/Factory/tests/test_GameAgent.cpp

tests/CMakeFiles/tests.dir/test_GameAgent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tests.dir/test_GameAgent.cpp.i"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/projects/Factory/tests/test_GameAgent.cpp > CMakeFiles/tests.dir/test_GameAgent.cpp.i

tests/CMakeFiles/tests.dir/test_GameAgent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tests.dir/test_GameAgent.cpp.s"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/projects/Factory/tests/test_GameAgent.cpp -o CMakeFiles/tests.dir/test_GameAgent.cpp.s

tests/CMakeFiles/tests.dir/test_Tank.cpp.o: tests/CMakeFiles/tests.dir/flags.make
tests/CMakeFiles/tests.dir/test_Tank.cpp.o: /home/kali/projects/Factory/tests/test_Tank.cpp
tests/CMakeFiles/tests.dir/test_Tank.cpp.o: tests/CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/tests.dir/test_Tank.cpp.o"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/tests.dir/test_Tank.cpp.o -MF CMakeFiles/tests.dir/test_Tank.cpp.o.d -o CMakeFiles/tests.dir/test_Tank.cpp.o -c /home/kali/projects/Factory/tests/test_Tank.cpp

tests/CMakeFiles/tests.dir/test_Tank.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tests.dir/test_Tank.cpp.i"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/projects/Factory/tests/test_Tank.cpp > CMakeFiles/tests.dir/test_Tank.cpp.i

tests/CMakeFiles/tests.dir/test_Tank.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tests.dir/test_Tank.cpp.s"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/projects/Factory/tests/test_Tank.cpp -o CMakeFiles/tests.dir/test_Tank.cpp.s

tests/CMakeFiles/tests.dir/test_Factory.cpp.o: tests/CMakeFiles/tests.dir/flags.make
tests/CMakeFiles/tests.dir/test_Factory.cpp.o: /home/kali/projects/Factory/tests/test_Factory.cpp
tests/CMakeFiles/tests.dir/test_Factory.cpp.o: tests/CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/tests.dir/test_Factory.cpp.o"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/tests.dir/test_Factory.cpp.o -MF CMakeFiles/tests.dir/test_Factory.cpp.o.d -o CMakeFiles/tests.dir/test_Factory.cpp.o -c /home/kali/projects/Factory/tests/test_Factory.cpp

tests/CMakeFiles/tests.dir/test_Factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tests.dir/test_Factory.cpp.i"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/projects/Factory/tests/test_Factory.cpp > CMakeFiles/tests.dir/test_Factory.cpp.i

tests/CMakeFiles/tests.dir/test_Factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tests.dir/test_Factory.cpp.s"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/projects/Factory/tests/test_Factory.cpp -o CMakeFiles/tests.dir/test_Factory.cpp.s

tests/CMakeFiles/tests.dir/test_Game.cpp.o: tests/CMakeFiles/tests.dir/flags.make
tests/CMakeFiles/tests.dir/test_Game.cpp.o: /home/kali/projects/Factory/tests/test_Game.cpp
tests/CMakeFiles/tests.dir/test_Game.cpp.o: tests/CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tests/CMakeFiles/tests.dir/test_Game.cpp.o"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/tests.dir/test_Game.cpp.o -MF CMakeFiles/tests.dir/test_Game.cpp.o.d -o CMakeFiles/tests.dir/test_Game.cpp.o -c /home/kali/projects/Factory/tests/test_Game.cpp

tests/CMakeFiles/tests.dir/test_Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tests.dir/test_Game.cpp.i"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/projects/Factory/tests/test_Game.cpp > CMakeFiles/tests.dir/test_Game.cpp.i

tests/CMakeFiles/tests.dir/test_Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tests.dir/test_Game.cpp.s"
	cd /home/kali/projects/Factory/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/projects/Factory/tests/test_Game.cpp -o CMakeFiles/tests.dir/test_Game.cpp.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/test_GameAgent.cpp.o" \
"CMakeFiles/tests.dir/test_Tank.cpp.o" \
"CMakeFiles/tests.dir/test_Factory.cpp.o" \
"CMakeFiles/tests.dir/test_Game.cpp.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

tests/tests: tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o
tests/tests: tests/CMakeFiles/tests.dir/test_Tank.cpp.o
tests/tests: tests/CMakeFiles/tests.dir/test_Factory.cpp.o
tests/tests: tests/CMakeFiles/tests.dir/test_Game.cpp.o
tests/tests: tests/CMakeFiles/tests.dir/build.make
tests/tests: tests/CMakeFiles/tests.dir/compiler_depend.ts
tests/tests: src/game/libgame.a
tests/tests: tests/CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable tests"
	cd /home/kali/projects/Factory/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/tests.dir/build: tests/tests
.PHONY : tests/CMakeFiles/tests.dir/build

tests/CMakeFiles/tests.dir/clean:
	cd /home/kali/projects/Factory/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/tests.dir/clean

tests/CMakeFiles/tests.dir/depend:
	cd /home/kali/projects/Factory/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kali/projects/Factory /home/kali/projects/Factory/tests /home/kali/projects/Factory/build /home/kali/projects/Factory/build/tests /home/kali/projects/Factory/build/tests/CMakeFiles/tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/tests.dir/depend

