package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.InlineObject
import org.openapitools.model.InlineObject1
import org.openapitools.model.InlineObject2
import org.openapitools.model.InlineObject3
import org.openapitools.model.InlineObject5
import org.openapitools.model.IntervalList

class IntervalsApi {
    String basePath = "https://edc.prod.imednetapi.com/api/v1/edc"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def listIntervals ( String studyKey, Integer page, Integer size, String sort, String filter, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/studies/${studyKey}/intervals"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (studyKey == null) {
            throw new RuntimeException("missing required params studyKey")
        }

        if (page != null) {
            queryParams.put("page", page)
        }
        if (size != null) {
            queryParams.put("size", size)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    IntervalList.class )

    }

}
