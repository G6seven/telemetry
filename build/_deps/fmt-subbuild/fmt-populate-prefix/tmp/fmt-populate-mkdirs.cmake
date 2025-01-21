# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-src")
  file(MAKE_DIRECTORY "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-src")
endif()
file(MAKE_DIRECTORY
  "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-build"
  "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix"
  "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix/tmp"
  "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
  "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix/src"
  "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/g6seven/Documents/dev/telemetry/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
