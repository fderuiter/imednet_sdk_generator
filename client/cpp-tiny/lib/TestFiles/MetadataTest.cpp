
#include "Metadata.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Metadata_status_is_assigned_from_json()
{


    bourne::json input =
    {
        "status", "hello"
    };

    Metadata obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStatus().c_str());






}


void test_Metadata_method_is_assigned_from_json()
{


    bourne::json input =
    {
        "method", "hello"
    };

    Metadata obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMethod().c_str());






}


void test_Metadata_path_is_assigned_from_json()
{


    bourne::json input =
    {
        "path", "hello"
    };

    Metadata obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPath().c_str());






}


void test_Metadata_timestamp_is_assigned_from_json()
{








}




void test_Metadata_status_is_converted_to_json()
{

    bourne::json input =
    {
        "status", "hello"
    };

    Metadata obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["status"] == output["status"]);



}


void test_Metadata_method_is_converted_to_json()
{

    bourne::json input =
    {
        "method", "hello"
    };

    Metadata obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["method"] == output["method"]);



}


void test_Metadata_path_is_converted_to_json()
{

    bourne::json input =
    {
        "path", "hello"
    };

    Metadata obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["path"] == output["path"]);



}


void test_Metadata_timestamp_is_converted_to_json()
{




}



