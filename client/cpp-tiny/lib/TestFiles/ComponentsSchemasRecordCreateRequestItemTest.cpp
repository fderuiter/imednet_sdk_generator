
#include "Components_schemas_RecordCreateRequest_item.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Components_schemas_RecordCreateRequest_item_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_Components_schemas_RecordCreateRequest_item_formId_is_assigned_from_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFormId());








}


void test_Components_schemas_RecordCreateRequest_item_siteName_is_assigned_from_json()
{


    bourne::json input =
    {
        "siteName", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSiteName().c_str());






}


void test_Components_schemas_RecordCreateRequest_item_siteId_is_assigned_from_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSiteId());








}


void test_Components_schemas_RecordCreateRequest_item_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_Components_schemas_RecordCreateRequest_item_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_Components_schemas_RecordCreateRequest_item_subjectOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectOid().c_str());






}


void test_Components_schemas_RecordCreateRequest_item_intervalName_is_assigned_from_json()
{


    bourne::json input =
    {
        "intervalName", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIntervalName().c_str());






}


void test_Components_schemas_RecordCreateRequest_item_intervalId_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalId());








}


void test_Components_schemas_RecordCreateRequest_item_recordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordId());








}


void test_Components_schemas_RecordCreateRequest_item_recordOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "recordOid", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRecordOid().c_str());






}




void test_Components_schemas_RecordCreateRequest_item_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_Components_schemas_RecordCreateRequest_item_formId_is_converted_to_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formId"] == output["formId"]);




}


void test_Components_schemas_RecordCreateRequest_item_siteName_is_converted_to_json()
{

    bourne::json input =
    {
        "siteName", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteName"] == output["siteName"]);



}


void test_Components_schemas_RecordCreateRequest_item_siteId_is_converted_to_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteId"] == output["siteId"]);




}


void test_Components_schemas_RecordCreateRequest_item_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_Components_schemas_RecordCreateRequest_item_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_Components_schemas_RecordCreateRequest_item_subjectOid_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectOid", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectOid"] == output["subjectOid"]);



}


void test_Components_schemas_RecordCreateRequest_item_intervalName_is_converted_to_json()
{

    bourne::json input =
    {
        "intervalName", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalName"] == output["intervalName"]);



}


void test_Components_schemas_RecordCreateRequest_item_intervalId_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalId"] == output["intervalId"]);




}


void test_Components_schemas_RecordCreateRequest_item_recordId_is_converted_to_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordId"] == output["recordId"]);




}


void test_Components_schemas_RecordCreateRequest_item_recordOid_is_converted_to_json()
{

    bourne::json input =
    {
        "recordOid", "hello"
    };

    Components_schemas_RecordCreateRequest_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordOid"] == output["recordOid"]);



}



