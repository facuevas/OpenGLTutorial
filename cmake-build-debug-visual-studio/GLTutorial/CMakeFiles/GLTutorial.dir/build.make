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
include GLTutorial\CMakeFiles\GLTutorial.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include GLTutorial\CMakeFiles\GLTutorial.dir\compiler_depend.make

# Include the progress variables for this target.
include GLTutorial\CMakeFiles\GLTutorial.dir\progress.make

# Include the compile flags for this target's objects.
include GLTutorial\CMakeFiles\GLTutorial.dir\flags.make

GLTutorial\CMakeFiles\GLTutorial.dir\Main.cpp.obj: GLTutorial\CMakeFiles\GLTutorial.dir\flags.make
GLTutorial\CMakeFiles\GLTutorial.dir\Main.cpp.obj: ..\GLTutorial\Main.cpp
GLTutorial\CMakeFiles\GLTutorial.dir\Main.cpp.obj: GLTutorial\CMakeFiles\GLTutorial.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OpenGLTutorial\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object GLTutorial/CMakeFiles/GLTutorial.dir/Main.cpp.obj"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\GLTutorial.dir\Main.cpp.obj.d --working-dir=D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial --filter-prefix="Note: including file: " -- C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\GLTutorial.dir\Main.cpp.obj /FdCMakeFiles\GLTutorial.dir\ /FS -c D:\OpenGLTutorial\GLTutorial\Main.cpp
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

GLTutorial\CMakeFiles\GLTutorial.dir\Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GLTutorial.dir/Main.cpp.i"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial
	C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\cl.exe > CMakeFiles\GLTutorial.dir\Main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\OpenGLTutorial\GLTutorial\Main.cpp
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

GLTutorial\CMakeFiles\GLTutorial.dir\Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GLTutorial.dir/Main.cpp.s"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial
	C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\GLTutorial.dir\Main.cpp.s /c D:\OpenGLTutorial\GLTutorial\Main.cpp
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

# Object files for target GLTutorial
GLTutorial_OBJECTS = \
"CMakeFiles\GLTutorial.dir\Main.cpp.obj"

# External object files for target GLTutorial
GLTutorial_EXTERNAL_OBJECTS =

GLTutorial\GLTutorial.exe: GLTutorial\CMakeFiles\GLTutorial.dir\Main.cpp.obj
GLTutorial\GLTutorial.exe: GLTutorial\CMakeFiles\GLTutorial.dir\build.make
GLTutorial\GLTutorial.exe: glfw\src\glfw3.lib
GLTutorial\GLTutorial.exe: glad\glad.lib
GLTutorial\GLTutorial.exe: GLTutorial\Shader\Shader.lib
GLTutorial\GLTutorial.exe: stb\stb.lib
GLTutorial\GLTutorial.exe: GLTutorial\CMakeFiles\GLTutorial.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\OpenGLTutorial\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GLTutorial.exe"
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial
	C:\Users\Angelo\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\GLTutorial.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100220~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100220~1.0\x86\mt.exe --manifests -- C:\PROGRA~1\MICROS~4\2022\COMMUN~1\VC\Tools\MSVC\1431~1.311\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\GLTutorial.dir\objects1.rsp @<<
 /out:GLTutorial.exe /implib:GLTutorial.lib /pdb:D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial\GLTutorial.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  ..\glfw\src\glfw3.lib ..\glad\glad.lib Shader\Shader.lib ..\stb\stb.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio

# Rule to build all files generated by this target.
GLTutorial\CMakeFiles\GLTutorial.dir\build: GLTutorial\GLTutorial.exe
.PHONY : GLTutorial\CMakeFiles\GLTutorial.dir\build

GLTutorial\CMakeFiles\GLTutorial.dir\clean:
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial
	$(CMAKE_COMMAND) -P CMakeFiles\GLTutorial.dir\cmake_clean.cmake
	cd D:\OpenGLTutorial\cmake-build-debug-visual-studio
.PHONY : GLTutorial\CMakeFiles\GLTutorial.dir\clean

GLTutorial\CMakeFiles\GLTutorial.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\OpenGLTutorial D:\OpenGLTutorial\GLTutorial D:\OpenGLTutorial\cmake-build-debug-visual-studio D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial D:\OpenGLTutorial\cmake-build-debug-visual-studio\GLTutorial\CMakeFiles\GLTutorial.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : GLTutorial\CMakeFiles\GLTutorial.dir\depend
