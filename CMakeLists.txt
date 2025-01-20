cmake_minimum_required(VERSION 3.10)

# Project name
project(RaceTelemetry )

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add source files
file(GLOB_RECURSE SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)

# Add executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link SimpleBLE (replace with actual path to library)
find_library($(PROJECT_NAME) $(CMAKE_SOURCE_DIR)/libs/simpleble/simplebluez/build_simplebluez/lib/)
target_link_libraries(${PROJECT_NAME} PRIVATE ${SIMPLEBLUEZ_LIB})

# Set include path for SimpleBLE
target_include_directories(${PROJECT_NAME} PRIVATE /libs/simpleble/simpleble/include)