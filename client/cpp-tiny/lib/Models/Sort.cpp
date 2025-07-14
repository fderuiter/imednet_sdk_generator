

#include "Sort.h"

using namespace Tiny;

Sort::Sort()
{
	property = std::string();
	direction = std::string();
}

Sort::Sort(std::string jsonString)
{
	this->fromJson(jsonString);
}

Sort::~Sort()
{

}

void
Sort::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *propertyKey = "property";

    if(object.has_key(propertyKey))
    {
        bourne::json value = object[propertyKey];



        jsonToValue(&property, value, "std::string");


    }

    const char *directionKey = "direction";

    if(object.has_key(directionKey))
    {
        bourne::json value = object[directionKey];



        jsonToValue(&direction, value, "std::string");


    }


}

bourne::json
Sort::toJson()
{
    bourne::json object = bourne::json::object();





    object["property"] = getProperty();






    object["direction"] = getDirection();



    return object;

}

std::string
Sort::getProperty()
{
	return property;
}

void
Sort::setProperty(std::string  property)
{
	this->property = property;
}

std::string
Sort::getDirection()
{
	return direction;
}

void
Sort::setDirection(std::string  direction)
{
	this->direction = direction;
}



