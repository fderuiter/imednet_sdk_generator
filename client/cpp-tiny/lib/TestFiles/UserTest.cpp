
#include "User.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_User_userId_is_assigned_from_json()
{


    bourne::json input =
    {
        "userId", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUserId().c_str());






}


void test_User_login_is_assigned_from_json()
{


    bourne::json input =
    {
        "login", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLogin().c_str());






}


void test_User_firstName_is_assigned_from_json()
{


    bourne::json input =
    {
        "firstName", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFirstName().c_str());






}


void test_User_lastName_is_assigned_from_json()
{


    bourne::json input =
    {
        "lastName", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLastName().c_str());






}


void test_User_email_is_assigned_from_json()
{


    bourne::json input =
    {
        "email", "hello"
    };

    User obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEmail().c_str());






}


void test_User_userActiveInStudy_is_assigned_from_json()
{




    bourne::json input =
    {
        "userActiveInStudy", true
    };

    User obj(input.dump());

    TEST_ASSERT(true == obj.isUserActiveInStudy());




}




void test_User_userId_is_converted_to_json()
{

    bourne::json input =
    {
        "userId", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["userId"] == output["userId"]);



}


void test_User_login_is_converted_to_json()
{

    bourne::json input =
    {
        "login", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["login"] == output["login"]);



}


void test_User_firstName_is_converted_to_json()
{

    bourne::json input =
    {
        "firstName", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["firstName"] == output["firstName"]);



}


void test_User_lastName_is_converted_to_json()
{

    bourne::json input =
    {
        "lastName", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lastName"] == output["lastName"]);



}


void test_User_email_is_converted_to_json()
{

    bourne::json input =
    {
        "email", "hello"
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["email"] == output["email"]);



}


void test_User_userActiveInStudy_is_converted_to_json()
{


    bourne::json input =
    {
        "userActiveInStudy", true
    };

    User obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["userActiveInStudy"] == output["userActiveInStudy"]);


}



