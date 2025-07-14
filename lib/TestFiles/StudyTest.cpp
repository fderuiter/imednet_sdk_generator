
#include "Study.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Study_sponsorKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "sponsorKey", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSponsorKey().c_str());






}


void test_Study_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Study_studyId_is_assigned_from_json()
{
    bourne::json input =
    {
        "studyId", 1
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getStudyId());








}


void test_Study_studyName_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyName", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyName().c_str());






}


void test_Study_studyDescription_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyDescription", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyDescription().c_str());






}


void test_Study_studyType_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyType", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyType().c_str());






}


void test_Study_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Study_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Study obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}



void test_Study_sponsorKey_is_converted_to_json()
{

    bourne::json input =
    {
        "sponsorKey", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["sponsorKey"] == output["sponsorKey"]);



}


void test_Study_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Study_studyId_is_converted_to_json()
{
    bourne::json input =
    {
        "studyId", 1
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyId"] == output["studyId"]);




}


void test_Study_studyName_is_converted_to_json()
{

    bourne::json input =
    {
        "studyName", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyName"] == output["studyName"]);



}


void test_Study_studyDescription_is_converted_to_json()
{

    bourne::json input =
    {
        "studyDescription", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyDescription"] == output["studyDescription"]);



}


void test_Study_studyType_is_converted_to_json()
{

    bourne::json input =
    {
        "studyType", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyType"] == output["studyType"]);



}


void test_Study_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Study_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Study obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


