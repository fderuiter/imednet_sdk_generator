#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RecordRevision.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RecordRevision::RecordRevision()
{
	//__init();
}

RecordRevision::~RecordRevision()
{
	//__cleanup();
}

void
RecordRevision::__init()
{
	//studyKey = std::string();
	//recordRevisionId = int(0);
	//recordId = int(0);
	//recordOid = std::string();
	//recordRevision = int(0);
	//dataRevision = int(0);
	//recordStatus = std::string();
	//subjectId = int(0);
	//subjectOid = std::string();
	//subjectKey = std::string();
	//siteId = int(0);
	//formKey = std::string();
	//intervalId = int(0);
	//role = std::string();
	//user = std::string();
	//reasonForChange = std::string();
	//deleted = bool(false);
	//dateCreated = std::string();
}

void
RecordRevision::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(recordRevisionId != NULL) {
	//
	//delete recordRevisionId;
	//recordRevisionId = NULL;
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
	//if(recordRevision != NULL) {
	//
	//delete recordRevision;
	//recordRevision = NULL;
	//}
	//if(dataRevision != NULL) {
	//
	//delete dataRevision;
	//dataRevision = NULL;
	//}
	//if(recordStatus != NULL) {
	//
	//delete recordStatus;
	//recordStatus = NULL;
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
	//if(siteId != NULL) {
	//
	//delete siteId;
	//siteId = NULL;
	//}
	//if(formKey != NULL) {
	//
	//delete formKey;
	//formKey = NULL;
	//}
	//if(intervalId != NULL) {
	//
	//delete intervalId;
	//intervalId = NULL;
	//}
	//if(role != NULL) {
	//
	//delete role;
	//role = NULL;
	//}
	//if(user != NULL) {
	//
	//delete user;
	//user = NULL;
	//}
	//if(reasonForChange != NULL) {
	//
	//delete reasonForChange;
	//reasonForChange = NULL;
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
	//
}

void
RecordRevision::fromJson(char* jsonStr)
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
	const gchar *recordRevisionIdKey = "recordRevisionId";
	node = json_object_get_member(pJsonObject, recordRevisionIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&recordRevisionId, node, "int", "");
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
	const gchar *recordRevisionKey = "recordRevision";
	node = json_object_get_member(pJsonObject, recordRevisionKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&recordRevision, node, "int", "");
		} else {
			
		}
	}
	const gchar *dataRevisionKey = "dataRevision";
	node = json_object_get_member(pJsonObject, dataRevisionKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&dataRevision, node, "int", "");
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
	const gchar *siteIdKey = "siteId";
	node = json_object_get_member(pJsonObject, siteIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&siteId, node, "int", "");
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
	const gchar *intervalIdKey = "intervalId";
	node = json_object_get_member(pJsonObject, intervalIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&intervalId, node, "int", "");
		} else {
			
		}
	}
	const gchar *roleKey = "role";
	node = json_object_get_member(pJsonObject, roleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&role, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *userKey = "user";
	node = json_object_get_member(pJsonObject, userKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&user, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *reasonForChangeKey = "reasonForChange";
	node = json_object_get_member(pJsonObject, reasonForChangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&reasonForChange, node, "std::string", "");
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
}

RecordRevision::RecordRevision(char* json)
{
	this->fromJson(json);
}

char*
RecordRevision::toJson()
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
		int obj = getRecordRevisionId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *recordRevisionIdKey = "recordRevisionId";
	json_object_set_member(pJsonObject, recordRevisionIdKey, node);
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
	if (isprimitive("int")) {
		int obj = getRecordRevision();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *recordRevisionKey = "recordRevision";
	json_object_set_member(pJsonObject, recordRevisionKey, node);
	if (isprimitive("int")) {
		int obj = getDataRevision();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *dataRevisionKey = "dataRevision";
	json_object_set_member(pJsonObject, dataRevisionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecordStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recordStatusKey = "recordStatus";
	json_object_set_member(pJsonObject, recordStatusKey, node);
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
		int obj = getSiteId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *siteIdKey = "siteId";
	json_object_set_member(pJsonObject, siteIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formKeyKey = "formKey";
	json_object_set_member(pJsonObject, formKeyKey, node);
	if (isprimitive("int")) {
		int obj = getIntervalId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalIdKey = "intervalId";
	json_object_set_member(pJsonObject, intervalIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRole();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roleKey = "role";
	json_object_set_member(pJsonObject, roleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUser();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *userKey = "user";
	json_object_set_member(pJsonObject, userKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getReasonForChange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *reasonForChangeKey = "reasonForChange";
	json_object_set_member(pJsonObject, reasonForChangeKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RecordRevision::getStudyKey()
{
	return studyKey;
}

void
RecordRevision::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
RecordRevision::getRecordRevisionId()
{
	return recordRevisionId;
}

void
RecordRevision::setRecordRevisionId(int  recordRevisionId)
{
	this->recordRevisionId = recordRevisionId;
}

int
RecordRevision::getRecordId()
{
	return recordId;
}

void
RecordRevision::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
RecordRevision::getRecordOid()
{
	return recordOid;
}

void
RecordRevision::setRecordOid(std::string  recordOid)
{
	this->recordOid = recordOid;
}

int
RecordRevision::getRecordRevision()
{
	return recordRevision;
}

void
RecordRevision::setRecordRevision(int  recordRevision)
{
	this->recordRevision = recordRevision;
}

int
RecordRevision::getDataRevision()
{
	return dataRevision;
}

void
RecordRevision::setDataRevision(int  dataRevision)
{
	this->dataRevision = dataRevision;
}

std::string
RecordRevision::getRecordStatus()
{
	return recordStatus;
}

void
RecordRevision::setRecordStatus(std::string  recordStatus)
{
	this->recordStatus = recordStatus;
}

int
RecordRevision::getSubjectId()
{
	return subjectId;
}

void
RecordRevision::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
RecordRevision::getSubjectOid()
{
	return subjectOid;
}

void
RecordRevision::setSubjectOid(std::string  subjectOid)
{
	this->subjectOid = subjectOid;
}

std::string
RecordRevision::getSubjectKey()
{
	return subjectKey;
}

void
RecordRevision::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

int
RecordRevision::getSiteId()
{
	return siteId;
}

void
RecordRevision::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

std::string
RecordRevision::getFormKey()
{
	return formKey;
}

void
RecordRevision::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

int
RecordRevision::getIntervalId()
{
	return intervalId;
}

void
RecordRevision::setIntervalId(int  intervalId)
{
	this->intervalId = intervalId;
}

std::string
RecordRevision::getRole()
{
	return role;
}

void
RecordRevision::setRole(std::string  role)
{
	this->role = role;
}

std::string
RecordRevision::getUser()
{
	return user;
}

void
RecordRevision::setUser(std::string  user)
{
	this->user = user;
}

std::string
RecordRevision::getReasonForChange()
{
	return reasonForChange;
}

void
RecordRevision::setReasonForChange(std::string  reasonForChange)
{
	this->reasonForChange = reasonForChange;
}

bool
RecordRevision::getDeleted()
{
	return deleted;
}

void
RecordRevision::setDeleted(bool  deleted)
{
	this->deleted = deleted;
}

std::string
RecordRevision::getDateCreated()
{
	return dateCreated;
}

void
RecordRevision::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}


