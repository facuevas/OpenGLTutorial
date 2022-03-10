//
// Created by Francis Angelo Cuevas on 3/9/22.
//

#ifndef OPENGLTUTORIAL_SHADER_H
#define OPENGLTUTORIAL_SHADER_H

#include "glad/glad.h"

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

namespace MyShader {
    class Shader {
    public:
        // Member variables
        unsigned int ID{};

        // Constructor
        Shader(const char *vertexPath, const char *fragmentPath);

        // Function to use/activate the shader
        void use();

        // Utility uniform functions
        void setBool(const std::string &name, bool value) const;

        void setInt(const std::string &name, int value) const;

        void setFloat(const std::string &name, float value) const;
    private:
        static void checkCompileErrors(unsigned int shader, const std::string& type);
    };
}

#endif
