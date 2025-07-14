
#include "Components_schemas_Interval_forms_item.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Components_schemas_Interval_forms_item_formId_is_assigned_from_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Components_schemas_Interval_forms_item obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFormId());








}


void test_Components_schemas_Interval_forms_item_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    Components_schemas_Interval_forms_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_Components_schemas_Interval_forms_item_formName_is_assigned_from_json()
{


    bourne::json input =
    {
        "formName", "hello"
    };

    Components_schemas_Interval_forms_item obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormName().c_str());






}



void test_Components_schemas_Interval_forms_item_formId_is_converted_to_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Components_schemas_Interval_forms_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formId"] == output["formId"]);




}


void test_Components_schemas_Interval_forms_item_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    Components_schemas_Interval_forms_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_Components_schemas_Interval_forms_item_formName_is_converted_to_json()
{

    bourne::json input =
    {
        "formName", "hello"
    };

    Components_schemas_Interval_forms_item obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formName"] == output["formName"]);



}


