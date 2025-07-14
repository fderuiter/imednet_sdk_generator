
#include "Record.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Record_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Record_intervalId_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalId());








}


void test_Record_formId_is_assigned_from_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFormId());








}


void test_Record_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_Record_siteId_is_assigned_from_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSiteId());








}


void test_Record_recordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordId());








}


void test_Record_recordOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "recordOid", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRecordOid().c_str());






}


void test_Record_recordType_is_assigned_from_json()
{


    bourne::json input =
    {
        "recordType", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRecordType().c_str());






}


void test_Record_recordStatus_is_assigned_from_json()
{


    bourne::json input =
    {
        "recordStatus", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRecordStatus().c_str());






}


void test_Record_deleted_is_assigned_from_json()
{




    bourne::json input =
    {
        "deleted", true
    };

    Record obj(input.dump());

    TEST_ASSERT(true == obj.isDeleted());




}


void test_Record_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Record_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}


void test_Record_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_Record_subjectOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectOid().c_str());






}


void test_Record_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_Record_visitId_is_assigned_from_json()
{
    bourne::json input =
    {
        "visitId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVisitId());








}


void test_Record_parentRecordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "parentRecordId", 1
    };

    Record obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getParentRecordId());








}





void test_Record_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Record_intervalId_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalId"] == output["intervalId"]);




}


void test_Record_formId_is_converted_to_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formId"] == output["formId"]);




}


void test_Record_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_Record_siteId_is_converted_to_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteId"] == output["siteId"]);




}


void test_Record_recordId_is_converted_to_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordId"] == output["recordId"]);




}


void test_Record_recordOid_is_converted_to_json()
{

    bourne::json input =
    {
        "recordOid", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordOid"] == output["recordOid"]);



}


void test_Record_recordType_is_converted_to_json()
{

    bourne::json input =
    {
        "recordType", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordType"] == output["recordType"]);



}


void test_Record_recordStatus_is_converted_to_json()
{

    bourne::json input =
    {
        "recordStatus", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordStatus"] == output["recordStatus"]);



}


void test_Record_deleted_is_converted_to_json()
{


    bourne::json input =
    {
        "deleted", true
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["deleted"] == output["deleted"]);


}


void test_Record_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Record_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


void test_Record_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_Record_subjectOid_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectOid"] == output["subjectOid"]);



}


void test_Record_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_Record_visitId_is_converted_to_json()
{
    bourne::json input =
    {
        "visitId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["visitId"] == output["visitId"]);




}


void test_Record_parentRecordId_is_converted_to_json()
{
    bourne::json input =
    {
        "parentRecordId", 1
    };

    Record obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["parentRecordId"] == output["parentRecordId"]);




}




