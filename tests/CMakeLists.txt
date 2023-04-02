find_package(Boost REQUIRED COMPONENTS unit_test_framework)

if(Boost_FOUND)

    include(${CMAKE_SOURCE_DIR}/cmake/provide_test.cmake)

    include_directories(
            ${Boost_INCLUDE_DIRS}
    )


    provide_test(TestSHPReader SOURCES TestSHPReader.cpp LIBS shopin ${SHAPELIB_LIBRARIES})

else()
    message(WARNING "Boost test not available!")
endif()
