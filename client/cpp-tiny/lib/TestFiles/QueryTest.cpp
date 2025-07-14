
#include "Query.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Query_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Query_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_Query_subjectOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectOid().c_str());






}


void test_Query_annotationType_is_assigned_from_json()
{


    bourne::json input =
    {
        "annotationType", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getAnnotationType().c_str());






}


void test_Query_annotationId_is_assigned_from_json()
{
    bourne::json input =
    {
        "annotationId", 1
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getAnnotationId());








}


void test_Query_type_is_assigned_from_json()
{


    bourne::json input =
    {
        "type", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getType().c_str());






}


void test_Query_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}


void test_Query_recordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordId());








}


void test_Query_variable_is_assigned_from_json()
{


    bourne::json input =
    {
        "variable", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVariable().c_str());






}


void test_Query_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_Query_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Query_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Query obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}




void test_Query_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Query_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_Query_subjectOid_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectOid"] == output["subjectOid"]);



}


void test_Query_annotationType_is_converted_to_json()
{

    bourne::json input =
    {
        "annotationType", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["annotationType"] == output["annotationType"]);



}


void test_Query_annotationId_is_converted_to_json()
{
    bourne::json input =
    {
        "annotationId", 1
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["annotationId"] == output["annotationId"]);




}


void test_Query_type_is_converted_to_json()
{

    bourne::json input =
    {
        "type", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["type"] == output["type"]);



}


void test_Query_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}


void test_Query_recordId_is_converted_to_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordId"] == output["recordId"]);




}


void test_Query_variable_is_converted_to_json()
{

    bourne::json input =
    {
        "variable", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["variable"] == output["variable"]);



}


void test_Query_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_Query_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Query_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Query obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}



