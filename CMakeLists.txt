PROJECT( ufalgo )
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.0)

# build shared library
#FIND_PACKAGE(Threads REQUIRED)

# Gtest installation
SET( GTEST_HOME "/home/j4nusx/other/googletest-release-1.10.0" )
SET( GTEST_HEADERS

    ${GTEST_HOME}/googletest/include
)
SET( GTEST_LIBS

    ${GTEST_HOME}/lib/libgtest.a
    ${GTEST_HOME}/lib/libgtest_main.a
)

INCLUDE_DIRECTORIES(
    includes

    ${GTEST_HEADERS}/include
)

SET( SOURCE_PATH src )

SET( TESTING_SOURCE_PATH test )

SET( CMAKE_CXX_FLAGS "-g -pedantic-errors -Wall -std=c++11" )

SET( CPP
    ${SOURCE_PATH}/main.cpp
    ${SOURCE_PATH}/union_find.cpp
)


ADD_EXECUTABLE(
    ${PROJECT_NAME}
    ${HPP}
    ${CPP}
)

TARGET_LINK_LIBRARIES(
    ${PROJECT_NAME}
)

# build tests
INCLUDE( test.cmake )
