﻿# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Angelo\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Angelo\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\OpenGLTutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\OpenGLTutorial\cmake-build-debug-visual-studio

# Utility rule file for uninstall.

# Include any custom commands dependencies for this target.
include glfw\CMakeFiles\uninstall.dir\compiler_depend.make

# Include the progress variables for this target.
include glfw\CMakeFiles\uninstall.dir\progress.make

glfw\CMakeFiles\uninstall:
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glfw
	C:\Users\Angelo\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe -P D:/OpenGLTutorial/cmake-build-debug-visual-studio/glfw/cmake_uninstall.cmake
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

uninstall: glfw\CMakeFiles\uninstall
uninstall: glfw\CMakeFiles\uninstall.dir\build.make
.PHONY : uninstall

# Rule to build all files generated by this target.
glfw\CMakeFiles\uninstall.dir\build: uninstall
.PHONY : glfw\CMakeFiles\uninstall.dir\build

glfw\CMakeFiles\uninstall.dir\clean:
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glfw
	$(CMAKE_COMMAND) -P CMakeFiles\uninstall.dir\cmake_clean.cmake
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio
.PHONY : glfw\CMakeFiles\uninstall.dir\clean

glfw\CMakeFiles\uninstall.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\OpenGLTutorial D:\OpenGLTutorial\glfw D:\OpenGLTutorial\cmake-build-debug-visual-studio D:\OpenGLTutorial\cmake-build-debug-visual-studio\glfw D:\OpenGLTutorial\cmake-build-debug-visual-studio\glfw\CMakeFiles\uninstall.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : glfw\CMakeFiles\uninstall.dir\depend
