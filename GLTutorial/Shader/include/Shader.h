//
// Created by Francis Angelo Cuevas on 3/9/22.
//

#ifndef OPENGLTUTORIAL_SHADER_H
#define OPENGLTUTORIAL_SHADER_H

#include "glad/glad.h"

#include <iostream>

class Shader {
public:
    unsigned int ID;

    Shader();

    // Constructor generates the shader on the fly.
    Shader(const char* vertexPath, const char* fragmentPath);
};


#endif //OPENGLTUTORIAL_SHADER_H
