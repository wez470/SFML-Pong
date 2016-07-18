cmake_minimum_required(VERSION 2.6)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake_modules" ${CMAKE_MODULE_PATH})

project(Pong)
set(EXE_NAME "Pong")
set(SOURCES src/main.cpp)
add_executable(${EXE_NAME} ${SOURCES})

# Set warning flags.
if(CMAKE_CXX_COMPILER_ID STREQUAL GNU OR CMAKE_CXX_COMPILER_ID STREQUAL Clang)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wno-unused-parameter")
endif()

# Find, include, and link SFML.
find_package(SFML 2 REQUIRED system window graphics network)
include_directories(${SFML_INCLUDE_DIR})
target_link_libraries(${EXE_NAME} ${SFML_LIBRARIES})
