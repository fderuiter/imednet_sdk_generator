#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Metadata.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Metadata::Metadata()
{
	//__init();
}

Metadata::~Metadata()
{
	//__cleanup();
}

void
Metadata::__init()
{
	//status = std::string();
	//method = std::string();
	//path = std::string();
	//timestamp = null;
	//error = new Components_schemas_Metadata_error();
}

void
Metadata::__cleanup()
{
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(method != NULL) {
	//
	//delete method;
	//method = NULL;
	//}
	//if(path != NULL) {
	//
	//delete path;
	//path = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(error != NULL) {
	//
	//delete error;
	//error = NULL;
	//}
	//
}

void
Metadata::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&status, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *methodKey = "method";
	node = json_object_get_member(pJsonObject, methodKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&method, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *pathKey = "path";
	node = json_object_get_member(pJsonObject, pathKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&path, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *errorKey = "error";
	node = json_object_get_member(pJsonObject, errorKey);
	if (node !=NULL) {
	

		if (isprimitive("Components_schemas_Metadata_error")) {
			jsonToValue(&error, node, "Components_schemas_Metadata_error", "Components_schemas_Metadata_error");
		} else {
			
			Components_schemas_Metadata_error* obj = static_cast<Components_schemas_Metadata_error*> (&error);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Metadata::Metadata(char* json)
{
	this->fromJson(json);
}

char*
Metadata::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMethod();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *methodKey = "method";
	json_object_set_member(pJsonObject, methodKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPath();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pathKey = "path";
	json_object_set_member(pJsonObject, pathKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("Components_schemas_Metadata_error")) {
		Components_schemas_Metadata_error obj = getError();
		node = converttoJson(&obj, "Components_schemas_Metadata_error", "");
	}
	else {
		
		Components_schemas_Metadata_error obj = static_cast<Components_schemas_Metadata_error> (getError());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *errorKey = "error";
	json_object_set_member(pJsonObject, errorKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


