### Project ###
project(SoSe19_Padi02)

### Packages ###

# CMake
cmake_minimum_required(VERSION 3.10.2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_PREFIX_PATH "/usr/lib/x86_64-linux-gnu")

# Qt
find_package(Qt5Core REQUIRED)
find_package(Qt5Gui REQUIRED)
find_package(Qt5Quick REQUIRED)
find_package(Qt5Qml REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5OpenGL REQUIRED)

# Project Sources
set(SOURCE_MAIN main.cpp)
set(SOURCE_MAIN logic/BlackBoxModel.cpp)

add_executable(SoSe19_Padi02 ${SOURCE_MAIN})
qt5_use_modules(SoSe19_Padi02 Core Quick Gui)