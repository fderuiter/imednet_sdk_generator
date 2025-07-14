#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Components_schemas_RecordCreateRequest_item.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Components_schemas_RecordCreateRequest_item::Components_schemas_RecordCreateRequest_item()
{
	//__init();
}

Components_schemas_RecordCreateRequest_item::~Components_schemas_RecordCreateRequest_item()
{
	//__cleanup();
}

void
Components_schemas_RecordCreateRequest_item::__init()
{
	//formKey = std::string();
	//formId = int(0);
	//siteName = std::string();
	//siteId = int(0);
	//subjectKey = std::string();
	//subjectId = int(0);
	//subjectOid = std::string();
	//intervalName = std::string();
	//intervalId = int(0);
	//recordId = int(0);
	//recordOid = std::string();
	//new std::map()std::map> data;
}

void
Components_schemas_RecordCreateRequest_item::__cleanup()
{
	//if(formKey != NULL) {
	//
	//delete formKey;
	//formKey = NULL;
	//}
	//if(formId != NULL) {
	//
	//delete formId;
	//formId = NULL;
	//}
	//if(siteName != NULL) {
	//
	//delete siteName;
	//siteName = NULL;
	//}
	//if(siteId != NULL) {
	//
	//delete siteId;
	//siteId = NULL;
	//}
	//if(subjectKey != NULL) {
	//
	//delete subjectKey;
	//subjectKey = NULL;
	//}
	//if(subjectId != NULL) {
	//
	//delete subjectId;
	//subjectId = NULL;
	//}
	//if(subjectOid != NULL) {
	//
	//delete subjectOid;
	//subjectOid = NULL;
	//}
	//if(intervalName != NULL) {
	//
	//delete intervalName;
	//intervalName = NULL;
	//}
	//if(intervalId != NULL) {
	//
	//delete intervalId;
	//intervalId = NULL;
	//}
	//if(recordId != NULL) {
	//
	//delete recordId;
	//recordId = NULL;
	//}
	//if(recordOid != NULL) {
	//
	//delete recordOid;
	//recordOid = NULL;
	//}
	//if(data != NULL) {
	//data.RemoveAll(true);
	//delete data;
	//data = NULL;
	//}
	//
}

void
Components_schemas_RecordCreateRequest_item::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *formKeyKey = "formKey";
	node = json_object_get_member(pJsonObject, formKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *formIdKey = "formId";
	node = json_object_get_member(pJsonObject, formIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&formId, node, "int", "");
		} else {
			
		}
	}
	const gchar *siteNameKey = "siteName";
	node = json_object_get_member(pJsonObject, siteNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&siteName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *siteIdKey = "siteId";
	node = json_object_get_member(pJsonObject, siteIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&siteId, node, "int", "");
		} else {
			
		}
	}
	const gchar *subjectKeyKey = "subjectKey";
	node = json_object_get_member(pJsonObject, subjectKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subjectKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *subjectIdKey = "subjectId";
	node = json_object_get_member(pJsonObject, subjectIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&subjectId, node, "int", "");
		} else {
			
		}
	}
	const gchar *subjectOidKey = "subjectOid";
	node = json_object_get_member(pJsonObject, subjectOidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subjectOid, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *intervalNameKey = "intervalName";
	node = json_object_get_member(pJsonObject, intervalNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&intervalName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *intervalIdKey = "intervalId";
	node = json_object_get_member(pJsonObject, intervalIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&intervalId, node, "int", "");
		} else {
			
		}
	}
	const gchar *recordIdKey = "recordId";
	node = json_object_get_member(pJsonObject, recordIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&recordId, node, "int", "");
		} else {
			
		}
	}
	const gchar *recordOidKey = "recordOid";
	node = json_object_get_member(pJsonObject, recordOidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recordOid, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonObject* json_obj = json_node_get_object(node);
			map<string,string> new_map;
			json_object_foreach_member(json_obj,helper_func,&new_map);
			data = new_map;
		}
		
	}
}

Components_schemas_RecordCreateRequest_item::Components_schemas_RecordCreateRequest_item(char* json)
{
	this->fromJson(json);
}

char*
Components_schemas_RecordCreateRequest_item::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getFormKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formKeyKey = "formKey";
	json_object_set_member(pJsonObject, formKeyKey, node);
	if (isprimitive("int")) {
		int obj = getFormId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *formIdKey = "formId";
	json_object_set_member(pJsonObject, formIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSiteName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *siteNameKey = "siteName";
	json_object_set_member(pJsonObject, siteNameKey, node);
	if (isprimitive("int")) {
		int obj = getSiteId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *siteIdKey = "siteId";
	json_object_set_member(pJsonObject, siteIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubjectKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectKeyKey = "subjectKey";
	json_object_set_member(pJsonObject, subjectKeyKey, node);
	if (isprimitive("int")) {
		int obj = getSubjectId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *subjectIdKey = "subjectId";
	json_object_set_member(pJsonObject, subjectIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubjectOid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectOidKey = "subjectOid";
	json_object_set_member(pJsonObject, subjectOidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIntervalName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *intervalNameKey = "intervalName";
	json_object_set_member(pJsonObject, intervalNameKey, node);
	if (isprimitive("int")) {
		int obj = getIntervalId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalIdKey = "intervalId";
	json_object_set_member(pJsonObject, intervalIdKey, node);
	if (isprimitive("int")) {
		int obj = getRecordId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *recordIdKey = "recordId";
	json_object_set_member(pJsonObject, recordIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecordOid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recordOidKey = "recordOid";
	json_object_set_member(pJsonObject, recordOidKey, node);


	{
		JsonObject* json_obj;
		map<string, string> new_list = static_cast<map <string, string> > (getData());
		json_obj = json_object_new();
		for (map<string, string>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			string obj = (*it).first;
			string obj2 = (*it).second;
			JsonNode* tempnode = json_from_string(obj2.c_str(),NULL);
			json_object_set_member(json_obj, obj.c_str(), tempnode);
		}
	node = json_node_alloc();
	json_node_init_object(node, json_obj);
	json_object_unref(json_obj);
	}

	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Components_schemas_RecordCreateRequest_item::getFormKey()
{
	return formKey;
}

void
Components_schemas_RecordCreateRequest_item::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

int
Components_schemas_RecordCreateRequest_item::getFormId()
{
	return formId;
}

void
Components_schemas_RecordCreateRequest_item::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Components_schemas_RecordCreateRequest_item::getSiteName()
{
	return siteName;
}

void
Components_schemas_RecordCreateRequest_item::setSiteName(std::string  siteName)
{
	this->siteName = siteName;
}

int
Components_schemas_RecordCreateRequest_item::getSiteId()
{
	return siteId;
}

void
Components_schemas_RecordCreateRequest_item::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

std::string
Components_schemas_RecordCreateRequest_item::getSubjectKey()
{
	return subjectKey;
}

void
Components_schemas_RecordCreateRequest_item::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

int
Components_schemas_RecordCreateRequest_item::getSubjectId()
{
	return subjectId;
}

void
Components_schemas_RecordCreateRequest_item::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Components_schemas_RecordCreateRequest_item::getSubjectOid()
{
	return subjectOid;
}

void
Components_schemas_RecordCreateRequest_item::setSubjectOid(std::string  subjectOid)
{
	this->subjectOid = subjectOid;
}

std::string
Components_schemas_RecordCreateRequest_item::getIntervalName()
{
	return intervalName;
}

void
Components_schemas_RecordCreateRequest_item::setIntervalName(std::string  intervalName)
{
	this->intervalName = intervalName;
}

int
Components_schemas_RecordCreateRequest_item::getIntervalId()
{
	return intervalId;
}

void
Components_schemas_RecordCreateRequest_item::setIntervalId(int  intervalId)
{
	this->intervalId = intervalId;
}

int
Components_schemas_RecordCreateRequest_item::getRecordId()
{
	return recordId;
}

void
Components_schemas_RecordCreateRequest_item::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
Components_schemas_RecordCreateRequest_item::getRecordOid()
{
	return recordOid;
}

void
Components_schemas_RecordCreateRequest_item::setRecordOid(std::string  recordOid)
{
	this->recordOid = recordOid;
}

std::map<string, string>
Components_schemas_RecordCreateRequest_item::getData()
{
	return data;
}

void
Components_schemas_RecordCreateRequest_item::setData(std::map <string, string> data)
{
	this->data = data;
}


