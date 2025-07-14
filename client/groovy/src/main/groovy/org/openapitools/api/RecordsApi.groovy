package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ComponentsSchemasRecordCreateRequestItem
import org.openapitools.model.InlineObject
import org.openapitools.model.InlineObject1
import org.openapitools.model.InlineObject2
import org.openapitools.model.InlineObject3
import org.openapitools.model.InlineObject4
import org.openapitools.model.InlineObject5
import org.openapitools.model.RecordJobStatus
import org.openapitools.model.RecordList

class RecordsApi {
    String basePath = "https://edc.prod.imednetapi.com/api/v1/edc"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createRecords ( String studyKey, List<ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/studies/${studyKey}/records"

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
        if (componentsSchemasRecordCreateRequestItem == null) {
            throw new RuntimeException("missing required params componentsSchemasRecordCreateRequestItem")
        }



        contentType = 'application/json';
        bodyParams = componentsSchemasRecordCreateRequestItem


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RecordJobStatus.class )

    }

    def listRecords ( String studyKey, Integer page, Integer size, String sort, String filter, String recordDataFilter, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/studies/${studyKey}/records"

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
        if (recordDataFilter != null) {
            queryParams.put("recordDataFilter", recordDataFilter)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RecordList.class )

    }

}
