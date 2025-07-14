
#include "Job.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Job_jobId_is_assigned_from_json()
{


    bourne::json input =
    {
        "jobId", "hello"
    };

    Job obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getJobId().c_str());






}


void test_Job_batchId_is_assigned_from_json()
{


    bourne::json input =
    {
        "batchId", "hello"
    };

    Job obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBatchId().c_str());






}


void test_Job_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    Job obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}


void test_Job_dateCreated_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Job obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateCreated().c_str());






}


void test_Job_dateStarted_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateStarted", "hello"
    };

    Job obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateStarted().c_str());






}


void test_Job_dateFinished_is_assigned_from_json()
{


    bourne::json input =
    {
        "dateFinished", "hello"
    };

    Job obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDateFinished().c_str());






}



void test_Job_jobId_is_converted_to_json()
{

    bourne::json input =
    {
        "jobId", "hello"
    };

    Job obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["jobId"] == output["jobId"]);



}


void test_Job_batchId_is_converted_to_json()
{

    bourne::json input =
    {
        "batchId", "hello"
    };

    Job obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["batchId"] == output["batchId"]);



}


void test_Job_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    Job obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


void test_Job_dateCreated_is_converted_to_json()
{

    bourne::json input =
    {
        "dateCreated", "hello"
    };

    Job obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateCreated"] == output["dateCreated"]);



}


void test_Job_dateStarted_is_converted_to_json()
{

    bourne::json input =
    {
        "dateStarted", "hello"
    };

    Job obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateStarted"] == output["dateStarted"]);



}


void test_Job_dateFinished_is_converted_to_json()
{

    bourne::json input =
    {
        "dateFinished", "hello"
    };

    Job obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["dateFinished"] == output["dateFinished"]);



}


