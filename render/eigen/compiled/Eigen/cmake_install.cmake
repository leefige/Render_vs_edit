# Install script for directory: E:/setup/develop/eigen/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "E:/setup/develop/eigen/Eigen/Cholesky"
    "E:/setup/develop/eigen/Eigen/CholmodSupport"
    "E:/setup/develop/eigen/Eigen/Core"
    "E:/setup/develop/eigen/Eigen/Dense"
    "E:/setup/develop/eigen/Eigen/Eigen"
    "E:/setup/develop/eigen/Eigen/Eigenvalues"
    "E:/setup/develop/eigen/Eigen/Geometry"
    "E:/setup/develop/eigen/Eigen/Householder"
    "E:/setup/develop/eigen/Eigen/IterativeLinearSolvers"
    "E:/setup/develop/eigen/Eigen/Jacobi"
    "E:/setup/develop/eigen/Eigen/LU"
    "E:/setup/develop/eigen/Eigen/MetisSupport"
    "E:/setup/develop/eigen/Eigen/OrderingMethods"
    "E:/setup/develop/eigen/Eigen/PaStiXSupport"
    "E:/setup/develop/eigen/Eigen/PardisoSupport"
    "E:/setup/develop/eigen/Eigen/QR"
    "E:/setup/develop/eigen/Eigen/QtAlignedMalloc"
    "E:/setup/develop/eigen/Eigen/SPQRSupport"
    "E:/setup/develop/eigen/Eigen/SVD"
    "E:/setup/develop/eigen/Eigen/Sparse"
    "E:/setup/develop/eigen/Eigen/SparseCholesky"
    "E:/setup/develop/eigen/Eigen/SparseCore"
    "E:/setup/develop/eigen/Eigen/SparseLU"
    "E:/setup/develop/eigen/Eigen/SparseQR"
    "E:/setup/develop/eigen/Eigen/StdDeque"
    "E:/setup/develop/eigen/Eigen/StdList"
    "E:/setup/develop/eigen/Eigen/StdVector"
    "E:/setup/develop/eigen/Eigen/SuperLUSupport"
    "E:/setup/develop/eigen/Eigen/UmfPackSupport"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "E:/setup/develop/eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

