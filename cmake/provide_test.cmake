function(provide_test test_name)
    set(multiValueArgs SOURCES LIBS )
    cmake_parse_arguments(executable "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )
    add_executable(${test_name} ${executable_SOURCES})
    target_link_libraries(${test_name} ${executable_LIBS} )
    target_link_directories(${test_name} PRIVATE ${SHAPELIB_LIBRARY_DIRS})
    add_test(NAME ${test_name} COMMAND ${test_name})
endfunction(provide_test)