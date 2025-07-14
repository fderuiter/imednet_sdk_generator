/*
 * Job.h
 *
 * 
 */

#ifndef _Job_H_
#define _Job_H_


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

class Job : public Object {
public:
	/*! \brief Constructor.
	 */
	Job();
	Job(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Job();

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
	/*! \brief Get Batch ID associated with the job (useful for linking with record creation requests)
	 */
	std::string getBatchId();

	/*! \brief Set Batch ID associated with the job (useful for linking with record creation requests)
	 */
	void setBatchId(std::string  batchId);
	/*! \brief Get State of the job (e.g., completed, pending)
	 */
	std::string getState();

	/*! \brief Set State of the job (e.g., completed, pending)
	 */
	void setState(std::string  state);
	/*! \brief Get Timestamp when the job was created
	 */
	std::string getDateCreated();

	/*! \brief Set Timestamp when the job was created
	 */
	void setDateCreated(std::string  dateCreated);
	/*! \brief Get Timestamp when the job started processing
	 */
	std::string getDateStarted();

	/*! \brief Set Timestamp when the job started processing
	 */
	void setDateStarted(std::string  dateStarted);
	/*! \brief Get Timestamp when the job finished processing
	 */
	std::string getDateFinished();

	/*! \brief Set Timestamp when the job finished processing
	 */
	void setDateFinished(std::string  dateFinished);

private:
	std::string jobId;
	std::string batchId;
	std::string state;
	std::string dateCreated;
	std::string dateStarted;
	std::string dateFinished;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Job_H_ */
