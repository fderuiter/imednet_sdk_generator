
#include "Coding.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Coding_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Coding_siteName_is_assigned_from_json()
{


    bourne::json input =
    {
        "siteName", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSiteName().c_str());






}


void test_Coding_siteId_is_assigned_from_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSiteId());








}


void test_Coding_subjectId_is_assigned_from_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSubjectId());








}


void test_Coding_subjectKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSubjectKey().c_str());






}


void test_Coding_formId_is_assigned_from_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFormId());








}


void test_Coding_formName_is_assigned_from_json()
{


    bourne::json input =
    {
        "formName", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormName().c_str());






}


void test_Coding_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_Coding_revision_is_assigned_from_json()
{
    bourne::json input =
    {
        "revision", 1
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRevision());








}


void test_Coding_recordId_is_assigned_from_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRecordId());








}


void test_Coding_variable_is_assigned_from_json()
{


    bourne::json input =
    {
        "variable", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVariable().c_str());






}


void test_Coding_value_is_assigned_from_json()
{


    bourne::json input =
    {
        "value", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getValue().c_str());






}


void test_Coding_codingId_is_assigned_from_json()
{
    bourne::json input =
    {
        "codingId", 1
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCodingId());








}


void test_Coding_code_is_assigned_from_json()
{


    bourne::json input =
    {
        "code", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCode().c_str());






}


void test_Coding_codedBy_is_assigned_from_json()
{


    bourne::json input =
    {
        "codedBy", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCodedBy().c_str());






}


void test_Coding_reason_is_assigned_from_json()
{


    bourne::json input =
    {
        "reason", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getReason().c_str());






}


void test_Coding_dictionaryName_is_assigned_from_json()
{


    bourne::json input =
    {
        "dictionaryName", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDictionaryName().c_str());






}


void test_Coding_dictionaryVersion_is_assigned_from_json()
{


    bourne::json input =
    {
        "dictionaryVersion", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDictionaryVersion().c_str());






}


void test_Coding_dateCoded_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCoded", "hello"
    };

    Coding obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCoded().c_str());






}



void test_Coding_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Coding_siteName_is_converted_to_json()
{

    bourne::json input =
    {
        "siteName", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteName"] == output["siteName"]);



}


void test_Coding_siteId_is_converted_to_json()
{
    bourne::json input =
    {
        "siteId", 1
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["siteId"] == output["siteId"]);




}


void test_Coding_subjectId_is_converted_to_json()
{
    bourne::json input =
    {
        "subjectId", 1
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectId"] == output["subjectId"]);




}


void test_Coding_subjectKey_is_converted_to_json()
{

    bourne::json input =
    {
        "subjectKey", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectKey"] == output["subjectKey"]);



}


void test_Coding_formId_is_converted_to_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formId"] == output["formId"]);




}


void test_Coding_formName_is_converted_to_json()
{

    bourne::json input =
    {
        "formName", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formName"] == output["formName"]);



}


void test_Coding_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_Coding_revision_is_converted_to_json()
{
    bourne::json input =
    {
        "revision", 1
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["revision"] == output["revision"]);




}


void test_Coding_recordId_is_converted_to_json()
{
    bourne::json input =
    {
        "recordId", 1
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["recordId"] == output["recordId"]);




}


void test_Coding_variable_is_converted_to_json()
{

    bourne::json input =
    {
        "variable", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["variable"] == output["variable"]);



}


void test_Coding_value_is_converted_to_json()
{

    bourne::json input =
    {
        "value", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["value"] == output["value"]);



}


void test_Coding_codingId_is_converted_to_json()
{
    bourne::json input =
    {
        "codingId", 1
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["codingId"] == output["codingId"]);




}


void test_Coding_code_is_converted_to_json()
{

    bourne::json input =
    {
        "code", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["code"] == output["code"]);



}


void test_Coding_codedBy_is_converted_to_json()
{

    bourne::json input =
    {
        "codedBy", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["codedBy"] == output["codedBy"]);



}


void test_Coding_reason_is_converted_to_json()
{

    bourne::json input =
    {
        "reason", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["reason"] == output["reason"]);



}


void test_Coding_dictionaryName_is_converted_to_json()
{

    bourne::json input =
    {
        "dictionaryName", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dictionaryName"] == output["dictionaryName"]);



}


void test_Coding_dictionaryVersion_is_converted_to_json()
{

    bourne::json input =
    {
        "dictionaryVersion", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dictionaryVersion"] == output["dictionaryVersion"]);



}


void test_Coding_dateCoded_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCoded", "hello"
    };

    Coding obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCoded"] == output["dateCoded"]);



}


