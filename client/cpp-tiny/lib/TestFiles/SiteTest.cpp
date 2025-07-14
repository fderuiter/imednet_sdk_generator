
#include "Site.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Site_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Site obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Site_siteId_is_assigned_from_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Site obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSiteId());








}


void test_Site_siteName_is_assigned_from_json()
{


    bourne::json input =
    {
        "siteName", "hello"
    };

    Site obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSiteName().c_str());






}


void test_Site_siteEnrollmentStatus_is_assigned_from_json()
{


    bourne::json input =
    {
        "siteEnrollmentStatus", "hello"
    };

    Site obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSiteEnrollmentStatus().c_str());






}


void test_Site_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Site obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Site_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Site obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}



void test_Site_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Site obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Site_siteId_is_converted_to_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Site obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteId"] == output["siteId"]);




}


void test_Site_siteName_is_converted_to_json()
{

    bourne::json input =
    {
        "siteName", "hello"
    };

    Site obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteName"] == output["siteName"]);



}


void test_Site_siteEnrollmentStatus_is_converted_to_json()
{

    bourne::json input =
    {
        "siteEnrollmentStatus", "hello"
    };

    Site obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteEnrollmentStatus"] == output["siteEnrollmentStatus"]);



}


void test_Site_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Site obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Site_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Site obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


