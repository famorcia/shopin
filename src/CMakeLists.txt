add_library(shopin
        SHPReader.h
        SHPReader.cpp
        shp_reader.cpp
        )

target_include_directories(shopin PRIVATE ${SHAPELIB_INCLUDE_DIRS})