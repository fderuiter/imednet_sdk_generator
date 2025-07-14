// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { InlineObject } from '../models/InlineObject';
import { InlineObject1 } from '../models/InlineObject1';
import { InlineObject2 } from '../models/InlineObject2';
import { InlineObject3 } from '../models/InlineObject3';
import { InlineObject5 } from '../models/InlineObject5';
import { QueryList } from '../models/QueryList';

/**
 * no description
 */
export class QueriesApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * List data queries in a study
     * @param studyKey Study key identifying the study context for the request
     * @param page Page index to retrieve (0-based)
     * @param size Number of items to return per page (max 500)
     * @param sort Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param filter Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public async listQueries(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'studyKey' is not null or undefined
        if (studyKey === null || studyKey === undefined) {
            throw new RequiredError("QueriesApi", "listQueries", "studyKey");
        }






        // Path Params
        const localVarPath = '/studies/{studyKey}/queries'
            .replace('{' + 'studyKey' + '}', encodeURIComponent(String(studyKey)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (page !== undefined) {
            requestContext.setQueryParam("page", ObjectSerializer.serialize(page, "number", ""));
        }

        // Query Params
        if (size !== undefined) {
            requestContext.setQueryParam("size", ObjectSerializer.serialize(size, "number", ""));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (filter !== undefined) {
            requestContext.setQueryParam("filter", ObjectSerializer.serialize(filter, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["securityKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class QueriesApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to listQueries
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async listQueriesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<QueryList >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: QueryList = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QueryList", ""
            ) as QueryList;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: InlineObject = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineObject", ""
            ) as InlineObject;
            throw new ApiException<InlineObject>(response.httpStatusCode, "Bad request (malformed or invalid input)", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: InlineObject1 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineObject1", ""
            ) as InlineObject1;
            throw new ApiException<InlineObject1>(response.httpStatusCode, "Authentication failed or was not provided", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: InlineObject2 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineObject2", ""
            ) as InlineObject2;
            throw new ApiException<InlineObject2>(response.httpStatusCode, "Authenticated but not allowed to access the resource", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: InlineObject3 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineObject3", ""
            ) as InlineObject3;
            throw new ApiException<InlineObject3>(response.httpStatusCode, "The requested resource was not found", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: InlineObject5 = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "InlineObject5", ""
            ) as InlineObject5;
            throw new ApiException<InlineObject5>(response.httpStatusCode, "Internal server error (unexpected condition encountered)", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: QueryList = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QueryList", ""
            ) as QueryList;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
