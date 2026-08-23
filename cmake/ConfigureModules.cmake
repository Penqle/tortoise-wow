# This file is derived from the AzerothCore Project.
# Copyright (C) AzerothCore contributors.
# Source: https://github.com/azerothcore/azerothcore-wotlk
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

set(MODULE_LINKAGE_VALUES disabled static dynamic default)

function(GetModulesBasePath variable)
  set(${variable} "${CMAKE_SOURCE_DIR}/modules" PARENT_SCOPE)
endfunction()

function(GetPathToModuleSource module variable)
  GetModulesBasePath(MODULE_BASE_PATH)
  set(${variable} "${MODULE_BASE_PATH}/${module}/src" PARENT_SCOPE)
endfunction()

function(ModuleNameToVariable module variable)
  string(TOUPPER "${module}" MODULE_VARIABLE_NAME)
  string(REGEX REPLACE "[^A-Z0-9_]" "_" MODULE_VARIABLE_NAME "${MODULE_VARIABLE_NAME}")
  set(${variable} "MODULE_${MODULE_VARIABLE_NAME}" PARENT_SCOPE)
endfunction()

function(GetModuleSourceList variable)
  GetModulesBasePath(MODULE_BASE_PATH)

  if(NOT IS_DIRECTORY "${MODULE_BASE_PATH}")
    set(${variable} "" PARENT_SCOPE)
    return()
  endif()

  file(GLOB LOCAL_MODULE_LIST RELATIVE
    "${MODULE_BASE_PATH}"
    "${MODULE_BASE_PATH}/*")

  set(MODULE_SOURCE_LIST)
  foreach(SOURCE_MODULE ${LOCAL_MODULE_LIST})
    GetPathToModuleSource("${SOURCE_MODULE}" MODULE_SOURCE_PATH)
    if(IS_DIRECTORY "${MODULE_SOURCE_PATH}")
      list(APPEND MODULE_SOURCE_LIST "${SOURCE_MODULE}")
    endif()
  endforeach()

  list(SORT MODULE_SOURCE_LIST)
  set(${variable} ${MODULE_SOURCE_LIST} PARENT_SCOPE)
endfunction()

function(CollectModuleSourceFiles current_dir variable)
  if(NOT IS_DIRECTORY "${current_dir}")
    set(${variable} "" PARENT_SCOPE)
    return()
  endif()

  file(GLOB_RECURSE LOCAL_SOURCES CONFIGURE_DEPENDS
    "${current_dir}/*.c"
    "${current_dir}/*.cc"
    "${current_dir}/*.cpp"
    "${current_dir}/*.cxx"
    "${current_dir}/*.h"
    "${current_dir}/*.hh"
    "${current_dir}/*.hpp"
    "${current_dir}/*.hxx")

  set(${variable} ${LOCAL_SOURCES} PARENT_SCOPE)
endfunction()

function(CollectSourceFiles current_dir variable)
  list(FIND ARGN "${current_dir}" IS_EXCLUDED)
  if(IS_EXCLUDED EQUAL -1)
    file(GLOB LOCAL_SOURCES CONFIGURE_DEPENDS
      "${current_dir}/*.c"
      "${current_dir}/*.cc"
      "${current_dir}/*.cpp"
      "${current_dir}/*.cxx"
      "${current_dir}/*.inl"
      "${current_dir}/*.def"
      "${current_dir}/*.h"
      "${current_dir}/*.hh"
      "${current_dir}/*.hpp"
      "${current_dir}/*.hxx")
    list(APPEND ${variable} ${LOCAL_SOURCES})

    file(GLOB LOCAL_ENTRIES CONFIGURE_DEPENDS "${current_dir}/*")
    foreach(LOCAL_ENTRY ${LOCAL_ENTRIES})
      if(IS_DIRECTORY "${LOCAL_ENTRY}")
        CollectSourceFiles("${LOCAL_ENTRY}" "${variable}" "${ARGN}")
      endif()
    endforeach()

    set(${variable} ${${variable}} PARENT_SCOPE)
  endif()
endfunction()

function(CollectModuleIncludeDirectories current_dir variable)
  if(NOT IS_DIRECTORY "${current_dir}")
    set(${variable} "" PARENT_SCOPE)
    return()
  endif()

  set(LOCAL_INCLUDES "${current_dir}")
  file(GLOB_RECURSE LOCAL_HEADERS CONFIGURE_DEPENDS
    "${current_dir}/*.h"
    "${current_dir}/*.hh"
    "${current_dir}/*.hpp"
    "${current_dir}/*.hxx")

  foreach(HEADER_FILE ${LOCAL_HEADERS})
    get_filename_component(HEADER_DIR "${HEADER_FILE}" DIRECTORY)
    list(APPEND LOCAL_INCLUDES "${HEADER_DIR}")
  endforeach()

  list(REMOVE_DUPLICATES LOCAL_INCLUDES)
  set(${variable} ${LOCAL_INCLUDES} PARENT_SCOPE)
endfunction()

function(CollectIncludeDirectories current_dir variable)
  list(FIND ARGN "${current_dir}" IS_EXCLUDED)
  if(IS_EXCLUDED EQUAL -1)
    list(APPEND ${variable} "${current_dir}")

    file(GLOB LOCAL_ENTRIES CONFIGURE_DEPENDS "${current_dir}/*")
    foreach(LOCAL_ENTRY ${LOCAL_ENTRIES})
      if(IS_DIRECTORY "${LOCAL_ENTRY}")
        CollectIncludeDirectories("${LOCAL_ENTRY}" "${variable}" "${ARGN}")
      endif()
    endforeach()

    set(${variable} ${${variable}} PARENT_SCOPE)
  endif()
endfunction()

macro(GroupSources dir)
  if(DEFINED WITH_SOURCE_TREE AND NOT "${WITH_SOURCE_TREE}" STREQUAL "")
    file(GLOB_RECURSE GROUP_SOURCE_ELEMENTS RELATIVE "${dir}"
      "${dir}/*.h"
      "${dir}/*.hpp"
      "${dir}/*.c"
      "${dir}/*.cpp"
      "${dir}/*.cc")

    foreach(GROUP_SOURCE_ELEMENT ${GROUP_SOURCE_ELEMENTS})
      get_filename_component(GROUP_SOURCE_DIR "${GROUP_SOURCE_ELEMENT}" DIRECTORY)
      if(NOT "${GROUP_SOURCE_DIR}" STREQUAL "")
        if("${WITH_SOURCE_TREE}" STREQUAL "flat")
          string(FIND "${GROUP_SOURCE_DIR}" "/" GROUP_DELIMITER_POS)
          if(NOT GROUP_DELIMITER_POS EQUAL -1)
            string(SUBSTRING "${GROUP_SOURCE_DIR}" 0 ${GROUP_DELIMITER_POS} GROUP_NAME)
          else()
            set(GROUP_NAME "${GROUP_SOURCE_DIR}")
          endif()
        else()
          string(REPLACE "/" "\\" GROUP_NAME "${GROUP_SOURCE_DIR}")
        endif()
        source_group("${GROUP_NAME}" FILES "${dir}/${GROUP_SOURCE_ELEMENT}")
      else()
        source_group("\\" FILES "${dir}/${GROUP_SOURCE_ELEMENT}")
      endif()
    endforeach()
  endif()
endmacro()

function(TortoiseAddGlobalProperty property_name)
  foreach(PROPERTY_VALUE ${ARGN})
    set_property(GLOBAL APPEND PROPERTY ${property_name} "${PROPERTY_VALUE}")
  endforeach()
endfunction()

function(TortoiseSetGlobalProperty property_name)
  set_property(GLOBAL PROPERTY ${property_name} "${ARGN}")
endfunction()

function(TortoiseGetGlobalProperty property_name variable)
  get_property(PROPERTY_VALUE GLOBAL PROPERTY ${property_name})
  set(${variable} ${PROPERTY_VALUE} PARENT_SCOPE)
endfunction()

macro(CU_ADD_GLOBAL property_name value)
  TortoiseAddGlobalProperty("${property_name}" "${value}")
endmacro()

macro(CU_SET_GLOBAL property_name value)
  TortoiseSetGlobalProperty("${property_name}" "${value}")
endmacro()

macro(CU_GET_GLOBAL property_name)
  TortoiseGetGlobalProperty("${property_name}" ${property_name})
endmacro()

macro(CU_LIST_ADD_CACHE variable)
  list(APPEND ${variable} ${ARGN})
endmacro()

macro(TW_ADD_SCRIPT path)
  if(DEFINED TORTOISE_CURRENT_MODULE_VARIABLE)
    CU_ADD_GLOBAL("TW_${TORTOISE_CURRENT_MODULE_VARIABLE}_SCRIPTS_SOURCES" "${path}")
    get_filename_component(TW_SCRIPT_INCLUDE_DIR "${path}" DIRECTORY)
    CU_ADD_GLOBAL("TW_${TORTOISE_CURRENT_MODULE_VARIABLE}_SCRIPTS_INCLUDE_DIRS" "${TW_SCRIPT_INCLUDE_DIR}")
  else()
    CU_ADD_GLOBAL("TW_SCRIPTS_SOURCES" "${path}")
  endif()
endmacro()

macro(TW_ADD_SCRIPTS path)
  CollectSourceFiles("${path}" TW_COLLECTED_SCRIPT_SOURCES)
  CollectIncludeDirectories("${path}" TW_COLLECTED_SCRIPT_INCLUDE_DIRS)
  foreach(TW_COLLECTED_SCRIPT_SOURCE ${TW_COLLECTED_SCRIPT_SOURCES})
    if(DEFINED TORTOISE_CURRENT_MODULE_VARIABLE)
      CU_ADD_GLOBAL("TW_${TORTOISE_CURRENT_MODULE_VARIABLE}_SCRIPTS_SOURCES" "${TW_COLLECTED_SCRIPT_SOURCE}")
    else()
      CU_ADD_GLOBAL("TW_SCRIPTS_SOURCES" "${TW_COLLECTED_SCRIPT_SOURCE}")
    endif()
  endforeach()
  if(DEFINED TORTOISE_CURRENT_MODULE_VARIABLE)
    foreach(TW_COLLECTED_SCRIPT_INCLUDE_DIR ${TW_COLLECTED_SCRIPT_INCLUDE_DIRS})
      CU_ADD_GLOBAL("TW_${TORTOISE_CURRENT_MODULE_VARIABLE}_SCRIPTS_INCLUDE_DIRS" "${TW_COLLECTED_SCRIPT_INCLUDE_DIR}")
    endforeach()
  endif()
endmacro()

macro(TW_ADD_SCRIPT_LOADER script_dec include)
  set(TW_LOWER_PRIO_SCRIPTS ${ARGN})
  list(LENGTH TW_LOWER_PRIO_SCRIPTS TW_NUM_LOWER_PRIO_SCRIPTS)
  if(DEFINED TORTOISE_CURRENT_MODULE_VARIABLE)
    set(TW_SCRIPT_LIST_PROPERTY "TW_${TORTOISE_CURRENT_MODULE_VARIABLE}_ADD_SCRIPTS_LIST")
    set(TW_SCRIPT_INCLUDE_PROPERTY "TW_${TORTOISE_CURRENT_MODULE_VARIABLE}_ADD_SCRIPTS_INCLUDE")
  else()
    set(TW_SCRIPT_LIST_PROPERTY "TW_ADD_SCRIPTS_LIST")
    set(TW_SCRIPT_INCLUDE_PROPERTY "TW_ADD_SCRIPTS_INCLUDE")
  endif()
  TortoiseGetGlobalProperty("${TW_SCRIPT_LIST_PROPERTY}" TW_ADD_SCRIPTS_LIST)

  if(TW_NUM_LOWER_PRIO_SCRIPTS GREATER 0)
    unset(TW_REMOVED_LOWER_PRIO_SCRIPTS)
    foreach(TW_LOWER_PRIO_SCRIPT ${TW_LOWER_PRIO_SCRIPTS})
      if(";${TW_ADD_SCRIPTS_LIST};" MATCHES ";Add${TW_LOWER_PRIO_SCRIPT}Scripts\\(\\);")
        list(REMOVE_ITEM TW_ADD_SCRIPTS_LIST "Add${TW_LOWER_PRIO_SCRIPT}Scripts();")
        list(APPEND TW_REMOVED_LOWER_PRIO_SCRIPTS ${TW_LOWER_PRIO_SCRIPT})
      endif()
    endforeach()
    TortoiseSetGlobalProperty("${TW_SCRIPT_LIST_PROPERTY}" "${TW_ADD_SCRIPTS_LIST}")
    TortoiseAddGlobalProperty("${TW_SCRIPT_LIST_PROPERTY}" "Add${script_dec}Scripts();")
    foreach(TW_LOWER_PRIO_SCRIPT ${TW_REMOVED_LOWER_PRIO_SCRIPTS})
      TortoiseAddGlobalProperty("${TW_SCRIPT_LIST_PROPERTY}" "Add${TW_LOWER_PRIO_SCRIPT}Scripts();")
    endforeach()
  else()
    TortoiseAddGlobalProperty("${TW_SCRIPT_LIST_PROPERTY}" "Add${script_dec}Scripts();")
  endif()

  if(NOT "${include}" STREQUAL "")
    TortoiseGetGlobalProperty("${TW_SCRIPT_INCLUDE_PROPERTY}" TW_ADD_SCRIPTS_INCLUDE)
    if(NOT ";${TW_ADD_SCRIPTS_INCLUDE};" MATCHES ";${include};")
      TortoiseAddGlobalProperty("${TW_SCRIPT_INCLUDE_PROPERTY}" "${include}")
    endif()
  endif()
endmacro()

function(CopyModuleConfig config_file)
  if(NOT EXISTS "${config_file}")
    message(FATAL_ERROR "Module config file does not exist: ${config_file}")
  endif()

  TortoiseAddGlobalProperty("TORTOISE_MODULE_CONFIG_FILES" "${config_file}")

  if(UNIX)
    install(FILES "${config_file}" DESTINATION "${CONF_DIR}/modules")
  elseif(WIN32)
    install(FILES "${config_file}" DESTINATION "${CMAKE_INSTALL_PREFIX}/modules")
  endif()
endfunction()

function(GetModuleConfigList variable)
  set(MODULE_CONFIG_LIST)

  GetModuleSourceList(MODULES_MODULE_LIST)
  foreach(SOURCE_MODULE ${MODULES_MODULE_LIST})
    ModuleNameToVariable("${SOURCE_MODULE}" MODULE_VARIABLE)

    if("${${MODULE_VARIABLE}}" STREQUAL "default")
      set(MODULE_LINKAGE "${MODULES_DEFAULT_LINKAGE}")
    else()
      set(MODULE_LINKAGE "${${MODULE_VARIABLE}}")
    endif()

    if(NOT MODULE_LINKAGE STREQUAL "disabled")
      file(GLOB MODULE_CONFIG_DIST_FILES CONFIGURE_DEPENDS
        "${CMAKE_SOURCE_DIR}/modules/${SOURCE_MODULE}/conf/*.conf.dist")

      foreach(MODULE_CONFIG_DIST_FILE ${MODULE_CONFIG_DIST_FILES})
        get_filename_component(MODULE_CONFIG_FILE_NAME "${MODULE_CONFIG_DIST_FILE}" NAME)
        string(REGEX REPLACE "\\.dist$" "" MODULE_CONFIG_FILE_NAME "${MODULE_CONFIG_FILE_NAME}")
        list(APPEND MODULE_CONFIG_LIST "${MODULE_CONFIG_FILE_NAME}")
      endforeach()
    endif()
  endforeach()

  list(REMOVE_DUPLICATES MODULE_CONFIG_LIST)
  list(SORT MODULE_CONFIG_LIST)
  set(${variable} ${MODULE_CONFIG_LIST} PARENT_SCOPE)
endfunction()

function(ProcessModuleConfigCopies target_name)
  TortoiseGetGlobalProperty("TORTOISE_MODULE_CONFIG_FILES" MODULE_CONFIG_FILES)
  if(NOT MODULE_CONFIG_FILES)
    return()
  endif()

  list(REMOVE_DUPLICATES MODULE_CONFIG_FILES)

  if(WIN32)
    set(MODULE_CONFIG_BUILD_DIR "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/modules")
  else()
    set(MODULE_CONFIG_BUILD_DIR "${CMAKE_BINARY_DIR}/modules/configs")
  endif()

  add_custom_command(TARGET ${target_name}
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E make_directory "${MODULE_CONFIG_BUILD_DIR}")

  foreach(MODULE_CONFIG_FILE ${MODULE_CONFIG_FILES})
    add_custom_command(TARGET ${target_name}
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_if_different "${MODULE_CONFIG_FILE}" "${MODULE_CONFIG_BUILD_DIR}")
  endforeach()
endfunction()

function(IsDynamicLinkingModulesRequired variable)
  set(IS_REQUIRED OFF)

  if(MODULES MATCHES "dynamic")
    set(IS_DEFAULT_VALUE_DYNAMIC_MODULE ON)
  else()
    set(IS_DEFAULT_VALUE_DYNAMIC_MODULE OFF)
  endif()

  GetModuleSourceList(MODULES_MODULE_LIST)
  foreach(SOURCE_MODULE ${MODULES_MODULE_LIST})
    ModuleNameToVariable("${SOURCE_MODULE}" MODULE_VARIABLE)

    if(("${${MODULE_VARIABLE}}" STREQUAL "dynamic") OR
        ("${${MODULE_VARIABLE}}" STREQUAL "default" AND IS_DEFAULT_VALUE_DYNAMIC_MODULE))
      set(IS_REQUIRED ON)
      break()
    endif()
  endforeach()

  set(${variable} ${IS_REQUIRED} PARENT_SCOPE)
endfunction()

function(ConfigureModuleBuildOptions)
  if(NOT MODULES)
    set(MODULES "disabled" CACHE STRING "Module build mode: disabled, static, dynamic, or default." FORCE)
  endif()

  set_property(CACHE MODULES PROPERTY STRINGS disabled static dynamic default)

  list(FIND MODULE_LINKAGE_VALUES "${MODULES}" MODULES_VALUE_INDEX)
  if(MODULES_VALUE_INDEX EQUAL -1)
    message(FATAL_ERROR "Unknown MODULES value \"${MODULES}\". Expected one of: disabled, static, dynamic, default.")
  endif()

  GetModuleSourceList(MODULES_MODULE_LIST)
  set(MODULES_MODULE_LIST ${MODULES_MODULE_LIST} PARENT_SCOPE)

  if(MODULES STREQUAL "dynamic")
    set(MODULES_DEFAULT_LINKAGE "dynamic")
  elseif(MODULES STREQUAL "static")
    set(MODULES_DEFAULT_LINKAGE "static")
  else()
    set(MODULES_DEFAULT_LINKAGE "disabled")
  endif()
  set(MODULES_DEFAULT_LINKAGE "${MODULES_DEFAULT_LINKAGE}" PARENT_SCOPE)

  foreach(SOURCE_MODULE ${MODULES_MODULE_LIST})
    ModuleNameToVariable("${SOURCE_MODULE}" MODULE_VARIABLE)

    if(NOT DEFINED ${MODULE_VARIABLE})
      set(${MODULE_VARIABLE} "default" CACHE STRING "Build mode for module ${SOURCE_MODULE}: disabled, static, dynamic, or default.")
    endif()

    set_property(CACHE ${MODULE_VARIABLE} PROPERTY STRINGS disabled static dynamic default)

    list(FIND MODULE_LINKAGE_VALUES "${${MODULE_VARIABLE}}" MODULE_VALUE_INDEX)
    if(MODULE_VALUE_INDEX EQUAL -1)
      message(FATAL_ERROR "Unknown ${MODULE_VARIABLE} value \"${${MODULE_VARIABLE}}\" for module ${SOURCE_MODULE}. Expected one of: disabled, static, dynamic, default.")
    endif()
  endforeach()

  GetModuleConfigList(TW_MODULE_CONFIG_LIST)
  set(TW_MODULE_CONFIG_LIST ${TW_MODULE_CONFIG_LIST} PARENT_SCOPE)

  IsDynamicLinkingModulesRequired(MODULES_DYNAMIC_LINKING_REQUIRED)
  set(MODULES_DYNAMIC_LINKING_REQUIRED ${MODULES_DYNAMIC_LINKING_REQUIRED} PARENT_SCOPE)
endfunction()
