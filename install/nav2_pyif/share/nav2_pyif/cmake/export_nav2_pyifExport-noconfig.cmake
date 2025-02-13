#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nav2_pyif::nav2_pyif" for configuration ""
set_property(TARGET nav2_pyif::nav2_pyif APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(nav2_pyif::nav2_pyif PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libnav2_pyif.so"
  IMPORTED_SONAME_NOCONFIG "libnav2_pyif.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS nav2_pyif::nav2_pyif )
list(APPEND _IMPORT_CHECK_FILES_FOR_nav2_pyif::nav2_pyif "${_IMPORT_PREFIX}/lib/libnav2_pyif.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
