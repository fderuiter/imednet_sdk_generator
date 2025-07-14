

#include "Components_schemas_Metadata_error.h"

using namespace Tiny;

Components_schemas_Metadata_error::Components_schemas_Metadata_error()
{
	message = std::string();
}

Components_schemas_Metadata_error::Components_schemas_Metadata_error(std::string jsonString)
{
	this->fromJson(jsonString);
}

Components_schemas_Metadata_error::~Components_schemas_Metadata_error()
{

}

void
Components_schemas_Metadata_error::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *messageKey = "message";

    if(object.has_key(messageKey))
    {
        bourne::json value = object[messageKey];



        jsonToValue(&message, value, "std::string");


    }


}

bourne::json
Components_schemas_Metadata_error::toJson()
{
    bourne::json object = bourne::json::object();





    object["message"] = getMessage();



    return object;

}

std::string
Components_schemas_Metadata_error::getMessage()
{
	return message;
}

void
Components_schemas_Metadata_error::setMessage(std::string  message)
{
	this->message = message;
}



