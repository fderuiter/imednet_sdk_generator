

#include "Metadata.h"

using namespace Tiny;

Metadata::Metadata()
{
	status = std::string();
	method = std::string();
	path = std::string();
	timestamp = std::string();
	error = Components_schemas_Metadata_error();
}

Metadata::Metadata(std::string jsonString)
{
	this->fromJson(jsonString);
}

Metadata::~Metadata()
{

}

void
Metadata::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *statusKey = "status";

    if(object.has_key(statusKey))
    {
        bourne::json value = object[statusKey];



        jsonToValue(&status, value, "std::string");


    }

    const char *methodKey = "method";

    if(object.has_key(methodKey))
    {
        bourne::json value = object[methodKey];



        jsonToValue(&method, value, "std::string");


    }

    const char *pathKey = "path";

    if(object.has_key(pathKey))
    {
        bourne::json value = object[pathKey];



        jsonToValue(&path, value, "std::string");


    }

    const char *timestampKey = "timestamp";

    if(object.has_key(timestampKey))
    {
        bourne::json value = object[timestampKey];



        jsonToValue(&timestamp, value, "std::string");


    }

    const char *errorKey = "error";

    if(object.has_key(errorKey))
    {
        bourne::json value = object[errorKey];




        Components_schemas_Metadata_error* obj = &error;
		obj->fromJson(value.dump());

    }


}

bourne::json
Metadata::toJson()
{
    bourne::json object = bourne::json::object();





    object["status"] = getStatus();






    object["method"] = getMethod();






    object["path"] = getPath();






    object["timestamp"] = getTimestamp();







	object["error"] = getError().toJson();


    return object;

}

std::string
Metadata::getStatus()
{
	return status;
}

void
Metadata::setStatus(std::string  status)
{
	this->status = status;
}

std::string
Metadata::getMethod()
{
	return method;
}

void
Metadata::setMethod(std::string  method)
{
	this->method = method;
}

std::string
Metadata::getPath()
{
	return path;
}

void
Metadata::setPath(std::string  path)
{
	this->path = path;
}

std::string
Metadata::getTimestamp()
{
	return timestamp;
}

void
Metadata::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

Components_schemas_Metadata_error
Metadata::getError()
{
	return error;
}

void
Metadata::setError(Components_schemas_Metadata_error  error)
{
	this->error = error;
}



