

#include "QueryComment.h"

using namespace Tiny;

QueryComment::QueryComment()
{
	sequence = int(0);
	annotationStatus = std::string();
	user = std::string();
	comment = std::string();
	closed = bool(false);
	date = std::string();
}

QueryComment::QueryComment(std::string jsonString)
{
	this->fromJson(jsonString);
}

QueryComment::~QueryComment()
{

}

void
QueryComment::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *sequenceKey = "sequence";

    if(object.has_key(sequenceKey))
    {
        bourne::json value = object[sequenceKey];



        jsonToValue(&sequence, value, "int");


    }

    const char *annotationStatusKey = "annotationStatus";

    if(object.has_key(annotationStatusKey))
    {
        bourne::json value = object[annotationStatusKey];



        jsonToValue(&annotationStatus, value, "std::string");


    }

    const char *userKey = "user";

    if(object.has_key(userKey))
    {
        bourne::json value = object[userKey];



        jsonToValue(&user, value, "std::string");


    }

    const char *commentKey = "comment";

    if(object.has_key(commentKey))
    {
        bourne::json value = object[commentKey];



        jsonToValue(&comment, value, "std::string");


    }

    const char *closedKey = "closed";

    if(object.has_key(closedKey))
    {
        bourne::json value = object[closedKey];



        jsonToValue(&closed, value, "bool");


    }

    const char *dateKey = "date";

    if(object.has_key(dateKey))
    {
        bourne::json value = object[dateKey];



        jsonToValue(&date, value, "std::string");


    }


}

bourne::json
QueryComment::toJson()
{
    bourne::json object = bourne::json::object();





    object["sequence"] = getSequence();






    object["annotationStatus"] = getAnnotationStatus();






    object["user"] = getUser();






    object["comment"] = getComment();






    object["closed"] = isClosed();






    object["date"] = getDate();



    return object;

}

int
QueryComment::getSequence()
{
	return sequence;
}

void
QueryComment::setSequence(int  sequence)
{
	this->sequence = sequence;
}

std::string
QueryComment::getAnnotationStatus()
{
	return annotationStatus;
}

void
QueryComment::setAnnotationStatus(std::string  annotationStatus)
{
	this->annotationStatus = annotationStatus;
}

std::string
QueryComment::getUser()
{
	return user;
}

void
QueryComment::setUser(std::string  user)
{
	this->user = user;
}

std::string
QueryComment::getComment()
{
	return comment;
}

void
QueryComment::setComment(std::string  comment)
{
	this->comment = comment;
}

bool
QueryComment::isClosed()
{
	return closed;
}

void
QueryComment::setClosed(bool  closed)
{
	this->closed = closed;
}

std::string
QueryComment::getDate()
{
	return date;
}

void
QueryComment::setDate(std::string  date)
{
	this->date = date;
}



