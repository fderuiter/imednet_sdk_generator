#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Keyword.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Keyword::Keyword()
{
	//__init();
}

Keyword::~Keyword()
{
	//__cleanup();
}

void
Keyword::__init()
{
	//keywordName = std::string();
	//keywordKey = std::string();
	//keywordId = int(0);
	//dateAdded = std::string();
}

void
Keyword::__cleanup()
{
	//if(keywordName != NULL) {
	//
	//delete keywordName;
	//keywordName = NULL;
	//}
	//if(keywordKey != NULL) {
	//
	//delete keywordKey;
	//keywordKey = NULL;
	//}
	//if(keywordId != NULL) {
	//
	//delete keywordId;
	//keywordId = NULL;
	//}
	//if(dateAdded != NULL) {
	//
	//delete dateAdded;
	//dateAdded = NULL;
	//}
	//
}

void
Keyword::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *keywordNameKey = "keywordName";
	node = json_object_get_member(pJsonObject, keywordNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&keywordName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *keywordKeyKey = "keywordKey";
	node = json_object_get_member(pJsonObject, keywordKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&keywordKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *keywordIdKey = "keywordId";
	node = json_object_get_member(pJsonObject, keywordIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&keywordId, node, "int", "");
		} else {
			
		}
	}
	const gchar *dateAddedKey = "dateAdded";
	node = json_object_get_member(pJsonObject, dateAddedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateAdded, node, "std::string", "");
		} else {
			
		}
	}
}

Keyword::Keyword(char* json)
{
	this->fromJson(json);
}

char*
Keyword::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getKeywordName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *keywordNameKey = "keywordName";
	json_object_set_member(pJsonObject, keywordNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getKeywordKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *keywordKeyKey = "keywordKey";
	json_object_set_member(pJsonObject, keywordKeyKey, node);
	if (isprimitive("int")) {
		int obj = getKeywordId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *keywordIdKey = "keywordId";
	json_object_set_member(pJsonObject, keywordIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateAdded();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateAddedKey = "dateAdded";
	json_object_set_member(pJsonObject, dateAddedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Keyword::getKeywordName()
{
	return keywordName;
}

void
Keyword::setKeywordName(std::string  keywordName)
{
	this->keywordName = keywordName;
}

std::string
Keyword::getKeywordKey()
{
	return keywordKey;
}

void
Keyword::setKeywordKey(std::string  keywordKey)
{
	this->keywordKey = keywordKey;
}

int
Keyword::getKeywordId()
{
	return keywordId;
}

void
Keyword::setKeywordId(int  keywordId)
{
	this->keywordId = keywordId;
}

std::string
Keyword::getDateAdded()
{
	return dateAdded;
}

void
Keyword::setDateAdded(std::string  dateAdded)
{
	this->dateAdded = dateAdded;
}


