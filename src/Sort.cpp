#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Sort.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Sort::Sort()
{
	//__init();
}

Sort::~Sort()
{
	//__cleanup();
}

void
Sort::__init()
{
	//property = std::string();
	//direction = std::string();
}

void
Sort::__cleanup()
{
	//if(property != NULL) {
	//
	//delete property;
	//property = NULL;
	//}
	//if(direction != NULL) {
	//
	//delete direction;
	//direction = NULL;
	//}
	//
}

void
Sort::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *propertyKey = "property";
	node = json_object_get_member(pJsonObject, propertyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&property, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *directionKey = "direction";
	node = json_object_get_member(pJsonObject, directionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&direction, node, "std::string", "");
		} else {
			
		}
	}
}

Sort::Sort(char* json)
{
	this->fromJson(json);
}

char*
Sort::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getProperty();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *propertyKey = "property";
	json_object_set_member(pJsonObject, propertyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDirection();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *directionKey = "direction";
	json_object_set_member(pJsonObject, directionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


