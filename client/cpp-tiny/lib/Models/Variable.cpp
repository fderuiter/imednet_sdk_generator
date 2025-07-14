

#include "Variable.h"

using namespace Tiny;

Variable::Variable()
{
	studyKey = std::string();
	variableId = int(0);
	variableType = std::string();
	variableName = std::string();
	sequence = int(0);
	revision = int(0);
	disabled = bool(false);
	dateCreated = std::string();
	dateModified = std::string();
	formId = int(0);
	variableOid = std::string();
	deleted = bool(false);
	formKey = std::string();
	formName = std::string();
	label = std::string();
	blinded = bool(false);
}

Variable::Variable(std::string jsonString)
{
	this->fromJson(jsonString);
}

Variable::~Variable()
{

}

void
Variable::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *variableIdKey = "variableId";

    if(object.has_key(variableIdKey))
    {
        bourne::json value = object[variableIdKey];



        jsonToValue(&variableId, value, "int");


    }

    const char *variableTypeKey = "variableType";

    if(object.has_key(variableTypeKey))
    {
        bourne::json value = object[variableTypeKey];



        jsonToValue(&variableType, value, "std::string");


    }

    const char *variableNameKey = "variableName";

    if(object.has_key(variableNameKey))
    {
        bourne::json value = object[variableNameKey];



        jsonToValue(&variableName, value, "std::string");


    }

    const char *sequenceKey = "sequence";

    if(object.has_key(sequenceKey))
    {
        bourne::json value = object[sequenceKey];



        jsonToValue(&sequence, value, "int");


    }

    const char *revisionKey = "revision";

    if(object.has_key(revisionKey))
    {
        bourne::json value = object[revisionKey];



        jsonToValue(&revision, value, "int");


    }

    const char *disabledKey = "disabled";

    if(object.has_key(disabledKey))
    {
        bourne::json value = object[disabledKey];



        jsonToValue(&disabled, value, "bool");


    }

    const char *dateCreatedKey = "dateCreated";

    if(object.has_key(dateCreatedKey))
    {
        bourne::json value = object[dateCreatedKey];



        jsonToValue(&dateCreated, value, "std::string");


    }

    const char *dateModifiedKey = "dateModified";

    if(object.has_key(dateModifiedKey))
    {
        bourne::json value = object[dateModifiedKey];



        jsonToValue(&dateModified, value, "std::string");


    }

    const char *formIdKey = "formId";

    if(object.has_key(formIdKey))
    {
        bourne::json value = object[formIdKey];



        jsonToValue(&formId, value, "int");


    }

    const char *variableOidKey = "variableOid";

    if(object.has_key(variableOidKey))
    {
        bourne::json value = object[variableOidKey];



        jsonToValue(&variableOid, value, "std::string");


    }

    const char *deletedKey = "deleted";

    if(object.has_key(deletedKey))
    {
        bourne::json value = object[deletedKey];



        jsonToValue(&deleted, value, "bool");


    }

    const char *formKeyKey = "formKey";

    if(object.has_key(formKeyKey))
    {
        bourne::json value = object[formKeyKey];



        jsonToValue(&formKey, value, "std::string");


    }

    const char *formNameKey = "formName";

    if(object.has_key(formNameKey))
    {
        bourne::json value = object[formNameKey];



        jsonToValue(&formName, value, "std::string");


    }

    const char *labelKey = "label";

    if(object.has_key(labelKey))
    {
        bourne::json value = object[labelKey];



        jsonToValue(&label, value, "std::string");


    }

    const char *blindedKey = "blinded";

    if(object.has_key(blindedKey))
    {
        bourne::json value = object[blindedKey];



        jsonToValue(&blinded, value, "bool");


    }


}

bourne::json
Variable::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["variableId"] = getVariableId();






    object["variableType"] = getVariableType();






    object["variableName"] = getVariableName();






    object["sequence"] = getSequence();






    object["revision"] = getRevision();






    object["disabled"] = isDisabled();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();






    object["formId"] = getFormId();






    object["variableOid"] = getVariableOid();






    object["deleted"] = isDeleted();






    object["formKey"] = getFormKey();






    object["formName"] = getFormName();






    object["label"] = getLabel();






    object["blinded"] = isBlinded();



    return object;

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
Variable::isDisabled()
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
Variable::isDeleted()
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
Variable::isBlinded()
{
	return blinded;
}

void
Variable::setBlinded(bool  blinded)
{
	this->blinded = blinded;
}



