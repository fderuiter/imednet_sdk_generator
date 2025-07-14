
#include "Role.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"





void test_Role_roleId_is_assigned_from_json()
{


    bourne::json input =
    {
        "roleId", "hello"
    };

    Role obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRoleId().c_str());






}


void test_Role_communityId_is_assigned_from_json()
{
    bourne::json input =
    {
        "communityId", 1
    };

    Role obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCommunityId());








}


void test_Role_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    Role obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_Role_description_is_assigned_from_json()
{


    bourne::json input =
    {
        "description", "hello"
    };

    Role obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDescription().c_str());






}


void test_Role_level_is_assigned_from_json()
{
    bourne::json input =
    {
        "level", 1
    };

    Role obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLevel());








}


void test_Role_type_is_assigned_from_json()
{


    bourne::json input =
    {
        "type", "hello"
    };

    Role obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getType().c_str());






}


void test_Role_inactive_is_assigned_from_json()
{




    bourne::json input =
    {
        "inactive", true
    };

    Role obj(input.dump());

    TEST_ASSERT(true == obj.isInactive());




}





void test_Role_roleId_is_converted_to_json()
{

    bourne::json input =
    {
        "roleId", "hello"
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["roleId"] == output["roleId"]);



}


void test_Role_communityId_is_converted_to_json()
{
    bourne::json input =
    {
        "communityId", 1
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["communityId"] == output["communityId"]);




}


void test_Role_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_Role_description_is_converted_to_json()
{

    bourne::json input =
    {
        "description", "hello"
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["description"] == output["description"]);



}


void test_Role_level_is_converted_to_json()
{
    bourne::json input =
    {
        "level", 1
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["level"] == output["level"]);




}


void test_Role_type_is_converted_to_json()
{

    bourne::json input =
    {
        "type", "hello"
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["type"] == output["type"]);



}


void test_Role_inactive_is_converted_to_json()
{


    bourne::json input =
    {
        "inactive", true
    };

    Role obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["inactive"] == output["inactive"]);


}


