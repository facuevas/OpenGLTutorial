//
// Created by Francis Angelo Cuevas on 3/9/22.
//

#include "../include/Shader.h"

MyShader::Shader::Shader(const char *vertexPath, const char *fragmentPath) {
  // First, retrieve the vertex and fragment source code from the file path.
  std::string vertexCode;
  std::string fragmentCode;
  std::ifstream vShaderFile;
  std::ifstream fShaderFile;

  // Ensure that ifstream objects can throw exceptions
  vShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
  fShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);

  try {
    // Open the files
    vShaderFile.open(vertexPath);
    fShaderFile.open(fragmentPath);

    // Read the file's buffer contents into the streams
    std::stringstream vShaderStream, fShaderStream;
    vShaderStream << vShaderFile.rdbuf();
    fShaderStream << fShaderFile.rdbuf();

    // Close file handlers
    vShaderFile.close();
    fShaderFile.close();

    // Convert stream into string
    vertexCode = vShaderStream.str();
    fragmentCode = fShaderStream.str();

  } catch (std::ifstream::failure &e) {
    std::cout << "ERROR::SHADER::FILE_NOT_FOUND_SUCCESSFULLY_READ\n" << e.what() << std::endl;
  }

  const char *vShaderCode = vertexCode.c_str();
  const char *fShaderCode = fragmentCode.c_str();

  // Next, we will compile the shaders.
  unsigned int vertex, fragment;

  // Vertex Shader
  vertex = glCreateShader(GL_VERTEX_SHADER);
  glShaderSource(vertex, 1, &vShaderCode, nullptr);
  glCompileShader(vertex);
  checkCompileErrors(vertex, "VERTEX");

  // Fragment Shader
  fragment = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(fragment, 1, &fShaderCode, nullptr);
  glCompileShader(fragment);
  checkCompileErrors(fragment, "FRAGMENT");

  // Program Linking
  ID = glCreateProgram();
  glAttachShader(ID, vertex);
  glAttachShader(ID, fragment);
  glLinkProgram(ID);
  checkCompileErrors(ID, "PROGRAM");

  // Delete shaders as they're linked since they are no longer of use.
  glDeleteShader(vertex);
  glDeleteShader(fragment);
}

void MyShader::Shader::checkCompileErrors(unsigned int shader, const std::string &type) {
  int success;
  char infoLog[1024];
  if (type != "PROGRAM") {
    glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
    if (!success) {
      glGetShaderInfoLog(shader, 1024, nullptr, infoLog);
      std::cout << "ERROR:SHADER_COMPILATION:ERROR::"
                << type << "\n"
                << infoLog
                << "\n -- ----------- --"
                << std::endl;
    }
  } else {
    glGetProgramiv(shader, GL_LINK_STATUS, &success);
    if (!success) {
      glGetProgramInfoLog(shader, 1024, nullptr, infoLog);
      std::cout << "ERROR:PROGRAM_LINKING_ERROR:ERROR::"
                << type << "\n"
                << infoLog
                << "\n -- ----------- --"
                << std::endl;
    }
  }
}

void MyShader::Shader::use() {
  glUseProgram(ID);
}

void MyShader::Shader::setBool(const std::string &name, bool value) const {
  glUniform1i(glGetUniformLocation(ID, name.c_str()), (int) value);
}

void MyShader::Shader::setInt(const std::string &name, int value) const {
  glUniform1i(glGetUniformLocation(ID, name.c_str()), value);
}

void MyShader::Shader::setFloat(const std::string &name, float value) const {
  glUniform1f(glGetUniformLocation(ID, name.c_str()), value);
}


