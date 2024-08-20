cmake_minimum_required(VERSION 3.28)
project(RaycasterEngineOpenGL)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenGL REQUIRED)


include_directories(RaycasterProject)
include_directories(RaycasterProject/Dependencies)
include_directories(RaycasterProject/Dependencies/Include)
include_directories(RaycasterProject/Dependencies/Include/glad)
include_directories(RaycasterProject/Dependencies/Include/glad/include)
include_directories(RaycasterProject/Dependencies/Include/glad/include/glad)
include_directories(RaycasterProject/Dependencies/Include/glad/include/KHR)
include_directories(RaycasterProject/Dependencies/Include/glfw)
include_directories(RaycasterProject/Dependencies/Include/glfw/include)
include_directories(RaycasterProject/Dependencies/Include/glfw/include/GLFW)

add_executable(RaycasterEngineOpenGL
    RaycasterProject/Dependencies/Include/glad/include/glad/glad.h
    RaycasterProject/Dependencies/Include/glad/include/KHR/khrplatform.h
    RaycasterProject/Dependencies/Include/glfw/include/GLFW/glfw3.h
    RaycasterProject/Dependencies/Include/glfw/include/GLFW/glfw3native.h
    RaycasterProject/glad.c
    RaycasterProject/main.cpp
    RaycasterProject/Map.cpp
    RaycasterProject/Map.h
    RaycasterProject/Player.cpp
    RaycasterProject/Player.h
    RaycasterProject/Ray3D.cpp
    RaycasterProject/Ray3D.h)

target_link_libraries(RaycasterEngineOpenGL PRIVATE glfw OpenGL::GL)