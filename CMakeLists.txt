project(shopin)

cmake_minimum_required(VERSION 3.10)

include(cmake/FindShapelib.cmake)

find_package(Coin REQUIRED)

add_subdirectory(src)

add_subdirectory(tests)
