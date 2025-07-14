#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Components_schemas_Interval_forms_item.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Components_schemas_Interval_forms_item::Components_schemas_Interval_forms_item()
{
	//__init();
}

Components_schemas_Interval_forms_item::~Components_schemas_Interval_forms_item()
{
	//__cleanup();
}

void
Components_schemas_Interval_forms_item::__init()
{
	//formId = int(0);
	//formKey = std::string();
	//formName = std::string();
}

void
Components_schemas_Interval_forms_item::__cleanup()
{
	//if(formId != NULL) {
	//
	//delete formId;
	//formId = NULL;
	//}
	//if(formKey != NULL) {
	//
	//delete formKey;
	//formKey = NULL;
	//}
	//if(formName != NULL) {
	//
	//delete formName;
	//formName = NULL;
	//}
	//
}

void
Components_schemas_Interval_forms_item::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *formIdKey = "formId";
	node = json_object_get_member(pJsonObject, formIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&formId, node, "int", "");
		} else {
			
		}
	}
	const gchar *formKeyKey = "formKey";
	node = json_object_get_member(pJsonObject, formKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *formNameKey = "formName";
	node = json_object_get_member(pJsonObject, formNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formName, node, "std::string", "");
		} else {
			
		}
	}
}

Components_schemas_Interval_forms_item::Components_schemas_Interval_forms_item(char* json)
{
	this->fromJson(json);
}

char*
Components_schemas_Interval_forms_item::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getFormId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *formIdKey = "formId";
	json_object_set_member(pJsonObject, formIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formKeyKey = "formKey";
	json_object_set_member(pJsonObject, formKeyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formNameKey = "formName";
	json_object_set_member(pJsonObject, formNameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
Components_schemas_Interval_forms_item::getFormId()
{
	return formId;
}

void
Components_schemas_Interval_forms_item::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Components_schemas_Interval_forms_item::getFormKey()
{
	return formKey;
}

void
Components_schemas_Interval_forms_item::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

std::string
Components_schemas_Interval_forms_item::getFormName()
{
	return formName;
}

void
Components_schemas_Interval_forms_item::setFormName(std::string  formName)
{
	this->formName = formName;
}


