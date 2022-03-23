# CMakeList.txt for GLTutorial directory.

cmake_minimum_required(VERSION 3.21)

# Add source to this project's exectuable.
add_executable(GLTutorial "Main.cpp")

target_link_libraries(GLTutorial glfw glad Shader stb)

# If we are using windows, Filesystem requires stdc++fs
if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_link_libraries(GLTutorial stdc++fs)
endif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")

# If on Windows and using MSVC, we need to use a preprocessor directive to suppress the deprecation warning.
if (MSVC)
    add_compile_definitions(_SILENCE_EXPERIMENTAL_FILESYSTEM_DEPRECATION_WARNING)
endif(MSVC)

# Copy shaders folder to binary files.
file(COPY shaders DESTINATION ${CMAKE_BINARY_DIR})

# Copy assets folder to binary files.
file(COPY Assets DESTINATION ${CMAKE_BINARY_DIR})