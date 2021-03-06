#pragma once

#include "Errors.h"
#include "Assert.h"

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <string>
#include <vector>
#include <map>

namespace vengine {

class VertexArray
{
public:

	VertexArray();
	~VertexArray();

	void Init();
	void Delete();

	void Bind();
	void Unbind();
	void ActivateBinded(GLuint attribute, GLuint numParams, GLenum type, GLsizei size, GLvoid* start);

	GLuint GetGLHandle() const;
	bool IsValid() const;
	bool IsBinded() const;
	operator GLuint() const;

private:
	GLuint _handle;
	bool _binded;
};

}