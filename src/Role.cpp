#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Role.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Role::Role()
{
	//__init();
}

Role::~Role()
{
	//__cleanup();
}

void
Role::__init()
{
	//new std::list()std::list> dateCreated;
	//new std::list()std::list> dateModified;
	//roleId = std::string();
	//communityId = int(0);
	//name = std::string();
	//description = std::string();
	//level = int(0);
	//type = std::string();
	//inactive = bool(false);
}

void
Role::__cleanup()
{
	//if(dateCreated != NULL) {
	//dateCreated.RemoveAll(true);
	//delete dateCreated;
	//dateCreated = NULL;
	//}
	//if(dateModified != NULL) {
	//dateModified.RemoveAll(true);
	//delete dateModified;
	//dateModified = NULL;
	//}
	//if(roleId != NULL) {
	//
	//delete roleId;
	//roleId = NULL;
	//}
	//if(communityId != NULL) {
	//
	//delete communityId;
	//communityId = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(level != NULL) {
	//
	//delete level;
	//level = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(inactive != NULL) {
	//
	//delete inactive;
	//inactive = NULL;
	//}
	//
}

void
Role::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *dateCreatedKey = "dateCreated";
	node = json_object_get_member(pJsonObject, dateCreatedKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<int> new_list;
			int inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("int")) {
					jsonToValue(&inst, temp_json, "int", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			dateCreated = new_list;
		}
		
	}
	const gchar *dateModifiedKey = "dateModified";
	node = json_object_get_member(pJsonObject, dateModifiedKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<int> new_list;
			int inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("int")) {
					jsonToValue(&inst, temp_json, "int", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			dateModified = new_list;
		}
		
	}
	const gchar *roleIdKey = "roleId";
	node = json_object_get_member(pJsonObject, roleIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&roleId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *communityIdKey = "communityId";
	node = json_object_get_member(pJsonObject, communityIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&communityId, node, "int", "");
		} else {
			
		}
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *levelKey = "level";
	node = json_object_get_member(pJsonObject, levelKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&level, node, "int", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *inactiveKey = "inactive";
	node = json_object_get_member(pJsonObject, inactiveKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&inactive, node, "bool", "");
		} else {
			
		}
	}
}

Role::Role(char* json)
{
	this->fromJson(json);
}

char*
Role::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		list<int> new_list = static_cast<list <int> > (getDateCreated());
		node = converttoJson(&new_list, "int", "array");
	} else {
		node = json_node_alloc();
		list<int> new_list = static_cast<list <int> > (getDateCreated());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *dateCreatedKey = "dateCreated";
	json_object_set_member(pJsonObject, dateCreatedKey, node);
	if (isprimitive("int")) {
		list<int> new_list = static_cast<list <int> > (getDateModified());
		node = converttoJson(&new_list, "int", "array");
	} else {
		node = json_node_alloc();
		list<int> new_list = static_cast<list <int> > (getDateModified());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *dateModifiedKey = "dateModified";
	json_object_set_member(pJsonObject, dateModifiedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRoleId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roleIdKey = "roleId";
	json_object_set_member(pJsonObject, roleIdKey, node);
	if (isprimitive("int")) {
		int obj = getCommunityId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *communityIdKey = "communityId";
	json_object_set_member(pJsonObject, communityIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("int")) {
		int obj = getLevel();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *levelKey = "level";
	json_object_set_member(pJsonObject, levelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("bool")) {
		bool obj = getInactive();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *inactiveKey = "inactive";
	json_object_set_member(pJsonObject, inactiveKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<int>
Role::getDateCreated()
{
	return dateCreated;
}

void
Role::setDateCreated(std::list <int> dateCreated)
{
	this->dateCreated = dateCreated;
}

std::list<int>
Role::getDateModified()
{
	return dateModified;
}

void
Role::setDateModified(std::list <int> dateModified)
{
	this->dateModified = dateModified;
}

std::string
Role::getRoleId()
{
	return roleId;
}

void
Role::setRoleId(std::string  roleId)
{
	this->roleId = roleId;
}

int
Role::getCommunityId()
{
	return communityId;
}

void
Role::setCommunityId(int  communityId)
{
	this->communityId = communityId;
}

std::string
Role::getName()
{
	return name;
}

void
Role::setName(std::string  name)
{
	this->name = name;
}

std::string
Role::getDescription()
{
	return description;
}

void
Role::setDescription(std::string  description)
{
	this->description = description;
}

int
Role::getLevel()
{
	return level;
}

void
Role::setLevel(int  level)
{
	this->level = level;
}

std::string
Role::getType()
{
	return type;
}

void
Role::setType(std::string  type)
{
	this->type = type;
}

bool
Role::getInactive()
{
	return inactive;
}

void
Role::setInactive(bool  inactive)
{
	this->inactive = inactive;
}


