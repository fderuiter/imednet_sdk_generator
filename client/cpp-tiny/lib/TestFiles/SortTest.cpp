
#include "Sort.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Sort_property_is_assigned_from_json()
{


    bourne::json input =
    {
        "property", "hello"
    };

    Sort obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getProperty().c_str());






}


void test_Sort_direction_is_assigned_from_json()
{


    bourne::json input =
    {
        "direction", "hello"
    };

    Sort obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDirection().c_str());






}



void test_Sort_property_is_converted_to_json()
{

    bourne::json input =
    {
        "property", "hello"
    };

    Sort obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["property"] == output["property"]);



}


void test_Sort_direction_is_converted_to_json()
{

    bourne::json input =
    {
        "direction", "hello"
    };

    Sort obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["direction"] == output["direction"]);



}


