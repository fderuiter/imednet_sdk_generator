

#include "Study.h"

using namespace Tiny;

Study::Study()
{
	sponsorKey = std::string();
	studyKey = std::string();
	studyId = int(0);
	studyName = std::string();
	studyDescription = std::string();
	studyType = std::string();
	dateCreated = std::string();
	dateModified = std::string();
}

Study::Study(std::string jsonString)
{
	this->fromJson(jsonString);
}

Study::~Study()
{

}

void
Study::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *sponsorKeyKey = "sponsorKey";

    if(object.has_key(sponsorKeyKey))
    {
        bourne::json value = object[sponsorKeyKey];



        jsonToValue(&sponsorKey, value, "std::string");


    }

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *studyIdKey = "studyId";

    if(object.has_key(studyIdKey))
    {
        bourne::json value = object[studyIdKey];



        jsonToValue(&studyId, value, "int");


    }

    const char *studyNameKey = "studyName";

    if(object.has_key(studyNameKey))
    {
        bourne::json value = object[studyNameKey];



        jsonToValue(&studyName, value, "std::string");


    }

    const char *studyDescriptionKey = "studyDescription";

    if(object.has_key(studyDescriptionKey))
    {
        bourne::json value = object[studyDescriptionKey];



        jsonToValue(&studyDescription, value, "std::string");


    }

    const char *studyTypeKey = "studyType";

    if(object.has_key(studyTypeKey))
    {
        bourne::json value = object[studyTypeKey];



        jsonToValue(&studyType, value, "std::string");


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
Study::toJson()
{
    bourne::json object = bourne::json::object();





    object["sponsorKey"] = getSponsorKey();






    object["studyKey"] = getStudyKey();






    object["studyId"] = getStudyId();






    object["studyName"] = getStudyName();






    object["studyDescription"] = getStudyDescription();






    object["studyType"] = getStudyType();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();



    return object;

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



