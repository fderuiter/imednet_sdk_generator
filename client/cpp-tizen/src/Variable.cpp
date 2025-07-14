#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Variable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Variable::Variable()
{
	//__init();
}

Variable::~Variable()
{
	//__cleanup();
}

void
Variable::__init()
{
	//studyKey = std::string();
	//variableId = int(0);
	//variableType = std::string();
	//variableName = std::string();
	//sequence = int(0);
	//revision = int(0);
	//disabled = bool(false);
	//dateCreated = std::string();
	//dateModified = std::string();
	//formId = int(0);
	//variableOid = std::string();
	//deleted = bool(false);
	//formKey = std::string();
	//formName = std::string();
	//label = std::string();
	//blinded = bool(false);
}

void
Variable::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(variableId != NULL) {
	//
	//delete variableId;
	//variableId = NULL;
	//}
	//if(variableType != NULL) {
	//
	//delete variableType;
	//variableType = NULL;
	//}
	//if(variableName != NULL) {
	//
	//delete variableName;
	//variableName = NULL;
	//}
	//if(sequence != NULL) {
	//
	//delete sequence;
	//sequence = NULL;
	//}
	//if(revision != NULL) {
	//
	//delete revision;
	//revision = NULL;
	//}
	//if(disabled != NULL) {
	//
	//delete disabled;
	//disabled = NULL;
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
	//if(formId != NULL) {
	//
	//delete formId;
	//formId = NULL;
	//}
	//if(variableOid != NULL) {
	//
	//delete variableOid;
	//variableOid = NULL;
	//}
	//if(deleted != NULL) {
	//
	//delete deleted;
	//deleted = NULL;
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
	//if(label != NULL) {
	//
	//delete label;
	//label = NULL;
	//}
	//if(blinded != NULL) {
	//
	//delete blinded;
	//blinded = NULL;
	//}
	//
}

void
Variable::fromJson(char* jsonStr)
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
	const gchar *variableIdKey = "variableId";
	node = json_object_get_member(pJsonObject, variableIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&variableId, node, "int", "");
		} else {
			
		}
	}
	const gchar *variableTypeKey = "variableType";
	node = json_object_get_member(pJsonObject, variableTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *variableNameKey = "variableName";
	node = json_object_get_member(pJsonObject, variableNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sequenceKey = "sequence";
	node = json_object_get_member(pJsonObject, sequenceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&sequence, node, "int", "");
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
	const gchar *disabledKey = "disabled";
	node = json_object_get_member(pJsonObject, disabledKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&disabled, node, "bool", "");
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
	const gchar *formIdKey = "formId";
	node = json_object_get_member(pJsonObject, formIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&formId, node, "int", "");
		} else {
			
		}
	}
	const gchar *variableOidKey = "variableOid";
	node = json_object_get_member(pJsonObject, variableOidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableOid, node, "std::string", "");
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
	const gchar *labelKey = "label";
	node = json_object_get_member(pJsonObject, labelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&label, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *blindedKey = "blinded";
	node = json_object_get_member(pJsonObject, blindedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&blinded, node, "bool", "");
		} else {
			
		}
	}
}

Variable::Variable(char* json)
{
	this->fromJson(json);
}

char*
Variable::toJson()
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
		int obj = getVariableId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *variableIdKey = "variableId";
	json_object_set_member(pJsonObject, variableIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableTypeKey = "variableType";
	json_object_set_member(pJsonObject, variableTypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableNameKey = "variableName";
	json_object_set_member(pJsonObject, variableNameKey, node);
	if (isprimitive("int")) {
		int obj = getSequence();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sequenceKey = "sequence";
	json_object_set_member(pJsonObject, sequenceKey, node);
	if (isprimitive("int")) {
		int obj = getRevision();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *revisionKey = "revision";
	json_object_set_member(pJsonObject, revisionKey, node);
	if (isprimitive("bool")) {
		bool obj = getDisabled();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *disabledKey = "disabled";
	json_object_set_member(pJsonObject, disabledKey, node);
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
		int obj = getFormId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *formIdKey = "formId";
	json_object_set_member(pJsonObject, formIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableOid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableOidKey = "variableOid";
	json_object_set_member(pJsonObject, variableOidKey, node);
	if (isprimitive("bool")) {
		bool obj = getDeleted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *deletedKey = "deleted";
	json_object_set_member(pJsonObject, deletedKey, node);
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
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("bool")) {
		bool obj = getBlinded();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *blindedKey = "blinded";
	json_object_set_member(pJsonObject, blindedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Variable::getStudyKey()
{
	return studyKey;
}

void
Variable::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Variable::getVariableId()
{
	return variableId;
}

void
Variable::setVariableId(int  variableId)
{
	this->variableId = variableId;
}

std::string
Variable::getVariableType()
{
	return variableType;
}

void
Variable::setVariableType(std::string  variableType)
{
	this->variableType = variableType;
}

std::string
Variable::getVariableName()
{
	return variableName;
}

void
Variable::setVariableName(std::string  variableName)
{
	this->variableName = variableName;
}

int
Variable::getSequence()
{
	return sequence;
}

void
Variable::setSequence(int  sequence)
{
	this->sequence = sequence;
}

int
Variable::getRevision()
{
	return revision;
}

void
Variable::setRevision(int  revision)
{
	this->revision = revision;
}

bool
Variable::getDisabled()
{
	return disabled;
}

void
Variable::setDisabled(bool  disabled)
{
	this->disabled = disabled;
}

std::string
Variable::getDateCreated()
{
	return dateCreated;
}

void
Variable::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Variable::getDateModified()
{
	return dateModified;
}

void
Variable::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}

int
Variable::getFormId()
{
	return formId;
}

void
Variable::setFormId(int  formId)
{
	this->formId = formId;
}

std::string
Variable::getVariableOid()
{
	return variableOid;
}

void
Variable::setVariableOid(std::string  variableOid)
{
	this->variableOid = variableOid;
}

bool
Variable::getDeleted()
{
	return deleted;
}

void
Variable::setDeleted(bool  deleted)
{
	this->deleted = deleted;
}

std::string
Variable::getFormKey()
{
	return formKey;
}

void
Variable::setFormKey(std::string  formKey)
{
	this->formKey = formKey;
}

std::string
Variable::getFormName()
{
	return formName;
}

void
Variable::setFormName(std::string  formName)
{
	this->formName = formName;
}

std::string
Variable::getLabel()
{
	return label;
}

void
Variable::setLabel(std::string  label)
{
	this->label = label;
}

bool
Variable::getBlinded()
{
	return blinded;
}

void
Variable::setBlinded(bool  blinded)
{
	this->blinded = blinded;
}


