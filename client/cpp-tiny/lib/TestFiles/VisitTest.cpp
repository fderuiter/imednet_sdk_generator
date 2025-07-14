
#include "Visit.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Visit_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Visit_visitId_is_assigned_from_json()
{
    bourne::json input =
    {
        "visitId", 1
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVisitId());








}


void test_Visit_intervalId_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalId());








}


void test_Visit_intervalName_is_assigned_from_json()
{


    bourne::json input =
    {
        "intervalName", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIntervalName().c_str());






}


void test_Visit_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_Visit_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_Visit_startDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "startDate", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStartDate().c_str());






}


void test_Visit_endDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "endDate", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEndDate().c_str());






}


void test_Visit_dueDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "dueDate", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDueDate().c_str());






}


void test_Visit_visitDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "visitDate", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVisitDate().c_str());






}


void test_Visit_visitDateForm_is_assigned_from_json()
{


    bourne::json input =
    {
        "visitDateForm", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVisitDateForm().c_str());






}


void test_Visit_visitDateQuestion_is_assigned_from_json()
{


    bourne::json input =
    {
        "visitDateQuestion", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVisitDateQuestion().c_str());






}


void test_Visit_deleted_is_assigned_from_json()
{




    bourne::json input =
    {
        "deleted", true
    };

    Visit obj(input.dump());

    TEST_ASSERT(true == obj.isDeleted());




}


void test_Visit_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Visit_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Visit obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}



void test_Visit_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Visit_visitId_is_converted_to_json()
{
    bourne::json input =
    {
        "visitId", 1
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["visitId"] == output["visitId"]);




}


void test_Visit_intervalId_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalId"] == output["intervalId"]);




}


void test_Visit_intervalName_is_converted_to_json()
{

    bourne::json input =
    {
        "intervalName", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalName"] == output["intervalName"]);



}


void test_Visit_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_Visit_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_Visit_startDate_is_converted_to_json()
{

    bourne::json input =
    {
        "startDate", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["startDate"] == output["startDate"]);



}


void test_Visit_endDate_is_converted_to_json()
{

    bourne::json input =
    {
        "endDate", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["endDate"] == output["endDate"]);



}


void test_Visit_dueDate_is_converted_to_json()
{

    bourne::json input =
    {
        "dueDate", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dueDate"] == output["dueDate"]);



}


void test_Visit_visitDate_is_converted_to_json()
{

    bourne::json input =
    {
        "visitDate", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["visitDate"] == output["visitDate"]);



}


void test_Visit_visitDateForm_is_converted_to_json()
{

    bourne::json input =
    {
        "visitDateForm", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["visitDateForm"] == output["visitDateForm"]);



}


void test_Visit_visitDateQuestion_is_converted_to_json()
{

    bourne::json input =
    {
        "visitDateQuestion", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["visitDateQuestion"] == output["visitDateQuestion"]);



}


void test_Visit_deleted_is_converted_to_json()
{


    bourne::json input =
    {
        "deleted", true
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["deleted"] == output["deleted"]);


}


void test_Visit_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Visit_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Visit obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


