### Project ###
project(SoSe19_Padi02)

### Packages ###

# CMake
cmake_minimum_required(VERSION 3.10.2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_PREFIX_PATH "/usr/lib/x86_64-linux-gnu")

# OpenCV
find_package(OpenCV 4.1.0 REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Qt
find_package(Qt5Gui)
find_package(Qt5Core)
find_package(Qt5Widgets)
find_package(Qt5Test)
find_package(Qt5Concurrent)
find_package(Qt5OpenGL)

# Sources
set(SOURCE_MAIN main.cpp)
add_executable(main ${SOURCE_MAIN})
target_link_libraries(main ${OpenCV_LIBS})