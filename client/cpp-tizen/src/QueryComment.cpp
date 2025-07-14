#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QueryComment.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QueryComment::QueryComment()
{
	//__init();
}

QueryComment::~QueryComment()
{
	//__cleanup();
}

void
QueryComment::__init()
{
	//sequence = int(0);
	//annotationStatus = std::string();
	//user = std::string();
	//comment = std::string();
	//closed = bool(false);
	//date = std::string();
}

void
QueryComment::__cleanup()
{
	//if(sequence != NULL) {
	//
	//delete sequence;
	//sequence = NULL;
	//}
	//if(annotationStatus != NULL) {
	//
	//delete annotationStatus;
	//annotationStatus = NULL;
	//}
	//if(user != NULL) {
	//
	//delete user;
	//user = NULL;
	//}
	//if(comment != NULL) {
	//
	//delete comment;
	//comment = NULL;
	//}
	//if(closed != NULL) {
	//
	//delete closed;
	//closed = NULL;
	//}
	//if(date != NULL) {
	//
	//delete date;
	//date = NULL;
	//}
	//
}

void
QueryComment::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *sequenceKey = "sequence";
	node = json_object_get_member(pJsonObject, sequenceKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&sequence, node, "int", "");
		} else {
			
		}
	}
	const gchar *annotationStatusKey = "annotationStatus";
	node = json_object_get_member(pJsonObject, annotationStatusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&annotationStatus, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *userKey = "user";
	node = json_object_get_member(pJsonObject, userKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&user, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *commentKey = "comment";
	node = json_object_get_member(pJsonObject, commentKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&comment, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *closedKey = "closed";
	node = json_object_get_member(pJsonObject, closedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&closed, node, "bool", "");
		} else {
			
		}
	}
	const gchar *dateKey = "date";
	node = json_object_get_member(pJsonObject, dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&date, node, "std::string", "");
		} else {
			
		}
	}
}

QueryComment::QueryComment(char* json)
{
	this->fromJson(json);
}

char*
QueryComment::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getSequence();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sequenceKey = "sequence";
	json_object_set_member(pJsonObject, sequenceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAnnotationStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *annotationStatusKey = "annotationStatus";
	json_object_set_member(pJsonObject, annotationStatusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUser();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *userKey = "user";
	json_object_set_member(pJsonObject, userKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getComment();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *commentKey = "comment";
	json_object_set_member(pJsonObject, commentKey, node);
	if (isprimitive("bool")) {
		bool obj = getClosed();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *closedKey = "closed";
	json_object_set_member(pJsonObject, closedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateKey = "date";
	json_object_set_member(pJsonObject, dateKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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
QueryComment::getClosed()
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


