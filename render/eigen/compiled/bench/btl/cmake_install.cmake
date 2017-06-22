# Install script for directory: E:/setup/develop/eigen/bench/btl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Eigen3")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/eigen3/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/eigen2/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/tensors/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/BLAS/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/ublas/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/gmm/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/mtl4/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/blitz/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/tvmet/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/STL/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/libs/blaze/cmake_install.cmake")
  include("E:/setup/develop/eigen/compiled/bench/btl/data/cmake_install.cmake")

endif()

