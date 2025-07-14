
#include "Variable.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Variable_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Variable_variableId_is_assigned_from_json()
{
    bourne::json input =
    {
        "variableId", 1
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVariableId());








}


void test_Variable_variableType_is_assigned_from_json()
{


    bourne::json input =
    {
        "variableType", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVariableType().c_str());






}


void test_Variable_variableName_is_assigned_from_json()
{


    bourne::json input =
    {
        "variableName", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVariableName().c_str());






}


void test_Variable_sequence_is_assigned_from_json()
{
    bourne::json input =
    {
        "sequence", 1
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSequence());








}


void test_Variable_revision_is_assigned_from_json()
{
    bourne::json input =
    {
        "revision", 1
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRevision());








}


void test_Variable_disabled_is_assigned_from_json()
{




    bourne::json input =
    {
        "disabled", true
    };

    Variable obj(input.dump());

    TEST_ASSERT(true == obj.isDisabled());




}


void test_Variable_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Variable_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}


void test_Variable_formId_is_assigned_from_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFormId());








}


void test_Variable_variableOid_is_assigned_from_json()
{


    bourne::json input =
    {
        "variableOid", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getVariableOid().c_str());






}


void test_Variable_deleted_is_assigned_from_json()
{




    bourne::json input =
    {
        "deleted", true
    };

    Variable obj(input.dump());

    TEST_ASSERT(true == obj.isDeleted());




}


void test_Variable_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_Variable_formName_is_assigned_from_json()
{


    bourne::json input =
    {
        "formName", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormName().c_str());






}


void test_Variable_label_is_assigned_from_json()
{


    bourne::json input =
    {
        "label", "hello"
    };

    Variable obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLabel().c_str());






}


void test_Variable_blinded_is_assigned_from_json()
{




    bourne::json input =
    {
        "blinded", true
    };

    Variable obj(input.dump());

    TEST_ASSERT(true == obj.isBlinded());




}



void test_Variable_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Variable_variableId_is_converted_to_json()
{
    bourne::json input =
    {
        "variableId", 1
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["variableId"] == output["variableId"]);




}


void test_Variable_variableType_is_converted_to_json()
{

    bourne::json input =
    {
        "variableType", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["variableType"] == output["variableType"]);



}


void test_Variable_variableName_is_converted_to_json()
{

    bourne::json input =
    {
        "variableName", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["variableName"] == output["variableName"]);



}


void test_Variable_sequence_is_converted_to_json()
{
    bourne::json input =
    {
        "sequence", 1
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["sequence"] == output["sequence"]);




}


void test_Variable_revision_is_converted_to_json()
{
    bourne::json input =
    {
        "revision", 1
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["revision"] == output["revision"]);




}


void test_Variable_disabled_is_converted_to_json()
{


    bourne::json input =
    {
        "disabled", true
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["disabled"] == output["disabled"]);


}


void test_Variable_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Variable_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


void test_Variable_formId_is_converted_to_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formId"] == output["formId"]);




}


void test_Variable_variableOid_is_converted_to_json()
{

    bourne::json input =
    {
        "variableOid", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["variableOid"] == output["variableOid"]);



}


void test_Variable_deleted_is_converted_to_json()
{


    bourne::json input =
    {
        "deleted", true
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["deleted"] == output["deleted"]);


}


void test_Variable_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_Variable_formName_is_converted_to_json()
{

    bourne::json input =
    {
        "formName", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formName"] == output["formName"]);



}


void test_Variable_label_is_converted_to_json()
{

    bourne::json input =
    {
        "label", "hello"
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["label"] == output["label"]);



}


void test_Variable_blinded_is_converted_to_json()
{


    bourne::json input =
    {
        "blinded", true
    };

    Variable obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["blinded"] == output["blinded"]);


}


