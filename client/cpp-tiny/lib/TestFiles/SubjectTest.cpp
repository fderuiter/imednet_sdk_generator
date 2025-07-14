
#include "Subject.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Subject_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Subject_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_Subject_subjectOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectOid().c_str());






}


void test_Subject_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_Subject_subjectStatus_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectStatus", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectStatus().c_str());






}


void test_Subject_siteId_is_assigned_from_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSiteId());








}


void test_Subject_siteName_is_assigned_from_json()
{


    bourne::json input =
    {
        "siteName", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSiteName().c_str());






}


void test_Subject_deleted_is_assigned_from_json()
{




    bourne::json input =
    {
        "deleted", true
    };

    Subject obj(input.dump());

    TEST_ASSERT(true == obj.isDeleted());




}


void test_Subject_enrollmentStartDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "enrollmentStartDate", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEnrollmentStartDate().c_str());






}


void test_Subject_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Subject_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Subject obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}




void test_Subject_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Subject_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_Subject_subjectOid_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectOid"] == output["subjectOid"]);



}


void test_Subject_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_Subject_subjectStatus_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectStatus", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectStatus"] == output["subjectStatus"]);



}


void test_Subject_siteId_is_converted_to_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteId"] == output["siteId"]);




}


void test_Subject_siteName_is_converted_to_json()
{

    bourne::json input =
    {
        "siteName", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteName"] == output["siteName"]);



}


void test_Subject_deleted_is_converted_to_json()
{


    bourne::json input =
    {
        "deleted", true
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["deleted"] == output["deleted"]);


}


void test_Subject_enrollmentStartDate_is_converted_to_json()
{

    bourne::json input =
    {
        "enrollmentStartDate", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["enrollmentStartDate"] == output["enrollmentStartDate"]);



}


void test_Subject_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Subject_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Subject obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}



