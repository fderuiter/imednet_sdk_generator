
#include "RecordJobStatus.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_RecordJobStatus_jobId_is_assigned_from_json()
{


    bourne::json input =
    {
        "jobId", "hello"
    };

    RecordJobStatus obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getJobId().c_str());






}


void test_RecordJobStatus_batchId_is_assigned_from_json()
{


    bourne::json input =
    {
        "batchId", "hello"
    };

    RecordJobStatus obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBatchId().c_str());






}


void test_RecordJobStatus_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    RecordJobStatus obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}



void test_RecordJobStatus_jobId_is_converted_to_json()
{

    bourne::json input =
    {
        "jobId", "hello"
    };

    RecordJobStatus obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["jobId"] == output["jobId"]);



}


void test_RecordJobStatus_batchId_is_converted_to_json()
{

    bourne::json input =
    {
        "batchId", "hello"
    };

    RecordJobStatus obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["batchId"] == output["batchId"]);



}


void test_RecordJobStatus_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    RecordJobStatus obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


