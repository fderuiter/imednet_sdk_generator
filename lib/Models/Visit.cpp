

#include "Visit.h"

using namespace Tiny;

Visit::Visit()
{
	studyKey = std::string();
	visitId = int(0);
	intervalId = int(0);
	intervalName = std::string();
	subjectId = int(0);
	subjectKey = std::string();
	startDate = std::string();
	endDate = std::string();
	dueDate = std::string();
	visitDate = std::string();
	visitDateForm = std::string();
	visitDateQuestion = std::string();
	deleted = bool(false);
	dateCreated = std::string();
	dateModified = std::string();
}

Visit::Visit(std::string jsonString)
{
	this->fromJson(jsonString);
}

Visit::~Visit()
{

}

void
Visit::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *studyKeyKey = "studyKey";

    if(object.has_key(studyKeyKey))
    {
        bourne::json value = object[studyKeyKey];



        jsonToValue(&studyKey, value, "std::string");


    }

    const char *visitIdKey = "visitId";

    if(object.has_key(visitIdKey))
    {
        bourne::json value = object[visitIdKey];



        jsonToValue(&visitId, value, "int");


    }

    const char *intervalIdKey = "intervalId";

    if(object.has_key(intervalIdKey))
    {
        bourne::json value = object[intervalIdKey];



        jsonToValue(&intervalId, value, "int");


    }

    const char *intervalNameKey = "intervalName";

    if(object.has_key(intervalNameKey))
    {
        bourne::json value = object[intervalNameKey];



        jsonToValue(&intervalName, value, "std::string");


    }

    const char *subjectIdKey = "subjectId";

    if(object.has_key(subjectIdKey))
    {
        bourne::json value = object[subjectIdKey];



        jsonToValue(&subjectId, value, "int");


    }

    const char *subjectKeyKey = "subjectKey";

    if(object.has_key(subjectKeyKey))
    {
        bourne::json value = object[subjectKeyKey];



        jsonToValue(&subjectKey, value, "std::string");


    }

    const char *startDateKey = "startDate";

    if(object.has_key(startDateKey))
    {
        bourne::json value = object[startDateKey];



        jsonToValue(&startDate, value, "std::string");


    }

    const char *endDateKey = "endDate";

    if(object.has_key(endDateKey))
    {
        bourne::json value = object[endDateKey];



        jsonToValue(&endDate, value, "std::string");


    }

    const char *dueDateKey = "dueDate";

    if(object.has_key(dueDateKey))
    {
        bourne::json value = object[dueDateKey];



        jsonToValue(&dueDate, value, "std::string");


    }

    const char *visitDateKey = "visitDate";

    if(object.has_key(visitDateKey))
    {
        bourne::json value = object[visitDateKey];



        jsonToValue(&visitDate, value, "std::string");


    }

    const char *visitDateFormKey = "visitDateForm";

    if(object.has_key(visitDateFormKey))
    {
        bourne::json value = object[visitDateFormKey];



        jsonToValue(&visitDateForm, value, "std::string");


    }

    const char *visitDateQuestionKey = "visitDateQuestion";

    if(object.has_key(visitDateQuestionKey))
    {
        bourne::json value = object[visitDateQuestionKey];



        jsonToValue(&visitDateQuestion, value, "std::string");


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


}

bourne::json
Visit::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["visitId"] = getVisitId();






    object["intervalId"] = getIntervalId();






    object["intervalName"] = getIntervalName();






    object["subjectId"] = getSubjectId();






    object["subjectKey"] = getSubjectKey();






    object["startDate"] = getStartDate();






    object["endDate"] = getEndDate();






    object["dueDate"] = getDueDate();






    object["visitDate"] = getVisitDate();






    object["visitDateForm"] = getVisitDateForm();






    object["visitDateQuestion"] = getVisitDateQuestion();






    object["deleted"] = isDeleted();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();



    return object;

}

std::string
Visit::getStudyKey()
{
	return studyKey;
}

void
Visit::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Visit::getVisitId()
{
	return visitId;
}

void
Visit::setVisitId(int  visitId)
{
	this->visitId = visitId;
}

int
Visit::getIntervalId()
{
	return intervalId;
}

void
Visit::setIntervalId(int  intervalId)
{
	this->intervalId = intervalId;
}

std::string
Visit::getIntervalName()
{
	return intervalName;
}

void
Visit::setIntervalName(std::string  intervalName)
{
	this->intervalName = intervalName;
}

int
Visit::getSubjectId()
{
	return subjectId;
}

void
Visit::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Visit::getSubjectKey()
{
	return subjectKey;
}

void
Visit::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

std::string
Visit::getStartDate()
{
	return startDate;
}

void
Visit::setStartDate(std::string  startDate)
{
	this->startDate = startDate;
}

std::string
Visit::getEndDate()
{
	return endDate;
}

void
Visit::setEndDate(std::string  endDate)
{
	this->endDate = endDate;
}

std::string
Visit::getDueDate()
{
	return dueDate;
}

void
Visit::setDueDate(std::string  dueDate)
{
	this->dueDate = dueDate;
}

std::string
Visit::getVisitDate()
{
	return visitDate;
}

void
Visit::setVisitDate(std::string  visitDate)
{
	this->visitDate = visitDate;
}

std::string
Visit::getVisitDateForm()
{
	return visitDateForm;
}

void
Visit::setVisitDateForm(std::string  visitDateForm)
{
	this->visitDateForm = visitDateForm;
}

std::string
Visit::getVisitDateQuestion()
{
	return visitDateQuestion;
}

void
Visit::setVisitDateQuestion(std::string  visitDateQuestion)
{
	this->visitDateQuestion = visitDateQuestion;
}

bool
Visit::isDeleted()
{
	return deleted;
}

void
Visit::setDeleted(bool  deleted)
{
	this->deleted = deleted;
}

std::string
Visit::getDateCreated()
{
	return dateCreated;
}

void
Visit::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Visit::getDateModified()
{
	return dateModified;
}

void
Visit::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}



