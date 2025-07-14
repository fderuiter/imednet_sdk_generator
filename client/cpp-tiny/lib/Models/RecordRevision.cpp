

#include "RecordRevision.h"

using namespace Tiny;

RecordRevision::RecordRevision()
{
	studyKey = std::string();
	recordRevisionId = int(0);
	recordId = int(0);
	recordOid = std::string();
	recordRevision = int(0);
	dataRevision = int(0);
	recordStatus = std::string();
	subjectId = int(0);
	subjectOid = std::string();
	subjectKey = std::string();
	siteId = int(0);
	formKey = std::string();
	intervalId = int(0);
	role = std::string();
	user = std::string();
	reasonForChange = std::string();
	deleted = bool(false);
	dateCreated = std::string();
}

RecordRevision::RecordRevision(std::string jsonString)
{
	this->fromJson(jsonString);
}

RecordRevision::~RecordRevision()
{

}

void
RecordRevision::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *recordRevisionIdKey = "recordRevisionId";

    if(object.has_key(recordRevisionIdKey))
    {
        bourne::json value = object[recordRevisionIdKey];



        jsonToValue(&recordRevisionId, value, "int");


    }

    const char *recordIdKey = "recordId";

    if(object.has_key(recordIdKey))
    {
        bourne::json value = object[recordIdKey];



        jsonToValue(&recordId, value, "int");


    }

    const char *recordOidKey = "recordOid";

    if(object.has_key(recordOidKey))
    {
        bourne::json value = object[recordOidKey];



        jsonToValue(&recordOid, value, "std::string");


    }

    const char *recordRevisionKey = "recordRevision";

    if(object.has_key(recordRevisionKey))
    {
        bourne::json value = object[recordRevisionKey];



        jsonToValue(&recordRevision, value, "int");


    }

    const char *dataRevisionKey = "dataRevision";

    if(object.has_key(dataRevisionKey))
    {
        bourne::json value = object[dataRevisionKey];



        jsonToValue(&dataRevision, value, "int");


    }

    const char *recordStatusKey = "recordStatus";

    if(object.has_key(recordStatusKey))
    {
        bourne::json value = object[recordStatusKey];



        jsonToValue(&recordStatus, value, "std::string");


    }

    const char *subjectIdKey = "subjectId";

    if(object.has_key(subjectIdKey))
    {
        bourne::json value = object[subjectIdKey];



        jsonToValue(&subjectId, value, "int");


    }

    const char *subjectOidKey = "subjectOid";

    if(object.has_key(subjectOidKey))
    {
        bourne::json value = object[subjectOidKey];



        jsonToValue(&subjectOid, value, "std::string");


    }

    const char *subjectKeyKey = "subjectKey";

    if(object.has_key(subjectKeyKey))
    {
        bourne::json value = object[subjectKeyKey];



        jsonToValue(&subjectKey, value, "std::string");


    }

    const char *siteIdKey = "siteId";

    if(object.has_key(siteIdKey))
    {
        bourne::json value = object[siteIdKey];



        jsonToValue(&siteId, value, "int");


    }

    const char *formKeyKey = "formKey";

    if(object.has_key(formKeyKey))
    {
        bourne::json value = object[formKeyKey];



        jsonToValue(&formKey, value, "std::string");


    }

    const char *intervalIdKey = "intervalId";

    if(object.has_key(intervalIdKey))
    {
        bourne::json value = object[intervalIdKey];



        jsonToValue(&intervalId, value, "int");


    }

    const char *roleKey = "role";

    if(object.has_key(roleKey))
    {
        bourne::json value = object[roleKey];



        jsonToValue(&role, value, "std::string");


    }

    const char *userKey = "user";

    if(object.has_key(userKey))
    {
        bourne::json value = object[userKey];



        jsonToValue(&user, value, "std::string");


    }

    const char *reasonForChangeKey = "reasonForChange";

    if(object.has_key(reasonForChangeKey))
    {
        bourne::json value = object[reasonForChangeKey];



        jsonToValue(&reasonForChange, value, "std::string");


    }

    const char *deletedKey = "deleted";

    if(object.has_key(deletedKey))
    {
        bourne::json value = object[deletedKey];



        jsonToValue(&deleted, value, "bool");


    }

    const char *dateCreatedKey = "dateCreated";

    if(object.has_key(dateCreatedKey))
    {
        bourne::json value = object[dateCreatedKey];



        jsonToValue(&dateCreated, value, "std::string");


    }


}

bourne::json
RecordRevision::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["recordRevisionId"] = getRecordRevisionId();






    object["recordId"] = getRecordId();






    object["recordOid"] = getRecordOid();






    object["recordRevision"] = getRecordRevision();






    object["dataRevision"] = getDataRevision();






    object["recordStatus"] = getRecordStatus();






    object["subjectId"] = getSubjectId();






    object["subjectOid"] = getSubjectOid();






    object["subjectKey"] = getSubjectKey();






    object["siteId"] = getSiteId();






    object["formKey"] = getFormKey();






    object["intervalId"] = getIntervalId();






    object["role"] = getRole();






    object["user"] = getUser();






    object["reasonForChange"] = getReasonForChange();






    object["deleted"] = isDeleted();






    object["dateCreated"] = getDateCreated();



    return object;

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
RecordRevision::isDeleted()
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



