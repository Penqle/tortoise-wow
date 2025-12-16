file(GLOB_RECURSE sources *.cpp *.c)

add_library(libdeflate STATIC ${sources})

set_target_properties(libdeflate PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(libdeflate
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
	
)

SET_TARGET_PROPERTIES(libdeflate PROPERTIES FOLDER "3rd Party")