# Install script for directory: E:/setup/develop/eigen/unsupported/Eigen

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "E:/setup/develop/eigen/unsupported/Eigen/AdolcForward"
    "E:/setup/develop/eigen/unsupported/Eigen/AlignedVector3"
    "E:/setup/develop/eigen/unsupported/Eigen/ArpackSupport"
    "E:/setup/develop/eigen/unsupported/Eigen/AutoDiff"
    "E:/setup/develop/eigen/unsupported/Eigen/BVH"
    "E:/setup/develop/eigen/unsupported/Eigen/EulerAngles"
    "E:/setup/develop/eigen/unsupported/Eigen/FFT"
    "E:/setup/develop/eigen/unsupported/Eigen/IterativeSolvers"
    "E:/setup/develop/eigen/unsupported/Eigen/KroneckerProduct"
    "E:/setup/develop/eigen/unsupported/Eigen/LevenbergMarquardt"
    "E:/setup/develop/eigen/unsupported/Eigen/MatrixFunctions"
    "E:/setup/develop/eigen/unsupported/Eigen/MoreVectorization"
    "E:/setup/develop/eigen/unsupported/Eigen/MPRealSupport"
    "E:/setup/develop/eigen/unsupported/Eigen/NonLinearOptimization"
    "E:/setup/develop/eigen/unsupported/Eigen/NumericalDiff"
    "E:/setup/develop/eigen/unsupported/Eigen/OpenGLSupport"
    "E:/setup/develop/eigen/unsupported/Eigen/Polynomials"
    "E:/setup/develop/eigen/unsupported/Eigen/Skyline"
    "E:/setup/develop/eigen/unsupported/Eigen/SparseExtra"
    "E:/setup/develop/eigen/unsupported/Eigen/SpecialFunctions"
    "E:/setup/develop/eigen/unsupported/Eigen/Splines"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "E:/setup/develop/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/setup/develop/eigen/compiled/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

