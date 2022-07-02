#include <assert.h>
#include <cuda_runtime_api.h>
#include <stdio.h>
#include "gtest/gtest.h"

struct MyStruct
{
    ~MyStruct() = default;
    uint32_t m;
};

struct MyStructV
{
    virtual ~MyStructV() = default;
    uint32_t m;
};

TEST(Test, SizeOF)
{
    std::cout << "sizeof(MyStruct)= " << sizeof(MyStruct) << std::endl;
    std::cout << "sizeof(MyStructV)= " << sizeof(MyStructV) << std::endl;
}

int main(int argc, char** argv)
{
    ::testing::InitGoogleTest(&argc, argv);

    return RUN_ALL_TESTS();
}
