add_library(fmt INTERFACE)

target_compile_definitions(fmt INTERFACE FMT_HEADER_ONLY)

target_include_directories(fmt
  INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}
	
)