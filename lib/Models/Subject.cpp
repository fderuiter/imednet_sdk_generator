

#include "Subject.h"

using namespace Tiny;

Subject::Subject()
{
	studyKey = std::string();
	subjectId = int(0);
	subjectOid = std::string();
	subjectKey = std::string();
	subjectStatus = std::string();
	siteId = int(0);
	siteName = std::string();
	deleted = bool(false);
	enrollmentStartDate = std::string();
	dateCreated = std::string();
	dateModified = std::string();
	keywords = std::list<Keyword>();
}

Subject::Subject(std::string jsonString)
{
	this->fromJson(jsonString);
}

Subject::~Subject()
{

}

void
Subject::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


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

    const char *subjectStatusKey = "subjectStatus";

    if(object.has_key(subjectStatusKey))
    {
        bourne::json value = object[subjectStatusKey];



        jsonToValue(&subjectStatus, value, "std::string");


    }

    const char *siteIdKey = "siteId";

    if(object.has_key(siteIdKey))
    {
        bourne::json value = object[siteIdKey];



        jsonToValue(&siteId, value, "int");


    }

    const char *siteNameKey = "siteName";

    if(object.has_key(siteNameKey))
    {
        bourne::json value = object[siteNameKey];



        jsonToValue(&siteName, value, "std::string");


    }

    const char *deletedKey = "deleted";

    if(object.has_key(deletedKey))
    {
        bourne::json value = object[deletedKey];



        jsonToValue(&deleted, value, "bool");


    }

    const char *enrollmentStartDateKey = "enrollmentStartDate";

    if(object.has_key(enrollmentStartDateKey))
    {
        bourne::json value = object[enrollmentStartDateKey];



        jsonToValue(&enrollmentStartDate, value, "std::string");


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


}

bourne::json
Subject::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["subjectId"] = getSubjectId();






    object["subjectOid"] = getSubjectOid();






    object["subjectKey"] = getSubjectKey();






    object["subjectStatus"] = getSubjectStatus();






    object["siteId"] = getSiteId();






    object["siteName"] = getSiteName();






    object["deleted"] = isDeleted();






    object["enrollmentStartDate"] = getEnrollmentStartDate();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();





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
Subject::isDeleted()
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



