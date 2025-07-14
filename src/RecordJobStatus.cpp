#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RecordJobStatus.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RecordJobStatus::RecordJobStatus()
{
	//__init();
}

RecordJobStatus::~RecordJobStatus()
{
	//__cleanup();
}

void
RecordJobStatus::__init()
{
	//jobId = std::string();
	//batchId = std::string();
	//state = std::string();
}

void
RecordJobStatus::__cleanup()
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
	//
}

void
RecordJobStatus::fromJson(char* jsonStr)
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
}

RecordJobStatus::RecordJobStatus(char* json)
{
	this->fromJson(json);
}

char*
RecordJobStatus::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
RecordJobStatus::getJobId()
{
	return jobId;
}

void
RecordJobStatus::setJobId(std::string  jobId)
{
	this->jobId = jobId;
}

std::string
RecordJobStatus::getBatchId()
{
	return batchId;
}

void
RecordJobStatus::setBatchId(std::string  batchId)
{
	this->batchId = batchId;
}

std::string
RecordJobStatus::getState()
{
	return state;
}

void
RecordJobStatus::setState(std::string  state)
{
	this->state = state;
}


