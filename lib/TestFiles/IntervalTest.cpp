
#include "Interval.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Interval_studyKey_is_assigned_from_json()
{


    bourne::json input =
    {
        "studyKey", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getStudyKey().c_str());






}


void test_Interval_intervalId_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalId());








}


void test_Interval_intervalName_is_assigned_from_json()
{


    bourne::json input =
    {
        "intervalName", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIntervalName().c_str());






}


void test_Interval_intervalDescription_is_assigned_from_json()
{


    bourne::json input =
    {
        "intervalDescription", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIntervalDescription().c_str());






}


void test_Interval_intervalSequence_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalSequence", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalSequence());








}


void test_Interval_intervalGroupId_is_assigned_from_json()
{
    bourne::json input =
    {
        "intervalGroupId", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIntervalGroupId());








}


void test_Interval_intervalGroupName_is_assigned_from_json()
{


    bourne::json input =
    {
        "intervalGroupName", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIntervalGroupName().c_str());






}


void test_Interval_timeline_is_assigned_from_json()
{


    bourne::json input =
    {
        "timeline", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getTimeline().c_str());






}


void test_Interval_definedUsingInterval_is_assigned_from_json()
{


    bourne::json input =
    {
        "definedUsingInterval", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDefinedUsingInterval().c_str());






}


void test_Interval_windowCalculationForm_is_assigned_from_json()
{


    bourne::json input =
    {
        "windowCalculationForm", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getWindowCalculationForm().c_str());






}


void test_Interval_windowCalculationDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "windowCalculationDate", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getWindowCalculationDate().c_str());






}


void test_Interval_actualDateForm_is_assigned_from_json()
{


    bourne::json input =
    {
        "actualDateForm", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getActualDateForm().c_str());






}


void test_Interval_actualDate_is_assigned_from_json()
{


    bourne::json input =
    {
        "actualDate", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getActualDate().c_str());






}


void test_Interval_dueDateWillBeIn_is_assigned_from_json()
{
    bourne::json input =
    {
        "dueDateWillBeIn", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getDueDateWillBeIn());








}


void test_Interval_negativeSlack_is_assigned_from_json()
{
    bourne::json input =
    {
        "negativeSlack", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getNegativeSlack());








}


void test_Interval_positiveSlack_is_assigned_from_json()
{
    bourne::json input =
    {
        "positiveSlack", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPositiveSlack());








}


void test_Interval_eproGracePeriod_is_assigned_from_json()
{
    bourne::json input =
    {
        "eproGracePeriod", 1
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getEproGracePeriod());








}



void test_Interval_disabled_is_assigned_from_json()
{




    bourne::json input =
    {
        "disabled", true
    };

    Interval obj(input.dump());

    TEST_ASSERT(true == obj.isDisabled());




}


void test_Interval_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Interval_dateModified_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateModified", "hello"
    };

    Interval obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateModified().c_str());






}



void test_Interval_studyKey_is_converted_to_json()
{

    bourne::json input =
    {
        "studyKey", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["studyKey"] == output["studyKey"]);



}


void test_Interval_intervalId_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalId", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalId"] == output["intervalId"]);




}


void test_Interval_intervalName_is_converted_to_json()
{

    bourne::json input =
    {
        "intervalName", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalName"] == output["intervalName"]);



}


void test_Interval_intervalDescription_is_converted_to_json()
{

    bourne::json input =
    {
        "intervalDescription", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalDescription"] == output["intervalDescription"]);



}


void test_Interval_intervalSequence_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalSequence", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalSequence"] == output["intervalSequence"]);




}


void test_Interval_intervalGroupId_is_converted_to_json()
{
    bourne::json input =
    {
        "intervalGroupId", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalGroupId"] == output["intervalGroupId"]);




}


void test_Interval_intervalGroupName_is_converted_to_json()
{

    bourne::json input =
    {
        "intervalGroupName", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["intervalGroupName"] == output["intervalGroupName"]);



}


void test_Interval_timeline_is_converted_to_json()
{

    bourne::json input =
    {
        "timeline", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["timeline"] == output["timeline"]);



}


void test_Interval_definedUsingInterval_is_converted_to_json()
{

    bourne::json input =
    {
        "definedUsingInterval", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["definedUsingInterval"] == output["definedUsingInterval"]);



}


void test_Interval_windowCalculationForm_is_converted_to_json()
{

    bourne::json input =
    {
        "windowCalculationForm", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["windowCalculationForm"] == output["windowCalculationForm"]);



}


void test_Interval_windowCalculationDate_is_converted_to_json()
{

    bourne::json input =
    {
        "windowCalculationDate", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["windowCalculationDate"] == output["windowCalculationDate"]);



}


void test_Interval_actualDateForm_is_converted_to_json()
{

    bourne::json input =
    {
        "actualDateForm", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["actualDateForm"] == output["actualDateForm"]);



}


void test_Interval_actualDate_is_converted_to_json()
{

    bourne::json input =
    {
        "actualDate", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["actualDate"] == output["actualDate"]);



}


void test_Interval_dueDateWillBeIn_is_converted_to_json()
{
    bourne::json input =
    {
        "dueDateWillBeIn", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dueDateWillBeIn"] == output["dueDateWillBeIn"]);




}


void test_Interval_negativeSlack_is_converted_to_json()
{
    bourne::json input =
    {
        "negativeSlack", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["negativeSlack"] == output["negativeSlack"]);




}


void test_Interval_positiveSlack_is_converted_to_json()
{
    bourne::json input =
    {
        "positiveSlack", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["positiveSlack"] == output["positiveSlack"]);




}


void test_Interval_eproGracePeriod_is_converted_to_json()
{
    bourne::json input =
    {
        "eproGracePeriod", 1
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["eproGracePeriod"] == output["eproGracePeriod"]);




}



void test_Interval_disabled_is_converted_to_json()
{


    bourne::json input =
    {
        "disabled", true
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["disabled"] == output["disabled"]);


}


void test_Interval_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Interval_dateModified_is_converted_to_json()
{

    bourne::json input =
    {
        "dateModified", "hello"
    };

    Interval obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateModified"] == output["dateModified"]);



}


