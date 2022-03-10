//
// Created by Francis Angelo Cuevas on 3/6/22.
//

#include "glad/glad.h"
#include "GLFW/glfw3.h"

#include <iostream>

// Function prototypes
void framebuffer_size_callback(GLFWwindow *window, int width, int height);

void processInput(GLFWwindow *window);

// settings
const unsigned int SCREEN_WIDTH = 1024;
const unsigned int SCREEN_HEIGHT = 768;

// shaders
const char *vertexShaderSource = "#version 330 core\n"
                                 "layout (location = 0) in vec3 aPos;\n"
                                 "void main()\n"
                                 "{\n"
                                 "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
                                 "}\0";

const char *fragmentShaderSource2 = "#version 330 core\n"
                                    "out vec4 FragColor;\n"
                                    "uniform vec4 ourColor;\n"
                                    "void main()\n"
                                    "{\n"
                                    "   FragColor = vec4(1.0f, 1.0f, 0.0f, 1.0f);\n"
                                    "}\n\0";


int main() {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

    // Window creation using GLFW
    GLFWwindow *window = glfwCreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "OpenGL", nullptr, nullptr);
    if (window == nullptr) {
        std::cout << "Failed to create GLFW window." << std::endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // load and open all OpenGL function pointers using GLAD
    if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress)) {
        std::cout << "Failed to init GLAD" << std::endl;
        return -1;
    }

    // Build and compile our shader program.
    unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
//    unsigned int fragmentShaderOrange = glCreateShader(GL_FRAGMENT_SHADER);
    unsigned int fragmentShaderYellow = glCreateShader(GL_FRAGMENT_SHADER);
//    unsigned int shaderProgramOrange = glCreateProgram();
    unsigned int shaderProgramYellow = glCreateProgram();

    glShaderSource(vertexShader, 1, &vertexShaderSource, nullptr);
    glCompileShader(vertexShader);
//    glShaderSource(fragmentShaderOrange, 1, &fragmentShaderSource1, nullptr);
//    glCompileShader(fragmentShaderOrange);
    glShaderSource(fragmentShaderYellow, 1, &fragmentShaderSource2, nullptr);
    glCompileShader(fragmentShaderYellow);

//    // Link the first program object.
//    glAttachShader(shaderProgramOrange, vertexShader);
//    glAttachShader(shaderProgramOrange, fragmentShaderOrange);
//    glLinkProgram(shaderProgramOrange);

    // Link the second program object.
    glAttachShader(shaderProgramYellow, vertexShader);
    glAttachShader(shaderProgramYellow, fragmentShaderYellow);
    glLinkProgram(shaderProgramYellow);

    // Setup vertex data, buffers, and configure vertex attributes.
//    float topTriangle[] = {
//            -0.25f, 0.0f, 0.0f, // left
//            0.25f, 0.0f, 0.0f, // right
//            0.0f, 0.5f, 0.0f, // top
//    };
//
//    float leftTriangle[] = {
//            -0.5f, -0.5f, 0.0f, // left
//            0.0f, -0.5f, 0.0f, // right
//            -0.25f, 0.0f, 0.0f, // top
//    };
//
//    float rightTriangle[] = {
//            0.0f, -0.5f, 0.0f, // left
//            0.5f, -0.5f, 0.0f, // right
//            0.25f, 0.0f, 0.0f, // top
//    };

    // Tri-force vertices with EBO.
    // Save calls to the GPU by sharing same vertices
    // instead of rendering the same point twice.
    float vertices[] = {
            // Shared points
            -0.25f, 0.0f, 0.0f, // Top-triangle left and Left-triangle top
            0.25f, 0.0f, 0.0f, // Top-triangle right and Right-triangle top
            0.0f, -0.5f, 0.0f, // Left-triangle right and Right-triangle left
            // All the other points (not shared)
            0.0f, 0.5f, 0.0f, // Top-triangle top
            -0.5f, -0.5f, 0.0f, // Left-triangle left
            0.5f, -0.5f, 0.0f // Right-triangle right
    };

    unsigned int indices[] = {
            0, 1, 3, // Top triangle - left right top
            4, 2, 0, // Left triangle - left right top
            2, 5, 1, // Right triangle - left right top
    };

    // Declare vertex bindings and arrays.
    unsigned int VBO, VAO, EBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    // Bind them
    glBindVertexArray(VAO); // Bind array vertex

    // VBO binding
    glBindBuffer(GL_ARRAY_BUFFER, VBO); // Bind buffer vertex
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    // EBO binding
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), nullptr);
    glEnableVertexAttribArray(0);

    glBindBuffer(GL_ARRAY_BUFFER, 0);

    //---------------------------------
    // This portion does not use EBOs and uses VBOs for each
//    // set up top triangle
//    unsigned int VBOs[3], VAOs[3];
//    glGenVertexArrays(3, VAOs);
//    glGenBuffers(3, VBOs);
//
//    glBindVertexArray(VAOs[0]);
//    glBindBuffer(GL_ARRAY_BUFFER, VBOs[0]);
//    glBufferData(GL_ARRAY_BUFFER, sizeof(topTriangle), topTriangle, GL_STATIC_DRAW);
//    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), nullptr);
//    glEnableVertexAttribArray(0);
//
//    // set up left triangle
//    glBindVertexArray(VAOs[1]);
//    glBindBuffer(GL_ARRAY_BUFFER, VBOs[1]);
//    glBufferData(GL_ARRAY_BUFFER, sizeof(leftTriangle), leftTriangle, GL_STATIC_DRAW);
//    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, nullptr);
//    glEnableVertexAttribArray(0);
//
//    // set up right triangle
//    glBindVertexArray(VAOs[2]);
//    glBindBuffer(GL_ARRAY_BUFFER, VBOs[2]);
//    glBufferData(GL_ARRAY_BUFFER, sizeof(rightTriangle), rightTriangle, GL_STATIC_DRAW);
//    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, nullptr);
//    glEnableVertexAttribArray(0);
    //----------------------------------

    while (!glfwWindowShouldClose(window)) {
        // Input
        processInput(window);

        // Rendering commands here
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glUseProgram(shaderProgramYellow);
        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, 9, GL_UNSIGNED_INT, nullptr);

//        // Render top triangle with the color yellow.
//        glUseProgram(shaderProgramYellow);
//        glBindVertexArray(VAOs[0]);
//        glDrawArrays(GL_TRIANGLES, 0, 3);
//
//        // Render left triangle with the color yellow.
//        glUseProgram(shaderProgramYellow);
//        glBindVertexArray(VAOs[1]);
//        glDrawArrays(GL_TRIANGLES, 0, 3);
//
//        // Render right triangle with the color yellow.
//        glUseProgram(shaderProgramYellow);
//        glBindVertexArray(VAOs[2]);
//        glDrawArrays(GL_TRIANGLES, 0, 3);

        // Check and call events and swap the buffers
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    // de-allocate all resources once they've outlived their purpose
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
    //glDeleteProgram(shaderProgramOrange);
    glDeleteProgram(shaderProgramYellow);

    glfwTerminate();
    return 0;
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
}

void processInput(GLFWwindow *window) {
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}