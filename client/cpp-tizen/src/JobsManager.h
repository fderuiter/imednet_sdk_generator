#ifndef _JobsManager_H_
#define _JobsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_5.h"
#include "Job.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Jobs Jobs
 * \ingroup Operations
 *  @{
 */
class JobsManager {
public:
	JobsManager();
	virtual ~JobsManager();

/*! \brief Retrieve job status by batch ID. *Synchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param batchId Batch ID of the job to retrieve *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobStatusSync(char * accessToken,
	std::string studyKey, std::string batchId, 
	void(* handler)(Job, Error, void* )
	, void* userData);

/*! \brief Retrieve job status by batch ID. *Asynchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param batchId Batch ID of the job to retrieve *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getJobStatusAsync(char * accessToken,
	std::string studyKey, std::string batchId, 
	void(* handler)(Job, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://edc.prod.imednetapi.com/api/v1/edc";
	}
};
/** @}*/

}
}
#endif /* JobsManager_H_ */
