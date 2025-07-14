package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.InlineObject
import org.openapitools.model.InlineObject1
import org.openapitools.model.InlineObject2
import org.openapitools.model.InlineObject3
import org.openapitools.model.InlineObject5
import org.openapitools.model.Job

class JobsApi {
    String basePath = "https://edc.prod.imednetapi.com/api/v1/edc"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getJobStatus ( String studyKey, String batchId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/studies/${studyKey}/jobs/${batchId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (studyKey == null) {
            throw new RuntimeException("missing required params studyKey")
        }
        // verify required params are set
        if (batchId == null) {
            throw new RuntimeException("missing required params batchId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Job.class )

    }

}
