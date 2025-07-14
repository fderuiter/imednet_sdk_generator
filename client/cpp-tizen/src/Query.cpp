#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Query.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Query::Query()
{
	//__init();
}

Query::~Query()
{
	//__cleanup();
}

void
Query::__init()
{
	//studyKey = std::string();
	//subjectId = int(0);
	//subjectOid = std::string();
	//annotationType = std::string();
	//annotationId = int(0);
	//type = std::string();
	//description = std::string();
	//recordId = int(0);
	//variable = std::string();
	//subjectKey = std::string();
	//dateCreated = std::string();
	//dateModified = std::string();
	//new std::list()std::list> queryComments;
}

void
Query::__cleanup()
{
	//if(studyKey != NULL) {
	//
	//delete studyKey;
	//studyKey = NULL;
	//}
	//if(subjectId != NULL) {
	//
	//delete subjectId;
	//subjectId = NULL;
	//}
	//if(subjectOid != NULL) {
	//
	//delete subjectOid;
	//subjectOid = NULL;
	//}
	//if(annotationType != NULL) {
	//
	//delete annotationType;
	//annotationType = NULL;
	//}
	//if(annotationId != NULL) {
	//
	//delete annotationId;
	//annotationId = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(recordId != NULL) {
	//
	//delete recordId;
	//recordId = NULL;
	//}
	//if(variable != NULL) {
	//
	//delete variable;
	//variable = NULL;
	//}
	//if(subjectKey != NULL) {
	//
	//delete subjectKey;
	//subjectKey = NULL;
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
	//if(queryComments != NULL) {
	//queryComments.RemoveAll(true);
	//delete queryComments;
	//queryComments = NULL;
	//}
	//
}

void
Query::fromJson(char* jsonStr)
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
	const gchar *subjectIdKey = "subjectId";
	node = json_object_get_member(pJsonObject, subjectIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&subjectId, node, "int", "");
		} else {
			
		}
	}
	const gchar *subjectOidKey = "subjectOid";
	node = json_object_get_member(pJsonObject, subjectOidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subjectOid, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *annotationTypeKey = "annotationType";
	node = json_object_get_member(pJsonObject, annotationTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&annotationType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *annotationIdKey = "annotationId";
	node = json_object_get_member(pJsonObject, annotationIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&annotationId, node, "int", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recordIdKey = "recordId";
	node = json_object_get_member(pJsonObject, recordIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&recordId, node, "int", "");
		} else {
			
		}
	}
	const gchar *variableKey = "variable";
	node = json_object_get_member(pJsonObject, variableKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variable, node, "std::string", "");
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
	const gchar *queryCommentsKey = "queryComments";
	node = json_object_get_member(pJsonObject, queryCommentsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QueryComment> new_list;
			QueryComment inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QueryComment")) {
					jsonToValue(&inst, temp_json, "QueryComment", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			queryComments = new_list;
		}
		
	}
}

Query::Query(char* json)
{
	this->fromJson(json);
}

char*
Query::toJson()
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
		int obj = getSubjectId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *subjectIdKey = "subjectId";
	json_object_set_member(pJsonObject, subjectIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubjectOid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectOidKey = "subjectOid";
	json_object_set_member(pJsonObject, subjectOidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAnnotationType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *annotationTypeKey = "annotationType";
	json_object_set_member(pJsonObject, annotationTypeKey, node);
	if (isprimitive("int")) {
		int obj = getAnnotationId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *annotationIdKey = "annotationId";
	json_object_set_member(pJsonObject, annotationIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("int")) {
		int obj = getRecordId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *recordIdKey = "recordId";
	json_object_set_member(pJsonObject, recordIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariable();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableKey = "variable";
	json_object_set_member(pJsonObject, variableKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubjectKey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subjectKeyKey = "subjectKey";
	json_object_set_member(pJsonObject, subjectKeyKey, node);
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
	if (isprimitive("QueryComment")) {
		list<QueryComment> new_list = static_cast<list <QueryComment> > (getQueryComments());
		node = converttoJson(&new_list, "QueryComment", "array");
	} else {
		node = json_node_alloc();
		list<QueryComment> new_list = static_cast<list <QueryComment> > (getQueryComments());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QueryComment>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QueryComment obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *queryCommentsKey = "queryComments";
	json_object_set_member(pJsonObject, queryCommentsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


