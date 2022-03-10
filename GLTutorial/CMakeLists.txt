# CMakeList.txt for GLTutorial directory.

cmake_minimum_required(VERSION 3.21)

# Add source to this project's exectuable.
add_executable(GLTutorial "Main.cpp")

target_link_libraries(GLTutorial glfw glad Shader)