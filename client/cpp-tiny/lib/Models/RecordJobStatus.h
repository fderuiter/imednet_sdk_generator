
/*
 * RecordJobStatus.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_RecordJobStatus_H_
#define TINY_CPP_CLIENT_RecordJobStatus_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RecordJobStatus{
public:

    /*! \brief Constructor.
	 */
    RecordJobStatus();
    RecordJobStatus(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~RecordJobStatus();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Unique job identifier
	 */
	std::string getJobId();

	/*! \brief Set Unique job identifier
	 */
	void setJobId(std::string  jobId);
	/*! \brief Get Batch ID used to track the job (identical to jobId in most cases)
	 */
	std::string getBatchId();

	/*! \brief Set Batch ID used to track the job (identical to jobId in most cases)
	 */
	void setBatchId(std::string  batchId);
	/*! \brief Get Current state of the job (e.g., created, completed)
	 */
	std::string getState();

	/*! \brief Set Current state of the job (e.g., created, completed)
	 */
	void setState(std::string  state);


    private:
    std::string jobId{};
    std::string batchId{};
    std::string state{};
};
}

#endif /* TINY_CPP_CLIENT_RecordJobStatus_H_ */
