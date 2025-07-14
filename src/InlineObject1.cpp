#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Inline_object_1.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Inline_object_1::Inline_object_1()
{
	//__init();
}

Inline_object_1::~Inline_object_1()
{
	//__cleanup();
}

void
Inline_object_1::__init()
{
	//metadata = new Metadata();
}

void
Inline_object_1::__cleanup()
{
	//if(metadata != NULL) {
	//
	//delete metadata;
	//metadata = NULL;
	//}
	//
}

void
Inline_object_1::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *metadataKey = "metadata";
	node = json_object_get_member(pJsonObject, metadataKey);
	if (node !=NULL) {
	

		if (isprimitive("Metadata")) {
			jsonToValue(&metadata, node, "Metadata", "Metadata");
		} else {
			
			Metadata* obj = static_cast<Metadata*> (&metadata);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Inline_object_1::Inline_object_1(char* json)
{
	this->fromJson(json);
}

char*
Inline_object_1::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Metadata")) {
		Metadata obj = getMetadata();
		node = converttoJson(&obj, "Metadata", "");
	}
	else {
		
		Metadata obj = static_cast<Metadata> (getMetadata());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *metadataKey = "metadata";
	json_object_set_member(pJsonObject, metadataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

Metadata
Inline_object_1::getMetadata()
{
	return metadata;
}

void
Inline_object_1::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}


