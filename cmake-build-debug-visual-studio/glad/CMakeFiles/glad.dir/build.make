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

# Include any dependencies generated for this target.
include glad\CMakeFiles\glad.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include glad\CMakeFiles\glad.dir\compiler_depend.make

# Include the progress variables for this target.
include glad\CMakeFiles\glad.dir\progress.make

# Include the compile flags for this target's objects.
include glad\CMakeFiles\glad.dir\flags.make

glad\CMakeFiles\glad.dir\src\glad.c.obj: glad\CMakeFiles\glad.dir\flags.make
glad\CMakeFiles\glad.dir\src\glad.c.obj: ..\glad\src\glad.c
glad\CMakeFiles\glad.dir\src\glad.c.obj: glad\CMakeFiles\glad.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OpenGLTutorial\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glad/CMakeFiles/glad.dir/src/glad.c.obj"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glad.dir\src\glad.c.obj.d --working-dir=D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad --filter-prefix="Note: including file: " -- C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glad.dir\src\glad.c.obj /FdCMakeFiles\glad.dir\glad.pdb /FS -c D:\OpenGLTutorial\glad\src\glad.c
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

glad\CMakeFiles\glad.dir\src\glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glad.dir/src/glad.c.i"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad
	C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\cl.exe > CMakeFiles\glad.dir\src\glad.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\OpenGLTutorial\glad\src\glad.c
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

glad\CMakeFiles\glad.dir\src\glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glad.dir/src/glad.c.s"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad
	C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glad.dir\src\glad.c.s /c D:\OpenGLTutorial\glad\src\glad.c
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

# Object files for target glad
glad_OBJECTS = \
"CMakeFiles\glad.dir\src\glad.c.obj"

# External object files for target glad
glad_EXTERNAL_OBJECTS =

glad\glad.lib: glad\CMakeFiles\glad.dir\src\glad.c.obj
glad\glad.lib: glad\CMakeFiles\glad.dir\build.make
glad\glad.lib: glad\CMakeFiles\glad.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\OpenGLTutorial\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library glad.lib"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad
	$(CMAKE_COMMAND) -P CMakeFiles\glad.dir\cmake_clean_target.cmake
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad
	C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:glad.lib @CMakeFiles\glad.dir\objects1.rsp 
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

# Rule to build all files generated by this target.
glad\CMakeFiles\glad.dir\build: glad\glad.lib
.PHONY : glad\CMakeFiles\glad.dir\build

glad\CMakeFiles\glad.dir\clean:
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad
	$(CMAKE_COMMAND) -P CMakeFiles\glad.dir\cmake_clean.cmake
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio
.PHONY : glad\CMakeFiles\glad.dir\clean

glad\CMakeFiles\glad.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\OpenGLTutorial D:\OpenGLTutorial\glad D:\OpenGLTutorial\cmake-build-debug-visual-studio D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad D:\OpenGLTutorial\cmake-build-debug-visual-studio\glad\CMakeFiles\glad.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : glad\CMakeFiles\glad.dir\depend
