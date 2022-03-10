cmake_minimum_required(VERSION 3.21)
project(Shader)

add_library(Shader include/Shader.h src/Shader.cpp)
target_include_directories(Shader PUBLIC include/)

include_directories(${CMAKE_SOURCE_DIR}/glad/include)