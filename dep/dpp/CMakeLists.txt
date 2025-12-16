file(GLOB_RECURSE sources *.cpp *.c)

add_library(dpp STATIC ${sources})

set_target_properties(dpp PROPERTIES LINKER_LANGUAGE CXX)

target_compile_definitions(dpp PUBLIC DPP_STATIC)

target_include_directories(dpp
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/dpp
    ${CMAKE_CURRENT_SOURCE_DIR}
	${OPENSSL_INCLUDE_DIR}
	
)

if(WIN32)
  target_include_directories(dpp
  PUBLIC
    ${CMAKE_SOURCE_DIR}/dep/include-windows
  )
endif()

if(UNIX)
  find_package(ZLIB REQUIRED)
  if(ZLIB_FOUND)
    target_include_directories(dpp PUBLIC ${ZLIB_INCLUDE_DIRS})
    target_link_libraries(dpp PUBLIC ${ZLIB_LIBRARIES} optimized ${OPENSSL_LIBRARIES})
  endif(ZLIB_FOUND)
else()
  include_directories(${CMAKE_SOURCE_DIR}/dep/windows/include/zlib)
  if(MINGW)
    target_link_libraries(dpp PUBLIC zlib optimized ${OPENSSL_LIBRARIES})
  endif()
endif()

SET_TARGET_PROPERTIES(dpp PROPERTIES FOLDER "3rd Party")