

#include "Job.h"

using namespace Tiny;

Job::Job()
{
	jobId = std::string();
	batchId = std::string();
	state = std::string();
	dateCreated = std::string();
	dateStarted = std::string();
	dateFinished = std::string();
}

Job::Job(std::string jsonString)
{
	this->fromJson(jsonString);
}

Job::~Job()
{

}

void
Job::fromJson(std::string jsonObj)
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

    const char *dateCreatedKey = "dateCreated";

    if(object.has_key(dateCreatedKey))
    {
        bourne::json value = object[dateCreatedKey];



        jsonToValue(&dateCreated, value, "std::string");


    }

    const char *dateStartedKey = "dateStarted";

    if(object.has_key(dateStartedKey))
    {
        bourne::json value = object[dateStartedKey];



        jsonToValue(&dateStarted, value, "std::string");


    }

    const char *dateFinishedKey = "dateFinished";

    if(object.has_key(dateFinishedKey))
    {
        bourne::json value = object[dateFinishedKey];



        jsonToValue(&dateFinished, value, "std::string");


    }


}

bourne::json
Job::toJson()
{
    bourne::json object = bourne::json::object();





    object["jobId"] = getJobId();






    object["batchId"] = getBatchId();






    object["state"] = getState();






    object["dateCreated"] = getDateCreated();






    object["dateStarted"] = getDateStarted();






    object["dateFinished"] = getDateFinished();



    return object;

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



