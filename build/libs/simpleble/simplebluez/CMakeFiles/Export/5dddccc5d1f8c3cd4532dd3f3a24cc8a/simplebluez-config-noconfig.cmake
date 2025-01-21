#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "simplebluez::simplebluez" for configuration ""
set_property(TARGET simplebluez::simplebluez APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(simplebluez::simplebluez PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib64/libsimplebluez.a"
  )

list(APPEND _cmake_import_check_targets simplebluez::simplebluez )
list(APPEND _cmake_import_check_files_for_simplebluez::simplebluez "${_IMPORT_PREFIX}/lib64/libsimplebluez.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
