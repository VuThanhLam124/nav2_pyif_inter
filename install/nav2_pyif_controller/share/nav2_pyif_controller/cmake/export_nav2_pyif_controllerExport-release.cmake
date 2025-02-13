#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nav2_pyif_controller::nav2_pyif_controller" for configuration "Release"
set_property(TARGET nav2_pyif_controller::nav2_pyif_controller APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nav2_pyif_controller::nav2_pyif_controller PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libnav2_pyif_controller.so"
  IMPORTED_SONAME_RELEASE "libnav2_pyif_controller.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS nav2_pyif_controller::nav2_pyif_controller )
list(APPEND _IMPORT_CHECK_FILES_FOR_nav2_pyif_controller::nav2_pyif_controller "${_IMPORT_PREFIX}/lib/libnav2_pyif_controller.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
