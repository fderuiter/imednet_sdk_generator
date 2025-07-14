

#include "Site.h"

using namespace Tiny;

Site::Site()
{
	studyKey = std::string();
	siteId = int(0);
	siteName = std::string();
	siteEnrollmentStatus = std::string();
	dateCreated = std::string();
	dateModified = std::string();
}

Site::Site(std::string jsonString)
{
	this->fromJson(jsonString);
}

Site::~Site()
{

}

void
Site::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


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

    const char *siteEnrollmentStatusKey = "siteEnrollmentStatus";

    if(object.has_key(siteEnrollmentStatusKey))
    {
        bourne::json value = object[siteEnrollmentStatusKey];



        jsonToValue(&siteEnrollmentStatus, value, "std::string");


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


}

bourne::json
Site::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["siteId"] = getSiteId();






    object["siteName"] = getSiteName();






    object["siteEnrollmentStatus"] = getSiteEnrollmentStatus();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();



    return object;

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



