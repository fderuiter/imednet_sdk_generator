#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Site.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Site::Site()
{
	//__init();
}

Site::~Site()
{
	//__cleanup();
}

void
Site::__init()
{
	//studyKey = std::string();
	//siteId = int(0);
	//siteName = std::string();
	//siteEnrollmentStatus = std::string();
	//dateCreated = std::string();
	//dateModified = std::string();
}

void
Site::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
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
	//if(siteEnrollmentStatus != NULL) {
	//
	//delete siteEnrollmentStatus;
	//siteEnrollmentStatus = NULL;
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
	//
}

void
Site::fromJson(char* jsonStr)
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
	const gchar *siteEnrollmentStatusKey = "siteEnrollmentStatus";
	node = json_object_get_member(pJsonObject, siteEnrollmentStatusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&siteEnrollmentStatus, node, "std::string", "");
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
}

Site::Site(char* json)
{
	this->fromJson(json);
}

char*
Site::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getSiteEnrollmentStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *siteEnrollmentStatusKey = "siteEnrollmentStatus";
	json_object_set_member(pJsonObject, siteEnrollmentStatusKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Site::getStudyKey()
{
	return studyKey;
}

void
Site::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Site::getSiteId()
{
	return siteId;
}

void
Site::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

std::string
Site::getSiteName()
{
	return siteName;
}

void
Site::setSiteName(std::string  siteName)
{
	this->siteName = siteName;
}

std::string
Site::getSiteEnrollmentStatus()
{
	return siteEnrollmentStatus;
}

void
Site::setSiteEnrollmentStatus(std::string  siteEnrollmentStatus)
{
	this->siteEnrollmentStatus = siteEnrollmentStatus;
}

std::string
Site::getDateCreated()
{
	return dateCreated;
}

void
Site::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Site::getDateModified()
{
	return dateModified;
}

void
Site::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}


