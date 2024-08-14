#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <chrono>
#include <thread>
#include <math.h>
#include "Player.h"
#include "Map.h"
#include "Ray3D.h"
float PI = 3.14159265359;
float P2 = PI / 2;
float P3 = 3 * P2;
float DR = 0.0174533;
const int TARGET_FPS = 400;
const int FRAME_TIME = 1000 / TARGET_FPS;
static int frameCount = 0;
static auto lastTime = std::chrono::high_resolution_clock::now();




int WindowWidth = 1280;
int WindowHeight = 640;

float playerSpeed = 20;
float px = 320, py = 320,pdx,pdy,pa;
int mx, my;
bool showMapWindow = false;bool showWorldWindow = true;


int mapArray[] = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
};

Map map(mapArray);

void fpsLimiter() {
    static auto lastTime = std::chrono::high_resolution_clock::now();

    auto currentTime = std::chrono::high_resolution_clock::now();
    auto timeDifference = std::chrono::duration_cast<std::chrono::milliseconds>(currentTime - lastTime);

    if (timeDifference.count() < FRAME_TIME) {
        std::this_thread::sleep_for(std::chrono::milliseconds(FRAME_TIME - timeDifference.count()));
    }

    lastTime = std::chrono::high_resolution_clock::now();
}

void initialize()
{
    glClear(GL_COLOR_BUFFER_BIT);
    glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
    pdx = cos(pa) * 5, pdy = sin(pa) * 5;

    if (pa < 0)
    {
        pa += 2 * PI;
        pdx = cos(pa) * 5;
        pdy = sin(pa) * 5;
    }
    if (pa > 2 * PI)
    {
        pa -= 2 * PI;
        pdx = cos(pa) * 5;
        pdy = sin(pa) * 5;
    }
}

bool w, a, s, d;
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_D && action == GLFW_PRESS){
        d = true;
    }
    if (key == GLFW_KEY_D && action == GLFW_RELEASE) {
        d = false;
    }
    if (key == GLFW_KEY_A && action == GLFW_PRESS) {
        a = true;
    }
    if (key == GLFW_KEY_A && action == GLFW_RELEASE) {
        a = false;
    }
    if (key == GLFW_KEY_W && action == GLFW_PRESS) {
        w = true;
    }
    if (key == GLFW_KEY_W && action == GLFW_FALSE) {
        w = false;
    }

    if (key == GLFW_KEY_S && action == GLFW_PRESS) {
        s = true;
    }
    if (key == GLFW_KEY_S && action == GLFW_RELEASE) {
        s = false;
    }


    if (key == GLFW_KEY_E && action == GLFW_PRESS) {
        showWorldWindow = false;
        showMapWindow = true;
        map.saveMapToFile(mapArray, 16, 16, "levelMap");
        std::cout << "Map Saved" << std::endl;
    }
    if (key == GLFW_KEY_R && action == GLFW_PRESS) {
        showWorldWindow = true;
        showMapWindow = false;
    }

    if (key == GLFW_KEY_DOWN && action == GLFW_REPEAT) {
        my += playerSpeed;
    }
    if (key == GLFW_KEY_UP && action == GLFW_REPEAT) {
        my -= playerSpeed;
    }
    if (key == GLFW_KEY_LEFT && action == GLFW_REPEAT) {
        mx += playerSpeed;
    }
    if (key == GLFW_KEY_RIGHT && action == GLFW_REPEAT) {
        mx -= playerSpeed;
    }


    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, 1);
}

int main(void)
{
    GLFWwindow* window;
    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(WindowWidth, WindowHeight, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    glad_glOrtho(0, WindowWidth, WindowHeight, 0, -1, 1);
    glfwSetKeyCallback(window, key_callback);
    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {

        /* Render here */
        initialize();

        map.moveX = mx; map.moveY = my;

        Player player;
        player.size = 10;
        player.DrawPlayer(px + mx,py + my,pdx,pdy);
        //input
        if (d) {
            pa += player.sens;
        }
        if (a) {
            pa -= player.sens;
        }
        if (w) {
            px += pdx * player.speed;
            py += pdy * player.speed;
        }
        if (s) {
            py -= pdy * player.speed;
            px -= pdx * player.speed;
        }


        player.showPlayer = showMapWindow;
        map.showMap = showMapWindow;
        map.DrawMap(mapArray);

        Ray3D ray(DR, PI, pa);
        ray.drawWorld = showWorldWindow;
        ray.drawPlayerRay = showMapWindow;
        ray.depthOfFieldConstant = 40;
        ray.DrawRay(DR, PI, P2, P3, px, py, pa, map.mapX, map.mapY, map.mapS, mapArray);

        fpsLimiter();
        frameCount++;
        auto currentTime = std::chrono::high_resolution_clock::now();
        auto timeDifference = std::chrono::duration_cast<std::chrono::milliseconds>(currentTime - lastTime);

        if (timeDifference.count() >= 1000) {
            double fps = frameCount / (timeDifference.count() / 1000.0);
            std::cout << "Current FPS: " << fps << std::endl;
            frameCount = 0;
            lastTime = currentTime;
        }
        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }


    glfwTerminate();
    return 0;
}