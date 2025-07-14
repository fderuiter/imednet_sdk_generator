
#include "RecordRevision.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_RecordRevision_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_RecordRevision_recordRevisionId_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordRevisionId", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordRevisionId());








}


void test_RecordRevision_recordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordId());








}


void test_RecordRevision_recordOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "recordOid", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRecordOid().c_str());






}


void test_RecordRevision_recordRevision_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordRevision", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordRevision());








}


void test_RecordRevision_dataRevision_is_assigned_from_json()
{
    bourne::json input =
    {
        "dataRevision", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDataRevision());








}


void test_RecordRevision_recordStatus_is_assigned_from_json()
{


    bourne::json input =
    {
        "recordStatus", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRecordStatus().c_str());






}


void test_RecordRevision_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_RecordRevision_subjectOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectOid", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectOid().c_str());






}


void test_RecordRevision_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_RecordRevision_siteId_is_assigned_from_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSiteId());








}


void test_RecordRevision_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_RecordRevision_intervalId_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalId());








}


void test_RecordRevision_role_is_assigned_from_json()
{


    bourne::json input =
    {
        "role", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRole().c_str());






}


void test_RecordRevision_user_is_assigned_from_json()
{


    bourne::json input =
    {
        "user", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUser().c_str());






}


void test_RecordRevision_reasonForChange_is_assigned_from_json()
{


    bourne::json input =
    {
        "reasonForChange", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getReasonForChange().c_str());






}


void test_RecordRevision_deleted_is_assigned_from_json()
{




    bourne::json input =
    {
        "deleted", true
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT(true == obj.isDeleted());




}


void test_RecordRevision_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    RecordRevision obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}



void test_RecordRevision_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_RecordRevision_recordRevisionId_is_converted_to_json()
{
    bourne::json input =
    {
        "recordRevisionId", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordRevisionId"] == output["recordRevisionId"]);




}


void test_RecordRevision_recordId_is_converted_to_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordId"] == output["recordId"]);




}


void test_RecordRevision_recordOid_is_converted_to_json()
{

    bourne::json input =
    {
        "recordOid", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordOid"] == output["recordOid"]);



}


void test_RecordRevision_recordRevision_is_converted_to_json()
{
    bourne::json input =
    {
        "recordRevision", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordRevision"] == output["recordRevision"]);




}


void test_RecordRevision_dataRevision_is_converted_to_json()
{
    bourne::json input =
    {
        "dataRevision", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dataRevision"] == output["dataRevision"]);




}


void test_RecordRevision_recordStatus_is_converted_to_json()
{

    bourne::json input =
    {
        "recordStatus", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordStatus"] == output["recordStatus"]);



}


void test_RecordRevision_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_RecordRevision_subjectOid_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectOid", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectOid"] == output["subjectOid"]);



}


void test_RecordRevision_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_RecordRevision_siteId_is_converted_to_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteId"] == output["siteId"]);




}


void test_RecordRevision_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_RecordRevision_intervalId_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalId"] == output["intervalId"]);




}


void test_RecordRevision_role_is_converted_to_json()
{

    bourne::json input =
    {
        "role", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["role"] == output["role"]);



}


void test_RecordRevision_user_is_converted_to_json()
{

    bourne::json input =
    {
        "user", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["user"] == output["user"]);



}


void test_RecordRevision_reasonForChange_is_converted_to_json()
{

    bourne::json input =
    {
        "reasonForChange", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["reasonForChange"] == output["reasonForChange"]);



}


void test_RecordRevision_deleted_is_converted_to_json()
{


    bourne::json input =
    {
        "deleted", true
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["deleted"] == output["deleted"]);


}


void test_RecordRevision_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    RecordRevision obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


