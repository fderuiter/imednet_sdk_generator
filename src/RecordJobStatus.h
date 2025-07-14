/*
 * RecordJobStatus.h
 *
 * 
 */

#ifndef _RecordJobStatus_H_
#define _RecordJobStatus_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RecordJobStatus : public Object {
public:
	/*! \brief Constructor.
	 */
	RecordJobStatus();
	RecordJobStatus(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RecordJobStatus();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string jobId;
	std::string batchId;
	std::string state;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RecordJobStatus_H_ */
