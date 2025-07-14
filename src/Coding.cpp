#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Coding.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Coding::Coding()
{
	//__init();
}

Coding::~Coding()
{
	//__cleanup();
}

void
Coding::__init()
{
	//studyKey = std::string();
	//siteName = std::string();
	//siteId = int(0);
	//subjectId = int(0);
	//subjectKey = std::string();
	//formId = int(0);
	//formName = std::string();
	//formKey = std::string();
	//revision = int(0);
	//recordId = int(0);
	//variable = std::string();
	//value = std::string();
	//codingId = int(0);
	//code = std::string();
	//codedBy = std::string();
	//reason = std::string();
	//dictionaryName = std::string();
	//dictionaryVersion = std::string();
	//dateCoded = std::string();
}

void
Coding::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
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
	//if(subjectId != NULL) {
	//
	//delete subjectId;
	//subjectId = NULL;
	//}
	//if(subjectKey != NULL) {
	//
	//delete subjectKey;
	//subjectKey = NULL;
	//}
	//if(formId != NULL) {
	//
	//delete formId;
	//formId = NULL;
	//}
	//if(formName != NULL) {
	//
	//delete formName;
	//formName = NULL;
	//}
	//if(formKey != NULL) {
	//
	//delete formKey;
	//formKey = NULL;
	//}
	//if(revision != NULL) {
	//
	//delete revision;
	//revision = NULL;
	//}
	//if(recordId != NULL) {
	//
	//delete recordId;
	//recordId = NULL;
	//}
	//if(variable != NULL) {
	//
	//delete variable;
	//variable = NULL;
	//}
	//if(value != NULL) {
	//
	//delete value;
	//value = NULL;
	//}
	//if(codingId != NULL) {
	//
	//delete codingId;
	//codingId = NULL;
	//}
	//if(code != NULL) {
	//
	//delete code;
	//code = NULL;
	//}
	//if(codedBy != NULL) {
	//
	//delete codedBy;
	//codedBy = NULL;
	//}
	//if(reason != NULL) {
	//
	//delete reason;
	//reason = NULL;
	//}
	//if(dictionaryName != NULL) {
	//
	//delete dictionaryName;
	//dictionaryName = NULL;
	//}
	//if(dictionaryVersion != NULL) {
	//
	//delete dictionaryVersion;
	//dictionaryVersion = NULL;
	//}
	//if(dateCoded != NULL) {
	//
	//delete dateCoded;
	//dateCoded = NULL;
	//}
	//
}

void
Coding::fromJson(char* jsonStr)
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
	const gchar *subjectIdKey = "subjectId";
	node = json_object_get_member(pJsonObject, subjectIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&subjectId, node, "int", "");
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
	const gchar *formIdKey = "formId";
	node = json_object_get_member(pJsonObject, formIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&formId, node, "int", "");
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
	const gchar *formKeyKey = "formKey";
	node = json_object_get_member(pJsonObject, formKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&formKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *revisionKey = "revision";
	node = json_object_get_member(pJsonObject, revisionKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&revision, node, "int", "");
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
	const gchar *variableKey = "variable";
	node = json_object_get_member(pJsonObject, variableKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variable, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *valueKey = "value";
	node = json_object_get_member(pJsonObject, valueKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&value, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *codingIdKey = "codingId";
	node = json_object_get_member(pJsonObject, codingIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&codingId, node, "int", "");
		} else {
			
		}
	}
	const gchar *codeKey = "code";
	node = json_object_get_member(pJsonObject, codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *codedByKey = "codedBy";
	node = json_object_get_member(pJsonObject, codedByKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&codedBy, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *reasonKey = "reason";
	node = json_object_get_member(pJsonObject, reasonKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&reason, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dictionaryNameKey = "dictionaryName";
	node = json_object_get_member(pJsonObject, dictionaryNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dictionaryName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dictionaryVersionKey = "dictionaryVersion";
	node = json_object_get_member(pJsonObject, dictionaryVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dictionaryVersion, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dateCodedKey = "dateCoded";
	node = json_object_get_member(pJsonObject, dateCodedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateCoded, node, "std::string", "");
		} else {
			
		}
	}
}

Coding::Coding(char* json)
{
	this->fromJson(json);
}

char*
Coding::toJson()
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
	if (isprimitive("int")) {
		int obj = getSubjectId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *subjectIdKey = "subjectId";
	json_object_set_member(pJsonObject, subjectIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubjectKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectKeyKey = "subjectKey";
	json_object_set_member(pJsonObject, subjectKeyKey, node);
	if (isprimitive("int")) {
		int obj = getFormId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *formIdKey = "formId";
	json_object_set_member(pJsonObject, formIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formNameKey = "formName";
	json_object_set_member(pJsonObject, formNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formKeyKey = "formKey";
	json_object_set_member(pJsonObject, formKeyKey, node);
	if (isprimitive("int")) {
		int obj = getRevision();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *revisionKey = "revision";
	json_object_set_member(pJsonObject, revisionKey, node);
	if (isprimitive("int")) {
		int obj = getRecordId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *recordIdKey = "recordId";
	json_object_set_member(pJsonObject, recordIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariable();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableKey = "variable";
	json_object_set_member(pJsonObject, variableKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getValue();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *valueKey = "value";
	json_object_set_member(pJsonObject, valueKey, node);
	if (isprimitive("int")) {
		int obj = getCodingId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *codingIdKey = "codingId";
	json_object_set_member(pJsonObject, codingIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codeKey = "code";
	json_object_set_member(pJsonObject, codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCodedBy();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codedByKey = "codedBy";
	json_object_set_member(pJsonObject, codedByKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getReason();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *reasonKey = "reason";
	json_object_set_member(pJsonObject, reasonKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDictionaryName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dictionaryNameKey = "dictionaryName";
	json_object_set_member(pJsonObject, dictionaryNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDictionaryVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dictionaryVersionKey = "dictionaryVersion";
	json_object_set_member(pJsonObject, dictionaryVersionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateCoded();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateCodedKey = "dateCoded";
	json_object_set_member(pJsonObject, dateCodedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Coding::getStudyKey()
{
	return studyKey;
}

void
Coding::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

std::string
Coding::getSiteName()
{
	return siteName;
}

void
Coding::setSiteName(std::string  siteName)
{
	this->siteName = siteName;
}

int
Coding::getSiteId()
{
	return siteId;
}

void
Coding::setSiteId(int  siteId)
{
	this->siteId = siteId;
}

int
Coding::getSubjectId()
{
	return subjectId;
}

void
Coding::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Coding::getSubjectKey()
{
	return subjectKey;
}

void
Coding::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

int
Coding::getFormId()
{
	return formId;
}

void
Coding::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Coding::getFormName()
{
	return formName;
}

void
Coding::setFormName(std::string  formName)
{
	this->formName = formName;
}

std::string
Coding::getFormKey()
{
	return formKey;
}

void
Coding::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

int
Coding::getRevision()
{
	return revision;
}

void
Coding::setRevision(int  revision)
{
	this->revision = revision;
}

int
Coding::getRecordId()
{
	return recordId;
}

void
Coding::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
Coding::getVariable()
{
	return variable;
}

void
Coding::setVariable(std::string  variable)
{
	this->variable = variable;
}

std::string
Coding::getValue()
{
	return value;
}

void
Coding::setValue(std::string  value)
{
	this->value = value;
}

int
Coding::getCodingId()
{
	return codingId;
}

void
Coding::setCodingId(int  codingId)
{
	this->codingId = codingId;
}

std::string
Coding::getCode()
{
	return code;
}

void
Coding::setCode(std::string  code)
{
	this->code = code;
}

std::string
Coding::getCodedBy()
{
	return codedBy;
}

void
Coding::setCodedBy(std::string  codedBy)
{
	this->codedBy = codedBy;
}

std::string
Coding::getReason()
{
	return reason;
}

void
Coding::setReason(std::string  reason)
{
	this->reason = reason;
}

std::string
Coding::getDictionaryName()
{
	return dictionaryName;
}

void
Coding::setDictionaryName(std::string  dictionaryName)
{
	this->dictionaryName = dictionaryName;
}

std::string
Coding::getDictionaryVersion()
{
	return dictionaryVersion;
}

void
Coding::setDictionaryVersion(std::string  dictionaryVersion)
{
	this->dictionaryVersion = dictionaryVersion;
}

std::string
Coding::getDateCoded()
{
	return dateCoded;
}

void
Coding::setDateCoded(std::string  dateCoded)
{
	this->dateCoded = dateCoded;
}


