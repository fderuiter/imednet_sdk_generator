#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Components_schemas_Metadata_error.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Components_schemas_Metadata_error::Components_schemas_Metadata_error()
{
	//__init();
}

Components_schemas_Metadata_error::~Components_schemas_Metadata_error()
{
	//__cleanup();
}

void
Components_schemas_Metadata_error::__init()
{
	//message = std::string();
}

void
Components_schemas_Metadata_error::__cleanup()
{
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//
}

void
Components_schemas_Metadata_error::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *messageKey = "message";
	node = json_object_get_member(pJsonObject, messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&message, node, "std::string", "");
		} else {
			
		}
	}
}

Components_schemas_Metadata_error::Components_schemas_Metadata_error(char* json)
{
	this->fromJson(json);
}

char*
Components_schemas_Metadata_error::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *messageKey = "message";
	json_object_set_member(pJsonObject, messageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


