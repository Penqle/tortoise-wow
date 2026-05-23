#
# Find the MySQL client includes and library
#
# This module defines
# MYSQL_INCLUDE_DIR, where to find mysql.h
# MYSQL_LIBRARIES, the libraries to link against to connect to MySQL
# MYSQL_FOUND, if false, you cannot build anything that requires MySQL.
# also defined, but not for general use are
# MYSQL_LIBRARY, where to find the MySQL library.

set( MYSQL_FOUND 0 )

if( UNIX )
  set(MYSQL_CONFIG_PREFER_PATH "$ENV{MYSQL_HOME}/bin" CACHE FILEPATH
    "preferred path to MySQL (mysql_config)"
  )
  find_program(MYSQL_CONFIG mysql_config
    ${MYSQL_CONFIG_PREFER_PATH}
    /usr/local/mysql/bin/
    /usr/local/bin/
    /usr/bin/
  )
  if( MYSQL_CONFIG )
    message(STATUS "Using mysql-config: ${MYSQL_CONFIG}")

    # set INCLUDE_DIR
    execute_process(
      COMMAND ${MYSQL_CONFIG} --include
      OUTPUT_VARIABLE MY_TMP
      OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    string(REGEX REPLACE "-I([^ ]*)( .*)?" "\\1" MY_TMP "${MY_TMP}")
    set(MYSQL_ADD_INCLUDE_PATH ${MY_TMP} CACHE FILEPATH INTERNAL)

    # set LIBRARY_DIR
    execute_process(
      COMMAND ${MYSQL_CONFIG} --libs_r
      OUTPUT_VARIABLE MY_TMP
      OUTPUT_STRIP_TRAILING_WHITESPACE
    )

    set(MYSQL_ADD_LIBRARIES "")
    string(REGEX MATCHALL "-l[^ ]*" MYSQL_LIB_LIST "${MY_TMP}")
    foreach(LIB ${MYSQL_LIB_LIST})
      string(REGEX REPLACE "[ ]*-l([^ ]*)" "\\1" LIB "${LIB}")
      list(APPEND MYSQL_ADD_LIBRARIES "${LIB}")
    endforeach(LIB ${MYSQL_LIB_LIST})

    set(MYSQL_ADD_LIBRARIES_PATH "")
    string(REGEX MATCHALL "-L[^ ]*" MYSQL_LIBDIR_LIST "${MY_TMP}")
    foreach(LIB ${MYSQL_LIBDIR_LIST})
      string(REGEX REPLACE "[ ]*-L([^ ]*)" "\\1" LIB "${LIB}")
      list(APPEND MYSQL_ADD_LIBRARIES_PATH "${LIB}")
    endforeach(LIB ${MYSQL_LIBS})

  else( MYSQL_CONFIG )
    set(MYSQL_ADD_LIBRARIES "")
    list(APPEND MYSQL_ADD_LIBRARIES "mysqlclient_r")
  endif( MYSQL_CONFIG )
endif( UNIX )

find_path(MYSQL_INCLUDE_DIR
  NAMES
    mysql.h
  PATHS
    ${MYSQL_ADD_INCLUDE_PATH}
    /usr/include
    /usr/include/mysql
    /usr/include/mariadb
    /usr/local/include
    /usr/local/include/mysql
    /usr/local/mysql/include
  DOC
    "Specify the directory containing mysql.h."
)

if( UNIX )
  foreach(LIB ${MYSQL_ADD_LIBRARIES})
    find_library( MYSQL_LIBRARY
      NAMES
        mariadb mysqlclient mysql libmysql ${LIB}
      PATHS
        ${MYSQL_ADD_LIBRARIES_PATH}
        /usr/lib
        /usr/lib/mysql
        /usr/lib/mariadb
        /usr/lib/x86_64-linux-gnu
        /usr/local/lib
        /usr/local/lib/mysql
        /usr/local/mysql/lib
      DOC "Specify the location of the mysql library here."
    )
  endforeach(LIB ${MYSQL_ADD_LIBRARY})
endif( UNIX )

if( WIN32 )
  find_library( MYSQL_LIBRARY
    NAMES
      mysql libmysql ${LIB}
    PATHS
      ${MYSQL_ADD_LIBRARIES_PATH}
      "C:/Program Files/MySQL/lib"
      "C:/Program Files/MySQL/MySQL Server 5.0/lib/opt"
      "C:/Program Files/MySQL/MySQL Server 5.1/lib/opt"
      "C:/MySQL/lib/debug"
    DOC "Specify the location of the mysql library here."
  )
endif( WIN32 )

if( NOT WIN32 )
  find_library( MYSQL_EXTRA_LIBRARIES
    NAMES
      z zlib
    PATHS
      /usr/lib
      /usr/local/lib
    DOC
      "if more libraries are necessary to link in a MySQL client (typically zlib), specify them here."
  )
else( NOT WIN32 )
  set( MYSQL_EXTRA_LIBRARIES "" )
endif( NOT WIN32 )

if( MYSQL_LIBRARY )
  if( MYSQL_INCLUDE_DIR )
    set( MYSQL_FOUND 1 )
    message(STATUS "Found MySQL library: ${MYSQL_LIBRARY}")
    message(STATUS "Found MySQL headers: ${MYSQL_INCLUDE_DIR}")
  else( MYSQL_INCLUDE_DIR )
    message(FATAL_ERROR "Could not find MySQL headers! Please install the development-libraries and headers.")
  endif( MYSQL_INCLUDE_DIR )
  mark_as_advanced( MYSQL_FOUND MYSQL_LIBRARY MYSQL_EXTRA_LIBRARIES MYSQL_INCLUDE_DIR )
else( MYSQL_LIBRARY )
  message(FATAL_ERROR "Could not find the MySQL libraries! Please install the development-libraries and headers.")
endif( MYSQL_LIBRARY )
