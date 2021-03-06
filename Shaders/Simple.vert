#version 450 core


layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normals;
layout (location = 2) in vec2 texCoord;
layout (location = 3) in vec4 color;

layout(location = 6) out VsOut {
	vec4 color;
	vec2 texCoord;
	vec3 normal;
} vsOut;


uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;


out gl_PerVertex
{
  vec4 gl_Position;
};

void main()
{
   gl_Position = projection * view * model * vec4(position, 1.0);

   vsOut.color = color;
   vsOut.texCoord = texCoord;

   vsOut.normal = mat3(transpose(inverse(model))) * normals;  
}
