#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Visit.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Visit::Visit()
{
	//__init();
}

Visit::~Visit()
{
	//__cleanup();
}

void
Visit::__init()
{
	//studyKey = std::string();
	//visitId = int(0);
	//intervalId = int(0);
	//intervalName = std::string();
	//subjectId = int(0);
	//subjectKey = std::string();
	//startDate = std::string();
	//endDate = std::string();
	//dueDate = std::string();
	//visitDate = std::string();
	//visitDateForm = std::string();
	//visitDateQuestion = std::string();
	//deleted = bool(false);
	//dateCreated = std::string();
	//dateModified = std::string();
}

void
Visit::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(visitId != NULL) {
	//
	//delete visitId;
	//visitId = NULL;
	//}
	//if(intervalId != NULL) {
	//
	//delete intervalId;
	//intervalId = NULL;
	//}
	//if(intervalName != NULL) {
	//
	//delete intervalName;
	//intervalName = NULL;
	//}
	//if(subjectId != NULL) {
	//
	//delete subjectId;
	//subjectId = NULL;
	//}
	//if(subjectKey != NULL) {
	//
	//delete subjectKey;
	//subjectKey = NULL;
	//}
	//if(startDate != NULL) {
	//
	//delete startDate;
	//startDate = NULL;
	//}
	//if(endDate != NULL) {
	//
	//delete endDate;
	//endDate = NULL;
	//}
	//if(dueDate != NULL) {
	//
	//delete dueDate;
	//dueDate = NULL;
	//}
	//if(visitDate != NULL) {
	//
	//delete visitDate;
	//visitDate = NULL;
	//}
	//if(visitDateForm != NULL) {
	//
	//delete visitDateForm;
	//visitDateForm = NULL;
	//}
	//if(visitDateQuestion != NULL) {
	//
	//delete visitDateQuestion;
	//visitDateQuestion = NULL;
	//}
	//if(deleted != NULL) {
	//
	//delete deleted;
	//deleted = NULL;
	//}
	//if(dateCreated != NULL) {
	//
	//delete dateCreated;
	//dateCreated = NULL;
	//}
	//if(dateModified != NULL) {
	//
	//delete dateModified;
	//dateModified = NULL;
	//}
	//
}

void
Visit::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *studyKeyKey = "studyKey";
	node = json_object_get_member(pJsonObject, studyKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&studyKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *visitIdKey = "visitId";
	node = json_object_get_member(pJsonObject, visitIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&visitId, node, "int", "");
		} else {
			
		}
	}
	const gchar *intervalIdKey = "intervalId";
	node = json_object_get_member(pJsonObject, intervalIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&intervalId, node, "int", "");
		} else {
			
		}
	}
	const gchar *intervalNameKey = "intervalName";
	node = json_object_get_member(pJsonObject, intervalNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&intervalName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *subjectIdKey = "subjectId";
	node = json_object_get_member(pJsonObject, subjectIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&subjectId, node, "int", "");
		} else {
			
		}
	}
	const gchar *subjectKeyKey = "subjectKey";
	node = json_object_get_member(pJsonObject, subjectKeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subjectKey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *startDateKey = "startDate";
	node = json_object_get_member(pJsonObject, startDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&startDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *endDateKey = "endDate";
	node = json_object_get_member(pJsonObject, endDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&endDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dueDateKey = "dueDate";
	node = json_object_get_member(pJsonObject, dueDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dueDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *visitDateKey = "visitDate";
	node = json_object_get_member(pJsonObject, visitDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&visitDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *visitDateFormKey = "visitDateForm";
	node = json_object_get_member(pJsonObject, visitDateFormKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&visitDateForm, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *visitDateQuestionKey = "visitDateQuestion";
	node = json_object_get_member(pJsonObject, visitDateQuestionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&visitDateQuestion, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *deletedKey = "deleted";
	node = json_object_get_member(pJsonObject, deletedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&deleted, node, "bool", "");
		} else {
			
		}
	}
	const gchar *dateCreatedKey = "dateCreated";
	node = json_object_get_member(pJsonObject, dateCreatedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateCreated, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dateModifiedKey = "dateModified";
	node = json_object_get_member(pJsonObject, dateModifiedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateModified, node, "std::string", "");
		} else {
			
		}
	}
}

Visit::Visit(char* json)
{
	this->fromJson(json);
}

char*
Visit::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getStudyKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *studyKeyKey = "studyKey";
	json_object_set_member(pJsonObject, studyKeyKey, node);
	if (isprimitive("int")) {
		int obj = getVisitId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *visitIdKey = "visitId";
	json_object_set_member(pJsonObject, visitIdKey, node);
	if (isprimitive("int")) {
		int obj = getIntervalId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *intervalIdKey = "intervalId";
	json_object_set_member(pJsonObject, intervalIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIntervalName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *intervalNameKey = "intervalName";
	json_object_set_member(pJsonObject, intervalNameKey, node);
	if (isprimitive("int")) {
		int obj = getSubjectId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *subjectIdKey = "subjectId";
	json_object_set_member(pJsonObject, subjectIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubjectKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectKeyKey = "subjectKey";
	json_object_set_member(pJsonObject, subjectKeyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStartDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *startDateKey = "startDate";
	json_object_set_member(pJsonObject, startDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEndDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *endDateKey = "endDate";
	json_object_set_member(pJsonObject, endDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDueDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dueDateKey = "dueDate";
	json_object_set_member(pJsonObject, dueDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVisitDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *visitDateKey = "visitDate";
	json_object_set_member(pJsonObject, visitDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVisitDateForm();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *visitDateFormKey = "visitDateForm";
	json_object_set_member(pJsonObject, visitDateFormKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVisitDateQuestion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *visitDateQuestionKey = "visitDateQuestion";
	json_object_set_member(pJsonObject, visitDateQuestionKey, node);
	if (isprimitive("bool")) {
		bool obj = getDeleted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *deletedKey = "deleted";
	json_object_set_member(pJsonObject, deletedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateCreated();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateCreatedKey = "dateCreated";
	json_object_set_member(pJsonObject, dateCreatedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateModified();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateModifiedKey = "dateModified";
	json_object_set_member(pJsonObject, dateModifiedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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
Visit::getDeleted()
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


