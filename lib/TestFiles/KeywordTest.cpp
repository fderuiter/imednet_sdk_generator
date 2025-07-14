
#include "Keyword.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Keyword_keywordName_is_assigned_from_json()
{


    bourne::json input =
    {
        "keywordName", "hello"
    };

    Keyword obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getKeywordName().c_str());






}


void test_Keyword_keywordKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "keywordKey", "hello"
    };

    Keyword obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getKeywordKey().c_str());






}


void test_Keyword_keywordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "keywordId", 1
    };

    Keyword obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getKeywordId());








}


void test_Keyword_dateAdded_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateAdded", "hello"
    };

    Keyword obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateAdded().c_str());






}



void test_Keyword_keywordName_is_converted_to_json()
{

    bourne::json input =
    {
        "keywordName", "hello"
    };

    Keyword obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["keywordName"] == output["keywordName"]);



}


void test_Keyword_keywordKey_is_converted_to_json()
{

    bourne::json input =
    {
        "keywordKey", "hello"
    };

    Keyword obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["keywordKey"] == output["keywordKey"]);



}


void test_Keyword_keywordId_is_converted_to_json()
{
    bourne::json input =
    {
        "keywordId", 1
    };

    Keyword obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["keywordId"] == output["keywordId"]);




}


void test_Keyword_dateAdded_is_converted_to_json()
{

    bourne::json input =
    {
        "dateAdded", "hello"
    };

    Keyword obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateAdded"] == output["dateAdded"]);



}


