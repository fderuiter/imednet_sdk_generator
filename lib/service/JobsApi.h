#ifndef TINY_CPP_CLIENT_JobsApi_H_
#define TINY_CPP_CLIENT_JobsApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_5.h"
#include "Job.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class JobsApi : public Service {
public:
    JobsApi() = default;

    virtual ~JobsApi() = default;

    /**
    * Retrieve job status by batch ID.
    *
    * 
    * \param studyKey Study key identifying the study context for the request *Required*
    * \param batchId Batch ID of the job to retrieve *Required*
    */
    Response<
                Job
        >
    getJobStatus(
            
            std::string studyKey
            , 
            
            std::string batchId
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_JobsApi_H_ */