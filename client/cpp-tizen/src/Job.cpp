#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Job.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Job::Job()
{
	//__init();
}

Job::~Job()
{
	//__cleanup();
}

void
Job::__init()
{
	//jobId = std::string();
	//batchId = std::string();
	//state = std::string();
	//dateCreated = std::string();
	//dateStarted = std::string();
	//dateFinished = std::string();
}

void
Job::__cleanup()
{
	//if(jobId != NULL) {
	//
	//delete jobId;
	//jobId = NULL;
	//}
	//if(batchId != NULL) {
	//
	//delete batchId;
	//batchId = NULL;
	//}
	//if(state != NULL) {
	//
	//delete state;
	//state = NULL;
	//}
	//if(dateCreated != NULL) {
	//
	//delete dateCreated;
	//dateCreated = NULL;
	//}
	//if(dateStarted != NULL) {
	//
	//delete dateStarted;
	//dateStarted = NULL;
	//}
	//if(dateFinished != NULL) {
	//
	//delete dateFinished;
	//dateFinished = NULL;
	//}
	//
}

void
Job::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *jobIdKey = "jobId";
	node = json_object_get_member(pJsonObject, jobIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&jobId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *batchIdKey = "batchId";
	node = json_object_get_member(pJsonObject, batchIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&batchId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *stateKey = "state";
	node = json_object_get_member(pJsonObject, stateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&state, node, "std::string", "");
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
	const gchar *dateStartedKey = "dateStarted";
	node = json_object_get_member(pJsonObject, dateStartedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateStarted, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dateFinishedKey = "dateFinished";
	node = json_object_get_member(pJsonObject, dateFinishedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dateFinished, node, "std::string", "");
		} else {
			
		}
	}
}

Job::Job(char* json)
{
	this->fromJson(json);
}

char*
Job::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getJobId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *jobIdKey = "jobId";
	json_object_set_member(pJsonObject, jobIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBatchId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *batchIdKey = "batchId";
	json_object_set_member(pJsonObject, batchIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getState();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *stateKey = "state";
	json_object_set_member(pJsonObject, stateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateCreated();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateCreatedKey = "dateCreated";
	json_object_set_member(pJsonObject, dateCreatedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateStarted();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateStartedKey = "dateStarted";
	json_object_set_member(pJsonObject, dateStartedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDateFinished();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateFinishedKey = "dateFinished";
	json_object_set_member(pJsonObject, dateFinishedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Job::getJobId()
{
	return jobId;
}

void
Job::setJobId(std::string  jobId)
{
	this->jobId = jobId;
}

std::string
Job::getBatchId()
{
	return batchId;
}

void
Job::setBatchId(std::string  batchId)
{
	this->batchId = batchId;
}

std::string
Job::getState()
{
	return state;
}

void
Job::setState(std::string  state)
{
	this->state = state;
}

std::string
Job::getDateCreated()
{
	return dateCreated;
}

void
Job::setDateCreated(std::string  dateCreated)
{
	this->dateCreated = dateCreated;
}

std::string
Job::getDateStarted()
{
	return dateStarted;
}

void
Job::setDateStarted(std::string  dateStarted)
{
	this->dateStarted = dateStarted;
}

std::string
Job::getDateFinished()
{
	return dateFinished;
}

void
Job::setDateFinished(std::string  dateFinished)
{
	this->dateFinished = dateFinished;
}


