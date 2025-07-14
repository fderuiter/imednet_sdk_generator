#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Study.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Study::Study()
{
	//__init();
}

Study::~Study()
{
	//__cleanup();
}

void
Study::__init()
{
	//sponsorKey = std::string();
	//studyKey = std::string();
	//studyId = int(0);
	//studyName = std::string();
	//studyDescription = std::string();
	//studyType = std::string();
	//dateCreated = std::string();
	//dateModified = std::string();
}

void
Study::__cleanup()
{
	//if(sponsorKey != NULL) {
	//
	//delete sponsorKey;
	//sponsorKey = NULL;
	//}
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(studyId != NULL) {
	//
	//delete studyId;
	//studyId = NULL;
	//}
	//if(studyName != NULL) {
	//
	//delete studyName;
	//studyName = NULL;
	//}
	//if(studyDescription != NULL) {
	//
	//delete studyDescription;
	//studyDescription = NULL;
	//}
	//if(studyType != NULL) {
	//
	//delete studyType;
	//studyType = NULL;
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
Study::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *sponsorKeyKey = "sponsorKey";
	node = json_object_get_member(pJsonObject, sponsorKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sponsorKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *studyKeyKey = "studyKey";
	node = json_object_get_member(pJsonObject, studyKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *studyIdKey = "studyId";
	node = json_object_get_member(pJsonObject, studyIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&studyId, node, "int", "");
		} else {
			
		}
	}
	const gchar *studyNameKey = "studyName";
	node = json_object_get_member(pJsonObject, studyNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *studyDescriptionKey = "studyDescription";
	node = json_object_get_member(pJsonObject, studyDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyDescription, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *studyTypeKey = "studyType";
	node = json_object_get_member(pJsonObject, studyTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyType, node, "std::string", "");
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

Study::Study(char* json)
{
	this->fromJson(json);
}

char*
Study::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSponsorKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sponsorKeyKey = "sponsorKey";
	json_object_set_member(pJsonObject, sponsorKeyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStudyKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyKeyKey = "studyKey";
	json_object_set_member(pJsonObject, studyKeyKey, node);
	if (isprimitive("int")) {
		int obj = getStudyId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *studyIdKey = "studyId";
	json_object_set_member(pJsonObject, studyIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStudyName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyNameKey = "studyName";
	json_object_set_member(pJsonObject, studyNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStudyDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyDescriptionKey = "studyDescription";
	json_object_set_member(pJsonObject, studyDescriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStudyType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyTypeKey = "studyType";
	json_object_set_member(pJsonObject, studyTypeKey, node);
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
Study::getSponsorKey()
{
	return sponsorKey;
}

void
Study::setSponsorKey(std::string  sponsorKey)
{
	this->sponsorKey = sponsorKey;
}

std::string
Study::getStudyKey()
{
	return studyKey;
}

void
Study::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Study::getStudyId()
{
	return studyId;
}

void
Study::setStudyId(int  studyId)
{
	this->studyId = studyId;
}

std::string
Study::getStudyName()
{
	return studyName;
}

void
Study::setStudyName(std::string  studyName)
{
	this->studyName = studyName;
}

std::string
Study::getStudyDescription()
{
	return studyDescription;
}

void
Study::setStudyDescription(std::string  studyDescription)
{
	this->studyDescription = studyDescription;
}

std::string
Study::getStudyType()
{
	return studyType;
}

void
Study::setStudyType(std::string  studyType)
{
	this->studyType = studyType;
}

std::string
Study::getDateCreated()
{
	return dateCreated;
}

void
Study::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Study::getDateModified()
{
	return dateModified;
}

void
Study::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}


