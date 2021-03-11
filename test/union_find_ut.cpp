#include "gtest/gtest.h"

#include "union_find.hpp"

// Test.
TEST( union_find, do_find ) {

    auto uf = union_find(7);

    // graph construction
    uf.do_union( 1, 2 );
    uf.do_union( 3, 4 );
    uf.do_union( 1, 0 );
    uf.do_union( 1, 3 );

    EXPECT_TRUE( uf.do_find(0, 3) );
}
