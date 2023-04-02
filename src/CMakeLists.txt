add_library(shopin shp_reader.cpp)

target_include_directories(shopin PRIVATE ${SHAPELIB_INCLUDE_DIRS})