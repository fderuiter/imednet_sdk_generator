
#include "Pagination.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_Pagination_currentPage_is_assigned_from_json()
{
    bourne::json input =
    {
        "currentPage", 1
    };

    Pagination obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCurrentPage());








}


void test_Pagination_size_is_assigned_from_json()
{
    bourne::json input =
    {
        "size", 1
    };

    Pagination obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSize());








}


void test_Pagination_totalPages_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalPages", 1
    };

    Pagination obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalPages());








}


void test_Pagination_totalElements_is_assigned_from_json()
{
    bourne::json input =
    {
        "totalElements", 1
    };

    Pagination obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTotalElements());








}




void test_Pagination_currentPage_is_converted_to_json()
{
    bourne::json input =
    {
        "currentPage", 1
    };

    Pagination obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["currentPage"] == output["currentPage"]);




}


void test_Pagination_size_is_converted_to_json()
{
    bourne::json input =
    {
        "size", 1
    };

    Pagination obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["size"] == output["size"]);




}


void test_Pagination_totalPages_is_converted_to_json()
{
    bourne::json input =
    {
        "totalPages", 1
    };

    Pagination obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalPages"] == output["totalPages"]);




}


void test_Pagination_totalElements_is_converted_to_json()
{
    bourne::json input =
    {
        "totalElements", 1
    };

    Pagination obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["totalElements"] == output["totalElements"]);




}



