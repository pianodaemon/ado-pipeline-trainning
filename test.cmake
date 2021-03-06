SET(UNION_FIND_UT_SRC

    ${SOURCE_PATH}/union_find.cpp
    ${TESTING_SOURCE_PATH}/main.cpp
    ${TESTING_SOURCE_PATH}/union_find_ut.cpp
)

SET( UNION_FIND_EXE_UT "${PROJECT_NAME}_ut" )

ADD_EXECUTABLE(
    ${UNION_FIND_EXE_UT}
    ${UNION_FIND_UT_SRC}
)

TARGET_LINK_LIBRARIES( ${UNION_FIND_EXE_UT}

    -pthread

    # Static libraries ( from this point onward )
    ${GTEST_LIBS}
)

ADD_TEST(
    NAME ${UNION_FIND_EXE_UT}
    COMMAND ${UNION_FIND_EXE_UT}
)