

#include "Keyword.h"

using namespace Tiny;

Keyword::Keyword()
{
	keywordName = std::string();
	keywordKey = std::string();
	keywordId = int(0);
	dateAdded = std::string();
}

Keyword::Keyword(std::string jsonString)
{
	this->fromJson(jsonString);
}

Keyword::~Keyword()
{

}

void
Keyword::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *keywordNameKey = "keywordName";

    if(object.has_key(keywordNameKey))
    {
        bourne::json value = object[keywordNameKey];



        jsonToValue(&keywordName, value, "std::string");


    }

    const char *keywordKeyKey = "keywordKey";

    if(object.has_key(keywordKeyKey))
    {
        bourne::json value = object[keywordKeyKey];



        jsonToValue(&keywordKey, value, "std::string");


    }

    const char *keywordIdKey = "keywordId";

    if(object.has_key(keywordIdKey))
    {
        bourne::json value = object[keywordIdKey];



        jsonToValue(&keywordId, value, "int");


    }

    const char *dateAddedKey = "dateAdded";

    if(object.has_key(dateAddedKey))
    {
        bourne::json value = object[dateAddedKey];



        jsonToValue(&dateAdded, value, "std::string");


    }


}

bourne::json
Keyword::toJson()
{
    bourne::json object = bourne::json::object();





    object["keywordName"] = getKeywordName();






    object["keywordKey"] = getKeywordKey();






    object["keywordId"] = getKeywordId();






    object["dateAdded"] = getDateAdded();



    return object;

}

std::string
Keyword::getKeywordName()
{
	return keywordName;
}

void
Keyword::setKeywordName(std::string  keywordName)
{
	this->keywordName = keywordName;
}

std::string
Keyword::getKeywordKey()
{
	return keywordKey;
}

void
Keyword::setKeywordKey(std::string  keywordKey)
{
	this->keywordKey = keywordKey;
}

int
Keyword::getKeywordId()
{
	return keywordId;
}

void
Keyword::setKeywordId(int  keywordId)
{
	this->keywordId = keywordId;
}

std::string
Keyword::getDateAdded()
{
	return dateAdded;
}

void
Keyword::setDateAdded(std::string  dateAdded)
{
	this->dateAdded = dateAdded;
}



