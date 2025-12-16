# This file is part of the CMaNGOS Project. See AUTHORS file for Copyright information
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

cmake_minimum_required(VERSION 2.6...3.20)

project(MoveMapGen)

ADD_DEFINITIONS(-DMMAP_GENERATOR -DDEBUG)

# zlib
ADD_DEFINITIONS(-DNO_vsnprintf)

if(NOT MSVC)
    ADD_DEFINITIONS("-Wall")
    #ADD_DEFINITIONS("-ggdb")
    ADD_DEFINITIONS("-O3")
endif()

include_directories(
    ../../src
    ../../src/shared
    ../../src/game
    ../../src/game/vmap
    ../../src/game/Maps
    ../../src/game/Commands
    ../../dep/include/g3dlite
    ../../src/framework
    ${ACE_INCLUDE_DIR}
    ${OPENSSL_INCLUDE_DIR}
    ../../dep/recastnavigation/
    ../../dep/recastnavigation/Detour/Include
    ../../dep/recastnavigation/Recast/Include
    ../../dep/src/zlib
)

set(SOURCES
    ./src/IntermediateValues.cpp
    ./src/generator.cpp
    ./src/MapBuilder.cpp
    ./src/TerrainBuilder.cpp
    ./src/VMapExtensions.cpp
    ./src/TileBuilder.cpp
    ./src/IntermediateValues.h
    ./src/MapBuilder.h
    ./src/MMapCommon.h
    ./src/TerrainBuilder.h
    ./src/TileBuilder.h
)

add_executable(MoveMapGen ${SOURCES})
SET_TARGET_PROPERTIES (MoveMapGen PROPERTIES FOLDER Extractors)

if(USE_DISCORD_BOT)
    target_link_libraries(MoveMapGen PUBLIC
    ${OPENSSL_LIBRARIES}
	dpp
  )
endif()

target_link_libraries(MoveMapGen PUBLIC 
                        vmap 
                        Detour
                        Recast
                        ${ACE_LIBRARIES}
                        shared
                        framework
                        ${OPENSSL_LIBRARIES}
                        ${MYSQL_LIBRARY}
                        )

install(TARGETS MoveMapGen DESTINATION ${BIN_DIR})
