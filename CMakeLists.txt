cmake_minimum_required(VERSION 3.10)

# Project name
project(RaceTelemetry VERSION 0.0 LANGUAGES CXX )

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add source files
file(GLOB_RECURSE SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)

# Add executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link SimpleBLE (replace with actual path to library)
find_library(SIMPLEBLE_LIB simpleble PATHS libs/simpleble/simpleble REQUIRED)
target_link_libraries(${PROJECT_NAME} PRIVATE ${SIMPLEBLE_LIB})

# Set include path for SimpleBLE
target_include_directories(${PROJECT_NAME} PRIVATE /libs/simpleble/simpleble/include)