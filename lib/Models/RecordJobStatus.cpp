

#include "RecordJobStatus.h"

using namespace Tiny;

RecordJobStatus::RecordJobStatus()
{
	jobId = std::string();
	batchId = std::string();
	state = std::string();
}

RecordJobStatus::RecordJobStatus(std::string jsonString)
{
	this->fromJson(jsonString);
}

RecordJobStatus::~RecordJobStatus()
{

}

void
RecordJobStatus::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *jobIdKey = "jobId";

    if(object.has_key(jobIdKey))
    {
        bourne::json value = object[jobIdKey];



        jsonToValue(&jobId, value, "std::string");


    }

    const char *batchIdKey = "batchId";

    if(object.has_key(batchIdKey))
    {
        bourne::json value = object[batchIdKey];



        jsonToValue(&batchId, value, "std::string");


    }

    const char *stateKey = "state";

    if(object.has_key(stateKey))
    {
        bourne::json value = object[stateKey];



        jsonToValue(&state, value, "std::string");


    }


}

bourne::json
RecordJobStatus::toJson()
{
    bourne::json object = bourne::json::object();





    object["jobId"] = getJobId();






    object["batchId"] = getBatchId();






    object["state"] = getState();



    return object;

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



