#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Subject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Subject::Subject()
{
	//__init();
}

Subject::~Subject()
{
	//__cleanup();
}

void
Subject::__init()
{
	//studyKey = std::string();
	//subjectId = int(0);
	//subjectOid = std::string();
	//subjectKey = std::string();
	//subjectStatus = std::string();
	//siteId = int(0);
	//siteName = std::string();
	//deleted = bool(false);
	//enrollmentStartDate = std::string();
	//dateCreated = std::string();
	//dateModified = std::string();
	//new std::list()std::list> keywords;
}

void
Subject::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
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
	//if(subjectStatus != NULL) {
	//
	//delete subjectStatus;
	//subjectStatus = NULL;
	//}
	//if(siteId != NULL) {
	//
	//delete siteId;
	//siteId = NULL;
	//}
	//if(siteName != NULL) {
	//
	//delete siteName;
	//siteName = NULL;
	//}
	//if(deleted != NULL) {
	//
	//delete deleted;
	//deleted = NULL;
	//}
	//if(enrollmentStartDate != NULL) {
	//
	//delete enrollmentStartDate;
	//enrollmentStartDate = NULL;
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
	//if(keywords != NULL) {
	//keywords.RemoveAll(true);
	//delete keywords;
	//keywords = NULL;
	//}
	//
}

void
Subject::fromJson(char* jsonStr)
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
	const gchar *subjectStatusKey = "subjectStatus";
	node = json_object_get_member(pJsonObject, subjectStatusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subjectStatus, node, "std::string", "");
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
	const gchar *siteNameKey = "siteName";
	node = json_object_get_member(pJsonObject, siteNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&siteName, node, "std::string", "");
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
	const gchar *enrollmentStartDateKey = "enrollmentStartDate";
	node = json_object_get_member(pJsonObject, enrollmentStartDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&enrollmentStartDate, node, "std::string", "");
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
}

Subject::Subject(char* json)
{
	this->fromJson(json);
}

char*
Subject::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getSubjectStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectStatusKey = "subjectStatus";
	json_object_set_member(pJsonObject, subjectStatusKey, node);
	if (isprimitive("int")) {
		int obj = getSiteId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *siteIdKey = "siteId";
	json_object_set_member(pJsonObject, siteIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSiteName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *siteNameKey = "siteName";
	json_object_set_member(pJsonObject, siteNameKey, node);
	if (isprimitive("bool")) {
		bool obj = getDeleted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *deletedKey = "deleted";
	json_object_set_member(pJsonObject, deletedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEnrollmentStartDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *enrollmentStartDateKey = "enrollmentStartDate";
	json_object_set_member(pJsonObject, enrollmentStartDateKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Subject::getStudyKey()
{
	return studyKey;
}

void
Subject::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Subject::getSubjectId()
{
	return subjectId;
}

void
Subject::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Subject::getSubjectOid()
{
	return subjectOid;
}

void
Subject::setSubjectOid(std::string  subjectOid)
{
	this->subjectOid = subjectOid;
}

std::string
Subject::getSubjectKey()
{
	return subjectKey;
}

void
Subject::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

std::string
Subject::getSubjectStatus()
{
	return subjectStatus;
}

void
Subject::setSubjectStatus(std::string  subjectStatus)
{
	this->subjectStatus = subjectStatus;
}

int
Subject::getSiteId()
{
	return siteId;
}

void
Subject::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

std::string
Subject::getSiteName()
{
	return siteName;
}

void
Subject::setSiteName(std::string  siteName)
{
	this->siteName = siteName;
}

bool
Subject::getDeleted()
{
	return deleted;
}

void
Subject::setDeleted(bool  deleted)
{
	this->deleted = deleted;
}

std::string
Subject::getEnrollmentStartDate()
{
	return enrollmentStartDate;
}

void
Subject::setEnrollmentStartDate(std::string  enrollmentStartDate)
{
	this->enrollmentStartDate = enrollmentStartDate;
}

std::string
Subject::getDateCreated()
{
	return dateCreated;
}

void
Subject::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Subject::getDateModified()
{
	return dateModified;
}

void
Subject::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}

std::list<Keyword>
Subject::getKeywords()
{
	return keywords;
}

void
Subject::setKeywords(std::list <Keyword> keywords)
{
	this->keywords = keywords;
}


