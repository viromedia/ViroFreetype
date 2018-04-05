#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "freetype" for configuration "MinSizeRel"
set_property(TARGET freetype APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(freetype PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_MINSIZEREL "/usr/lib/libz.dylib;/usr/lib/libbz2.dylib;/usr/local/lib/libpng.dylib;/usr/lib/libz.dylib;/usr/local/Cellar/harfbuzz/1.7.6/lib/libharfbuzz.dylib;/usr/local/lib/libharfbuzz-icu.dylib"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/libfreetype.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS freetype )
list(APPEND _IMPORT_CHECK_FILES_FOR_freetype "${_IMPORT_PREFIX}/lib/libfreetype.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
