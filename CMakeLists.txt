#CMakeLists file for project.

cmake_minimum_required(VERSION 3.21)
project(OpenGLTutorial)

set(CMAKE_CXX_STANDARD 17)

# Include sub-projects
add_subdirectory("glfw")
add_subdirectory("glad")
add_subdirectory("GLTutorial")
add_subdirectory("GLTutorial/Shader")
add_subdirectory("stb")
add_subdirectory("glm")

target_include_directories(GLTutorial PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glfw/include)
target_include_directories(GLTutorial PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glad/include)
target_include_directories(GLTutorial PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/GLTutorial/Shader/include)
target_include_directories(GLTutorial PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/stb/include)
target_include_directories(GLTutorial PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glm/glm)

# compiler options
add_compile_options(-Wall -Wextra -pedantic -Werror)

