cmake_minimum_required(VERSION 3.10)

# Project name
project(RaceTelemetry)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add source files
file(GLOB_RECURSE SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)

# Add executable
add_executable(${PROJECT_NAME} ${SOURCES})

add_subdirectory(libs/simpleble/simplebluez)

target_include_directories(${PROJECT_NAME}
	PUBLIC /libs/simpleble/simplebluez/include/simplebluez	
)
target_link_directories(${PROJECT_NAME}
	PUBLIC libs/simpleble
	
)
target_link_libraries(${PROJECT_NAME}
	simplebluez
)
