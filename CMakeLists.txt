cmake_minimum_required(VERSION 3.0.0)
project(Clox VERSION 0.1.0)
file(GLOB cSource ./src/*.c)
# file(GLOB hSource ./src/*.h)
add_executable(Clox main.c ${cSource})
target_include_directories(Clox PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/head")

enable_testing()
add_test(NAME Run_testSource COMMAND Clox ${CMAKE_CURRENT_SOURCE_DIR}/test/test.clox) 
