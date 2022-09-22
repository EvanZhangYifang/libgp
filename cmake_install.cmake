# Install script for directory: /home/embedded/exo_muscle_ws/src/libgp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gp" TYPE FILE FILES
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_factory.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_linear_ard.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_linear_one.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_matern3_iso.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_matern5_iso.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_noise.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_rq_iso.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_periodic_matern3_iso.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_periodic.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_se_ard.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_se_iso.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_sum.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cov_prod.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/gp.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/gp_utils.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/sampleset.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/rprop.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/input_dim_filter.h"
    "/home/embedded/exo_muscle_ws/src/libgp/include/cg.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/embedded/exo_muscle_ws/src/libgp/libgp.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/embedded/exo_muscle_ws/src/libgp/libgp.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/embedded/exo_muscle_ws/src/libgp/examples/cmake_install.cmake")
  include("/home/embedded/exo_muscle_ws/src/libgp/tests/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/embedded/exo_muscle_ws/src/libgp/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
