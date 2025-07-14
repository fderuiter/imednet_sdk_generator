

#include "Query.h"

using namespace Tiny;

Query::Query()
{
	studyKey = std::string();
	subjectId = int(0);
	subjectOid = std::string();
	annotationType = std::string();
	annotationId = int(0);
	type = std::string();
	description = std::string();
	recordId = int(0);
	variable = std::string();
	subjectKey = std::string();
	dateCreated = std::string();
	dateModified = std::string();
	queryComments = std::list<QueryComment>();
}

Query::Query(std::string jsonString)
{
	this->fromJson(jsonString);
}

Query::~Query()
{

}

void
Query::fromJson(std::string jsonObj)
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

    const char *annotationTypeKey = "annotationType";

    if(object.has_key(annotationTypeKey))
    {
        bourne::json value = object[annotationTypeKey];



        jsonToValue(&annotationType, value, "std::string");


    }

    const char *annotationIdKey = "annotationId";

    if(object.has_key(annotationIdKey))
    {
        bourne::json value = object[annotationIdKey];



        jsonToValue(&annotationId, value, "int");


    }

    const char *typeKey = "type";

    if(object.has_key(typeKey))
    {
        bourne::json value = object[typeKey];



        jsonToValue(&type, value, "std::string");


    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *recordIdKey = "recordId";

    if(object.has_key(recordIdKey))
    {
        bourne::json value = object[recordIdKey];



        jsonToValue(&recordId, value, "int");


    }

    const char *variableKey = "variable";

    if(object.has_key(variableKey))
    {
        bourne::json value = object[variableKey];



        jsonToValue(&variable, value, "std::string");


    }

    const char *subjectKeyKey = "subjectKey";

    if(object.has_key(subjectKeyKey))
    {
        bourne::json value = object[subjectKeyKey];



        jsonToValue(&subjectKey, value, "std::string");


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

    const char *queryCommentsKey = "queryComments";

    if(object.has_key(queryCommentsKey))
    {
        bourne::json value = object[queryCommentsKey];


        std::list<QueryComment> queryComments_list;
        QueryComment element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            queryComments_list.push_back(element);
        }
        queryComments = queryComments_list;


    }


}

bourne::json
Query::toJson()
{
    bourne::json object = bourne::json::object();





    object["studyKey"] = getStudyKey();






    object["subjectId"] = getSubjectId();






    object["subjectOid"] = getSubjectOid();






    object["annotationType"] = getAnnotationType();






    object["annotationId"] = getAnnotationId();






    object["type"] = getType();






    object["description"] = getDescription();






    object["recordId"] = getRecordId();






    object["variable"] = getVariable();






    object["subjectKey"] = getSubjectKey();






    object["dateCreated"] = getDateCreated();






    object["dateModified"] = getDateModified();





    std::list<QueryComment> queryComments_list = getQueryComments();
    bourne::json queryComments_arr = bourne::json::array();

    for(auto& var : queryComments_list)
    {
        QueryComment obj = var;
        queryComments_arr.append(obj.toJson());
    }
    object["queryComments"] = queryComments_arr;




    return object;

}

std::string
Query::getStudyKey()
{
	return studyKey;
}

void
Query::setStudyKey(std::string  studyKey)
{
	this->studyKey = studyKey;
}

int
Query::getSubjectId()
{
	return subjectId;
}

void
Query::setSubjectId(int  subjectId)
{
	this->subjectId = subjectId;
}

std::string
Query::getSubjectOid()
{
	return subjectOid;
}

void
Query::setSubjectOid(std::string  subjectOid)
{
	this->subjectOid = subjectOid;
}

std::string
Query::getAnnotationType()
{
	return annotationType;
}

void
Query::setAnnotationType(std::string  annotationType)
{
	this->annotationType = annotationType;
}

int
Query::getAnnotationId()
{
	return annotationId;
}

void
Query::setAnnotationId(int  annotationId)
{
	this->annotationId = annotationId;
}

std::string
Query::getType()
{
	return type;
}

void
Query::setType(std::string  type)
{
	this->type = type;
}

std::string
Query::getDescription()
{
	return description;
}

void
Query::setDescription(std::string  description)
{
	this->description = description;
}

int
Query::getRecordId()
{
	return recordId;
}

void
Query::setRecordId(int  recordId)
{
	this->recordId = recordId;
}

std::string
Query::getVariable()
{
	return variable;
}

void
Query::setVariable(std::string  variable)
{
	this->variable = variable;
}

std::string
Query::getSubjectKey()
{
	return subjectKey;
}

void
Query::setSubjectKey(std::string  subjectKey)
{
	this->subjectKey = subjectKey;
}

std::string
Query::getDateCreated()
{
	return dateCreated;
}

void
Query::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Query::getDateModified()
{
	return dateModified;
}

void
Query::setDateModified(std::string  dateModified)
{
	this->dateModified = dateModified;
}

std::list<QueryComment>
Query::getQueryComments()
{
	return queryComments;
}

void
Query::setQueryComments(std::list <QueryComment> queryComments)
{
	this->queryComments = queryComments;
}



