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
include CMakeFiles/factory_game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/factory_game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/factory_game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/factory_game.dir/flags.make

CMakeFiles/factory_game.dir/codegen:
.PHONY : CMakeFiles/factory_game.dir/codegen

CMakeFiles/factory_game.dir/src/main.cpp.o: CMakeFiles/factory_game.dir/flags.make
CMakeFiles/factory_game.dir/src/main.cpp.o: /home/kali/projects/Factory/src/main.cpp
CMakeFiles/factory_game.dir/src/main.cpp.o: CMakeFiles/factory_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/factory_game.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/factory_game.dir/src/main.cpp.o -MF CMakeFiles/factory_game.dir/src/main.cpp.o.d -o CMakeFiles/factory_game.dir/src/main.cpp.o -c /home/kali/projects/Factory/src/main.cpp

CMakeFiles/factory_game.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/factory_game.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/projects/Factory/src/main.cpp > CMakeFiles/factory_game.dir/src/main.cpp.i

CMakeFiles/factory_game.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/factory_game.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/projects/Factory/src/main.cpp -o CMakeFiles/factory_game.dir/src/main.cpp.s

# Object files for target factory_game
factory_game_OBJECTS = \
"CMakeFiles/factory_game.dir/src/main.cpp.o"

# External object files for target factory_game
factory_game_EXTERNAL_OBJECTS =

factory_game: CMakeFiles/factory_game.dir/src/main.cpp.o
factory_game: CMakeFiles/factory_game.dir/build.make
factory_game: CMakeFiles/factory_game.dir/compiler_depend.ts
factory_game: src/game/libgame.a
factory_game: CMakeFiles/factory_game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kali/projects/Factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable factory_game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/factory_game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/factory_game.dir/build: factory_game
.PHONY : CMakeFiles/factory_game.dir/build

CMakeFiles/factory_game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/factory_game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/factory_game.dir/clean

CMakeFiles/factory_game.dir/depend:
	cd /home/kali/projects/Factory/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kali/projects/Factory /home/kali/projects/Factory /home/kali/projects/Factory/build /home/kali/projects/Factory/build /home/kali/projects/Factory/build/CMakeFiles/factory_game.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/factory_game.dir/depend

