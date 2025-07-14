
#include "QueryComment.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_QueryComment_sequence_is_assigned_from_json()
{
    bourne::json input =
    {
        "sequence", 1
    };

    QueryComment obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSequence());








}


void test_QueryComment_annotationStatus_is_assigned_from_json()
{


    bourne::json input =
    {
        "annotationStatus", "hello"
    };

    QueryComment obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getAnnotationStatus().c_str());






}


void test_QueryComment_user_is_assigned_from_json()
{


    bourne::json input =
    {
        "user", "hello"
    };

    QueryComment obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUser().c_str());






}


void test_QueryComment_comment_is_assigned_from_json()
{


    bourne::json input =
    {
        "comment", "hello"
    };

    QueryComment obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getComment().c_str());






}


void test_QueryComment_closed_is_assigned_from_json()
{




    bourne::json input =
    {
        "closed", true
    };

    QueryComment obj(input.dump());

    TEST_ASSERT(true == obj.isClosed());




}


void test_QueryComment_date_is_assigned_from_json()
{


    bourne::json input =
    {
        "date", "hello"
    };

    QueryComment obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDate().c_str());






}



void test_QueryComment_sequence_is_converted_to_json()
{
    bourne::json input =
    {
        "sequence", 1
    };

    QueryComment obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["sequence"] == output["sequence"]);




}


void test_QueryComment_annotationStatus_is_converted_to_json()
{

    bourne::json input =
    {
        "annotationStatus", "hello"
    };

    QueryComment obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["annotationStatus"] == output["annotationStatus"]);



}


void test_QueryComment_user_is_converted_to_json()
{

    bourne::json input =
    {
        "user", "hello"
    };

    QueryComment obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["user"] == output["user"]);



}


void test_QueryComment_comment_is_converted_to_json()
{

    bourne::json input =
    {
        "comment", "hello"
    };

    QueryComment obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["comment"] == output["comment"]);



}


void test_QueryComment_closed_is_converted_to_json()
{


    bourne::json input =
    {
        "closed", true
    };

    QueryComment obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["closed"] == output["closed"]);


}


void test_QueryComment_date_is_converted_to_json()
{

    bourne::json input =
    {
        "date", "hello"
    };

    QueryComment obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["date"] == output["date"]);



}


