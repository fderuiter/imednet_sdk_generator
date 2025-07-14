

#include "Record.h"

using namespace Tiny;

Record::Record()
{
	studyKey = std::string();
	intervalId = int(0);
	formId = int(0);
	formKey = std::string();
	siteId = int(0);
	recordId = int(0);
	recordOid = std::string();
	recordType = std::string();
	recordStatus = std::string();
	deleted = bool(false);
	dateCreated = std::string();
	dateModified = std::string();
	subjectId = int(0);
	subjectOid = std::string();
	subjectKey = std::string();
	visitId = int(0);
	parentRecordId = int(0);
	keywords = std::list<Keyword>();
	recordData = null<AnyType>();
}

Record::Record(std::string jsonString)
{
	this->fromJson(jsonString);
}

Record::~Record()
{

}

void
Record::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *intervalIdKey = "intervalId";

    if(object.has_key(intervalIdKey))
    {
        bourne::json value = object[intervalIdKey];



        jsonToValue(&intervalId, value, "int");


    }

    const char *formIdKey = "formId";

    if(object.has_key(formIdKey))
    {
        bourne::json value = object[formIdKey];



        jsonToValue(&formId, value, "int");


    }

    const char *formKeyKey = "formKey";

    if(object.has_key(formKeyKey))
    {
        bourne::json value = object[formKeyKey];



        jsonToValue(&formKey, value, "std::string");


    }

    const char *siteIdKey = "siteId";

    if(object.has_key(siteIdKey))
    {
        bourne::json value = object[siteIdKey];



        jsonToValue(&siteId, value, "int");


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

    const char *recordTypeKey = "recordType";

    if(object.has_key(recordTypeKey))
    {
        bourne::json value = object[recordTypeKey];



        jsonToValue(&recordType, value, "std::string");


    }

    const char *recordStatusKey = "recordStatus";

    if(object.has_key(recordStatusKey))
    {
        bourne::json value = object[recordStatusKey];



        jsonToValue(&recordStatus, value, "std::string");


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

    const char *dateModifiedKey = "dateModified";

    if(object.has_key(dateModifiedKey))
    {
        bourne::json value = object[dateModifiedKey];



        jsonToValue(&dateModified, value, "std::string");


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

    const char *visitIdKey = "visitId";

    if(object.has_key(visitIdKey))
    {
        bourne::json value = object[visitIdKey];



        jsonToValue(&visitId, value, "int");


    }

    const char *parentRecordIdKey = "parentRecordId";

    if(object.has_key(parentRecordIdKey))
    {
        bourne::json value = object[parentRecordIdKey];



        jsonToValue(&parentRecordId, value, "int");


    }

    const char *keywordsKey = "keywords";

    if(object.has_key(keywordsKey))
    {
        bourne::json value = object[keywordsKey];


        std::list<Keyword> keywords_list;
        Keyword element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            keywords_list.push_back(element);
        }
        keywords = keywords_list;


    }

    const char *recordDataKey = "recordData";

    if(object.has_key(recordDataKey))
    {
        bourne::json value = object[recordDataKey];


    }


}

bourne::json
Record::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["intervalId"] = getIntervalId();






    object["formId"] = getFormId();






    object["formKey"] = getFormKey();






    object["siteId"] = getSiteId();






    object["recordId"] = getRecordId();






    object["recordOid"] = getRecordOid();






    object["recordType"] = getRecordType();






    object["recordStatus"] = getRecordStatus();






    object["deleted"] = isDeleted();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();






    object["subjectId"] = getSubjectId();






    object["subjectOid"] = getSubjectOid();






    object["subjectKey"] = getSubjectKey();






    object["visitId"] = getVisitId();






    object["parentRecordId"] = getParentRecordId();





    std::list<Keyword> keywords_list = getKeywords();
    bourne::json keywords_arr = bourne::json::array();

    for(auto& var : keywords_list)
    {
        Keyword obj = var;
        keywords_arr.append(obj.toJson());
    }
    object["keywords"] = keywords_arr;







    return object;

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
Record::isDeleted()
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

Map<string, string>
Record::getRecordData()
{
	return recordData;
}

void
Record::setRecordData(Map <string, string> recordData)
{
	this->recordData = recordData;
}



