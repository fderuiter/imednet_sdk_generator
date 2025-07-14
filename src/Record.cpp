#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Record.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Record::Record()
{
	//__init();
}

Record::~Record()
{
	//__cleanup();
}

void
Record::__init()
{
	//studyKey = std::string();
	//intervalId = int(0);
	//formId = int(0);
	//formKey = std::string();
	//siteId = int(0);
	//recordId = int(0);
	//recordOid = std::string();
	//recordType = std::string();
	//recordStatus = std::string();
	//deleted = bool(false);
	//dateCreated = std::string();
	//dateModified = std::string();
	//subjectId = int(0);
	//subjectOid = std::string();
	//subjectKey = std::string();
	//visitId = int(0);
	//parentRecordId = int(0);
	//new std::list()std::list> keywords;
	//new std::map()std::map> recordData;
}

void
Record::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(intervalId != NULL) {
	//
	//delete intervalId;
	//intervalId = NULL;
	//}
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
	//if(siteId != NULL) {
	//
	//delete siteId;
	//siteId = NULL;
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
	//if(recordType != NULL) {
	//
	//delete recordType;
	//recordType = NULL;
	//}
	//if(recordStatus != NULL) {
	//
	//delete recordStatus;
	//recordStatus = NULL;
	//}
	//if(deleted != NULL) {
	//
	//delete deleted;
	//deleted = NULL;
	//}
	//if(dateCreated != NULL) {
	//
	//delete dateCreated;
	//dateCreated = NULL;
	//}
	//if(dateModified != NULL) {
	//
	//delete dateModified;
	//dateModified = NULL;
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
	//if(subjectKey != NULL) {
	//
	//delete subjectKey;
	//subjectKey = NULL;
	//}
	//if(visitId != NULL) {
	//
	//delete visitId;
	//visitId = NULL;
	//}
	//if(parentRecordId != NULL) {
	//
	//delete parentRecordId;
	//parentRecordId = NULL;
	//}
	//if(keywords != NULL) {
	//keywords.RemoveAll(true);
	//delete keywords;
	//keywords = NULL;
	//}
	//if(recordData != NULL) {
	//recordData.RemoveAll(true);
	//delete recordData;
	//recordData = NULL;
	//}
	//
}

void
Record::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *studyKeyKey = "studyKey";
	node = json_object_get_member(pJsonObject, studyKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyKey, node, "std::string", "");
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
	const gchar *siteIdKey = "siteId";
	node = json_object_get_member(pJsonObject, siteIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&siteId, node, "int", "");
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
	const gchar *recordTypeKey = "recordType";
	node = json_object_get_member(pJsonObject, recordTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recordType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recordStatusKey = "recordStatus";
	node = json_object_get_member(pJsonObject, recordStatusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recordStatus, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *deletedKey = "deleted";
	node = json_object_get_member(pJsonObject, deletedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&deleted, node, "bool", "");
		} else {
			
		}
	}
	const gchar *dateCreatedKey = "dateCreated";
	node = json_object_get_member(pJsonObject, dateCreatedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateCreated, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dateModifiedKey = "dateModified";
	node = json_object_get_member(pJsonObject, dateModifiedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateModified, node, "std::string", "");
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
	const gchar *subjectKeyKey = "subjectKey";
	node = json_object_get_member(pJsonObject, subjectKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subjectKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *visitIdKey = "visitId";
	node = json_object_get_member(pJsonObject, visitIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&visitId, node, "int", "");
		} else {
			
		}
	}
	const gchar *parentRecordIdKey = "parentRecordId";
	node = json_object_get_member(pJsonObject, parentRecordIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&parentRecordId, node, "int", "");
		} else {
			
		}
	}
	const gchar *keywordsKey = "keywords";
	node = json_object_get_member(pJsonObject, keywordsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Keyword> new_list;
			Keyword inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Keyword")) {
					jsonToValue(&inst, temp_json, "Keyword", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			keywords = new_list;
		}
		
	}
	const gchar *recordDataKey = "recordData";
	node = json_object_get_member(pJsonObject, recordDataKey);
	if (node !=NULL) {
	
		{
			JsonObject* json_obj = json_node_get_object(node);
			map<string,string> new_map;
			json_object_foreach_member(json_obj,helper_func,&new_map);
			recordData = new_map;
		}
		
	}
}

Record::Record(char* json)
{
	this->fromJson(json);
}

char*
Record::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getStudyKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyKeyKey = "studyKey";
	json_object_set_member(pJsonObject, studyKeyKey, node);
	if (isprimitive("int")) {
		int obj = getIntervalId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalIdKey = "intervalId";
	json_object_set_member(pJsonObject, intervalIdKey, node);
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
	if (isprimitive("int")) {
		int obj = getSiteId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *siteIdKey = "siteId";
	json_object_set_member(pJsonObject, siteIdKey, node);
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
	if (isprimitive("std::string")) {
		std::string obj = getRecordType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recordTypeKey = "recordType";
	json_object_set_member(pJsonObject, recordTypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecordStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recordStatusKey = "recordStatus";
	json_object_set_member(pJsonObject, recordStatusKey, node);
	if (isprimitive("bool")) {
		bool obj = getDeleted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *deletedKey = "deleted";
	json_object_set_member(pJsonObject, deletedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateCreated();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateCreatedKey = "dateCreated";
	json_object_set_member(pJsonObject, dateCreatedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateModified();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateModifiedKey = "dateModified";
	json_object_set_member(pJsonObject, dateModifiedKey, node);
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
		std::string obj = getSubjectKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectKeyKey = "subjectKey";
	json_object_set_member(pJsonObject, subjectKeyKey, node);
	if (isprimitive("int")) {
		int obj = getVisitId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *visitIdKey = "visitId";
	json_object_set_member(pJsonObject, visitIdKey, node);
	if (isprimitive("int")) {
		int obj = getParentRecordId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *parentRecordIdKey = "parentRecordId";
	json_object_set_member(pJsonObject, parentRecordIdKey, node);
	if (isprimitive("Keyword")) {
		list<Keyword> new_list = static_cast<list <Keyword> > (getKeywords());
		node = converttoJson(&new_list, "Keyword", "array");
	} else {
		node = json_node_alloc();
		list<Keyword> new_list = static_cast<list <Keyword> > (getKeywords());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Keyword>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Keyword obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *keywordsKey = "keywords";
	json_object_set_member(pJsonObject, keywordsKey, node);


	{
		JsonObject* json_obj;
		map<string, string> new_list = static_cast<map <string, string> > (getRecordData());
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

	const gchar *recordDataKey = "recordData";
	json_object_set_member(pJsonObject, recordDataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Record::getStudyKey()
{
	return studyKey;
}

void
Record::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Record::getIntervalId()
{
	return intervalId;
}

void
Record::setIntervalId(int  intervalId)
{
	this->intervalId = intervalId;
}

int
Record::getFormId()
{
	return formId;
}

void
Record::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Record::getFormKey()
{
	return formKey;
}

void
Record::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

int
Record::getSiteId()
{
	return siteId;
}

void
Record::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

int
Record::getRecordId()
{
	return recordId;
}

void
Record::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
Record::getRecordOid()
{
	return recordOid;
}

void
Record::setRecordOid(std::string  recordOid)
{
	this->recordOid = recordOid;
}

std::string
Record::getRecordType()
{
	return recordType;
}

void
Record::setRecordType(std::string  recordType)
{
	this->recordType = recordType;
}

std::string
Record::getRecordStatus()
{
	return recordStatus;
}

void
Record::setRecordStatus(std::string  recordStatus)
{
	this->recordStatus = recordStatus;
}

bool
Record::getDeleted()
{
	return deleted;
}

void
Record::setDeleted(bool  deleted)
{
	this->deleted = deleted;
}

std::string
Record::getDateCreated()
{
	return dateCreated;
}

void
Record::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Record::getDateModified()
{
	return dateModified;
}

void
Record::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}

int
Record::getSubjectId()
{
	return subjectId;
}

void
Record::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Record::getSubjectOid()
{
	return subjectOid;
}

void
Record::setSubjectOid(std::string  subjectOid)
{
	this->subjectOid = subjectOid;
}

std::string
Record::getSubjectKey()
{
	return subjectKey;
}

void
Record::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

int
Record::getVisitId()
{
	return visitId;
}

void
Record::setVisitId(int  visitId)
{
	this->visitId = visitId;
}

int
Record::getParentRecordId()
{
	return parentRecordId;
}

void
Record::setParentRecordId(int  parentRecordId)
{
	this->parentRecordId = parentRecordId;
}

std::list<Keyword>
Record::getKeywords()
{
	return keywords;
}

void
Record::setKeywords(std::list <Keyword> keywords)
{
	this->keywords = keywords;
}

std::map<string, string>
Record::getRecordData()
{
	return recordData;
}

void
Record::setRecordData(std::map <string, string> recordData)
{
	this->recordData = recordData;
}


