#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "User.h"

using namespace std;
using namespace Tizen::ArtikCloud;

User::User()
{
	//__init();
}

User::~User()
{
	//__cleanup();
}

void
User::__init()
{
	//userId = std::string();
	//login = std::string();
	//firstName = std::string();
	//lastName = std::string();
	//email = std::string();
	//userActiveInStudy = bool(false);
	//new std::list()std::list> roles;
}

void
User::__cleanup()
{
	//if(userId != NULL) {
	//
	//delete userId;
	//userId = NULL;
	//}
	//if(login != NULL) {
	//
	//delete login;
	//login = NULL;
	//}
	//if(firstName != NULL) {
	//
	//delete firstName;
	//firstName = NULL;
	//}
	//if(lastName != NULL) {
	//
	//delete lastName;
	//lastName = NULL;
	//}
	//if(email != NULL) {
	//
	//delete email;
	//email = NULL;
	//}
	//if(userActiveInStudy != NULL) {
	//
	//delete userActiveInStudy;
	//userActiveInStudy = NULL;
	//}
	//if(roles != NULL) {
	//roles.RemoveAll(true);
	//delete roles;
	//roles = NULL;
	//}
	//
}

void
User::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *userIdKey = "userId";
	node = json_object_get_member(pJsonObject, userIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&userId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *loginKey = "login";
	node = json_object_get_member(pJsonObject, loginKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&login, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *firstNameKey = "firstName";
	node = json_object_get_member(pJsonObject, firstNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&firstName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lastNameKey = "lastName";
	node = json_object_get_member(pJsonObject, lastNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lastName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *emailKey = "email";
	node = json_object_get_member(pJsonObject, emailKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&email, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *userActiveInStudyKey = "userActiveInStudy";
	node = json_object_get_member(pJsonObject, userActiveInStudyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&userActiveInStudy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *rolesKey = "roles";
	node = json_object_get_member(pJsonObject, rolesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Role> new_list;
			Role inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Role")) {
					jsonToValue(&inst, temp_json, "Role", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			roles = new_list;
		}
		
	}
}

User::User(char* json)
{
	this->fromJson(json);
}

char*
User::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getUserId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *userIdKey = "userId";
	json_object_set_member(pJsonObject, userIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLogin();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *loginKey = "login";
	json_object_set_member(pJsonObject, loginKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFirstName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *firstNameKey = "firstName";
	json_object_set_member(pJsonObject, firstNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lastNameKey = "lastName";
	json_object_set_member(pJsonObject, lastNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEmail();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *emailKey = "email";
	json_object_set_member(pJsonObject, emailKey, node);
	if (isprimitive("bool")) {
		bool obj = getUserActiveInStudy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *userActiveInStudyKey = "userActiveInStudy";
	json_object_set_member(pJsonObject, userActiveInStudyKey, node);
	if (isprimitive("Role")) {
		list<Role> new_list = static_cast<list <Role> > (getRoles());
		node = converttoJson(&new_list, "Role", "array");
	} else {
		node = json_node_alloc();
		list<Role> new_list = static_cast<list <Role> > (getRoles());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Role>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Role obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *rolesKey = "roles";
	json_object_set_member(pJsonObject, rolesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
User::getUserId()
{
	return userId;
}

void
User::setUserId(std::string  userId)
{
	this->userId = userId;
}

std::string
User::getLogin()
{
	return login;
}

void
User::setLogin(std::string  login)
{
	this->login = login;
}

std::string
User::getFirstName()
{
	return firstName;
}

void
User::setFirstName(std::string  firstName)
{
	this->firstName = firstName;
}

std::string
User::getLastName()
{
	return lastName;
}

void
User::setLastName(std::string  lastName)
{
	this->lastName = lastName;
}

std::string
User::getEmail()
{
	return email;
}

void
User::setEmail(std::string  email)
{
	this->email = email;
}

bool
User::getUserActiveInStudy()
{
	return userActiveInStudy;
}

void
User::setUserActiveInStudy(bool  userActiveInStudy)
{
	this->userActiveInStudy = userActiveInStudy;
}

std::list<Role>
User::getRoles()
{
	return roles;
}

void
User::setRoles(std::list <Role> roles)
{
	this->roles = roles;
}


