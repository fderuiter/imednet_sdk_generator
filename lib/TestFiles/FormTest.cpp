
#include "Form.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Form_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Form_formId_is_assigned_from_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFormId());








}


void test_Form_formKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "formKey", "hello"
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormKey().c_str());






}


void test_Form_formName_is_assigned_from_json()
{


    bourne::json input =
    {
        "formName", "hello"
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormName().c_str());






}


void test_Form_formType_is_assigned_from_json()
{


    bourne::json input =
    {
        "formType", "hello"
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFormType().c_str());






}


void test_Form_revision_is_assigned_from_json()
{
    bourne::json input =
    {
        "revision", 1
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRevision());








}


void test_Form_embeddedLog_is_assigned_from_json()
{




    bourne::json input =
    {
        "embeddedLog", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isEmbeddedLog());




}


void test_Form_enforceOwnership_is_assigned_from_json()
{




    bourne::json input =
    {
        "enforceOwnership", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isEnforceOwnership());




}


void test_Form_userAgreement_is_assigned_from_json()
{




    bourne::json input =
    {
        "userAgreement", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isUserAgreement());




}


void test_Form_subjectRecordReport_is_assigned_from_json()
{




    bourne::json input =
    {
        "subjectRecordReport", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isSubjectRecordReport());




}


void test_Form_unscheduledVisit_is_assigned_from_json()
{




    bourne::json input =
    {
        "unscheduledVisit", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isUnscheduledVisit());




}


void test_Form_otherForms_is_assigned_from_json()
{




    bourne::json input =
    {
        "otherForms", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isOtherForms());




}


void test_Form_eproForm_is_assigned_from_json()
{




    bourne::json input =
    {
        "eproForm", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isEproForm());




}


void test_Form_allowCopy_is_assigned_from_json()
{




    bourne::json input =
    {
        "allowCopy", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isAllowCopy());




}


void test_Form_disabled_is_assigned_from_json()
{




    bourne::json input =
    {
        "disabled", true
    };

    Form obj(input.dump());

    TEST_ASSERT(true == obj.isDisabled());




}


void test_Form_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Form_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Form obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}



void test_Form_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Form_formId_is_converted_to_json()
{
    bourne::json input =
    {
        "formId", 1
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formId"] == output["formId"]);




}


void test_Form_formKey_is_converted_to_json()
{

    bourne::json input =
    {
        "formKey", "hello"
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formKey"] == output["formKey"]);



}


void test_Form_formName_is_converted_to_json()
{

    bourne::json input =
    {
        "formName", "hello"
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formName"] == output["formName"]);



}


void test_Form_formType_is_converted_to_json()
{

    bourne::json input =
    {
        "formType", "hello"
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["formType"] == output["formType"]);



}


void test_Form_revision_is_converted_to_json()
{
    bourne::json input =
    {
        "revision", 1
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["revision"] == output["revision"]);




}


void test_Form_embeddedLog_is_converted_to_json()
{


    bourne::json input =
    {
        "embeddedLog", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["embeddedLog"] == output["embeddedLog"]);


}


void test_Form_enforceOwnership_is_converted_to_json()
{


    bourne::json input =
    {
        "enforceOwnership", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["enforceOwnership"] == output["enforceOwnership"]);


}


void test_Form_userAgreement_is_converted_to_json()
{


    bourne::json input =
    {
        "userAgreement", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["userAgreement"] == output["userAgreement"]);


}


void test_Form_subjectRecordReport_is_converted_to_json()
{


    bourne::json input =
    {
        "subjectRecordReport", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["subjectRecordReport"] == output["subjectRecordReport"]);


}


void test_Form_unscheduledVisit_is_converted_to_json()
{


    bourne::json input =
    {
        "unscheduledVisit", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["unscheduledVisit"] == output["unscheduledVisit"]);


}


void test_Form_otherForms_is_converted_to_json()
{


    bourne::json input =
    {
        "otherForms", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["otherForms"] == output["otherForms"]);


}


void test_Form_eproForm_is_converted_to_json()
{


    bourne::json input =
    {
        "eproForm", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["eproForm"] == output["eproForm"]);


}


void test_Form_allowCopy_is_converted_to_json()
{


    bourne::json input =
    {
        "allowCopy", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["allowCopy"] == output["allowCopy"]);


}


void test_Form_disabled_is_converted_to_json()
{


    bourne::json input =
    {
        "disabled", true
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["disabled"] == output["disabled"]);


}


void test_Form_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Form_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Form obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


