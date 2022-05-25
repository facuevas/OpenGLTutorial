#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoord;

// texture sampler
uniform sampler2D container;
uniform sampler2D awesomeface;

void main()
{
    FragColor = mix(texture(container, TexCoord), texture(awesomeface, vec2(1 - TexCoord.x, TexCoord.y)), 0.2);
}

