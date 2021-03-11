PROJECT( ufalgo )
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.0)

IF( NOT CMAKE_BUILD_TYPE )
    SET( CMAKE_BUILD_TYPE DEBUG )
ENDIF()

# Gtest installation
SET( GTEST_HOME "/home/j4nusx/other/googletest-release-1.10.0" )
SET( GTEST_HEADERS

    ${GTEST_HOME}/googletest/include
)
SET( GTEST_LIBS

    ${GTEST_HOME}/lib/libgtest.a
    ${GTEST_HOME}/lib/libgtest_main.a
)

ENABLE_TESTING()

INCLUDE_DIRECTORIES(
    includes

    ${GTEST_HEADERS}/include
)

SET( SOURCE_PATH src )

SET( TESTING_SOURCE_PATH test )
SET( CMAKE_CXX_STANDARD 11 )
SET( CMAKE_CXX_STANDARD_REQUIRED ON )
SET( CMAKE_CXX_EXTENSIONS OFF )
SET( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors -Wall" )
SET( CMAKE_CXX_FLAGS_DEBUG "-ggdb" )
SET( CMAKE_CXX_FLAGS_RELEASE "-O1" )

SET( CPP
    ${SOURCE_PATH}/main.cpp
    ${SOURCE_PATH}/union_find.cpp
)


ADD_EXECUTABLE(
    ${PROJECT_NAME}
    ${CPP}
)

TARGET_LINK_LIBRARIES(
    ${PROJECT_NAME}
)

# build tests
INCLUDE( test.cmake )
