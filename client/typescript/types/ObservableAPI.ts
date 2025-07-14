import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, ConfigurationOptions, mergeConfiguration } from '../configuration'
import type { Middleware } from '../middleware';
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
import { Coding } from '../models/Coding';
import { CodingList } from '../models/CodingList';
import { ComponentsSchemasIntervalFormsItem } from '../models/ComponentsSchemasIntervalFormsItem';
import { ComponentsSchemasMetadataError } from '../models/ComponentsSchemasMetadataError';
import { ComponentsSchemasRecordCreateRequestItem } from '../models/ComponentsSchemasRecordCreateRequestItem';
import { Form } from '../models/Form';
import { FormList } from '../models/FormList';
import { InlineObject } from '../models/InlineObject';
import { InlineObject1 } from '../models/InlineObject1';
import { InlineObject2 } from '../models/InlineObject2';
import { InlineObject3 } from '../models/InlineObject3';
import { InlineObject4 } from '../models/InlineObject4';
import { InlineObject5 } from '../models/InlineObject5';
import { Interval } from '../models/Interval';
import { IntervalList } from '../models/IntervalList';
import { Job } from '../models/Job';
import { Keyword } from '../models/Keyword';
import { Metadata } from '../models/Metadata';
import { Pagination } from '../models/Pagination';
import { Query } from '../models/Query';
import { QueryComment } from '../models/QueryComment';
import { QueryList } from '../models/QueryList';
import { Record } from '../models/Record';
import { RecordJobStatus } from '../models/RecordJobStatus';
import { RecordList } from '../models/RecordList';
import { RecordRevision } from '../models/RecordRevision';
import { RecordRevisionList } from '../models/RecordRevisionList';
import { Role } from '../models/Role';
import { Site } from '../models/Site';
import { SiteList } from '../models/SiteList';
import { Sort } from '../models/Sort';
import { Study } from '../models/Study';
import { StudyList } from '../models/StudyList';
import { Subject } from '../models/Subject';
import { SubjectList } from '../models/SubjectList';
import { User } from '../models/User';
import { UserList } from '../models/UserList';
import { Variable } from '../models/Variable';
import { VariableList } from '../models/VariableList';
import { Visit } from '../models/Visit';
import { VisitList } from '../models/VisitList';

import { AdministrationApiRequestFactory, AdministrationApiResponseProcessor} from "../apis/AdministrationApi";
export class ObservableAdministrationApi {
    private requestFactory: AdministrationApiRequestFactory;
    private responseProcessor: AdministrationApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: AdministrationApiRequestFactory,
        responseProcessor?: AdministrationApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new AdministrationApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new AdministrationApiResponseProcessor();
    }

    /**
     * List users and their roles in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [includeInactive] For user listing, whether to include inactive users
     */
    public listUsersWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, includeInactive?: boolean, _options?: ConfigurationOptions): Observable<HttpInfo<UserList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listUsers(studyKey, page, size, sort, includeInactive, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listUsersWithHttpInfo(rsp)));
            }));
    }

    /**
     * List users and their roles in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [includeInactive] For user listing, whether to include inactive users
     */
    public listUsers(studyKey: string, page?: number, size?: number, sort?: string, includeInactive?: boolean, _options?: ConfigurationOptions): Observable<UserList> {
        return this.listUsersWithHttpInfo(studyKey, page, size, sort, includeInactive, _options).pipe(map((apiResponse: HttpInfo<UserList>) => apiResponse.data));
    }

}

import { CodingsApiRequestFactory, CodingsApiResponseProcessor} from "../apis/CodingsApi";
export class ObservableCodingsApi {
    private requestFactory: CodingsApiRequestFactory;
    private responseProcessor: CodingsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: CodingsApiRequestFactory,
        responseProcessor?: CodingsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new CodingsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new CodingsApiResponseProcessor();
    }

    /**
     * List coding activities in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listCodingsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<CodingList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listCodings(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listCodingsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List coding activities in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listCodings(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<CodingList> {
        return this.listCodingsWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<CodingList>) => apiResponse.data));
    }

}

import { FormsApiRequestFactory, FormsApiResponseProcessor} from "../apis/FormsApi";
export class ObservableFormsApi {
    private requestFactory: FormsApiRequestFactory;
    private responseProcessor: FormsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: FormsApiRequestFactory,
        responseProcessor?: FormsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new FormsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new FormsApiResponseProcessor();
    }

    /**
     * List forms in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listFormsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<FormList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listForms(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listFormsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List forms in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listForms(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<FormList> {
        return this.listFormsWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<FormList>) => apiResponse.data));
    }

}

import { IntervalsApiRequestFactory, IntervalsApiResponseProcessor} from "../apis/IntervalsApi";
export class ObservableIntervalsApi {
    private requestFactory: IntervalsApiRequestFactory;
    private responseProcessor: IntervalsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: IntervalsApiRequestFactory,
        responseProcessor?: IntervalsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new IntervalsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new IntervalsApiResponseProcessor();
    }

    /**
     * List intervals (visit definitions) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listIntervalsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<IntervalList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listIntervals(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listIntervalsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List intervals (visit definitions) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listIntervals(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<IntervalList> {
        return this.listIntervalsWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<IntervalList>) => apiResponse.data));
    }

}

import { JobsApiRequestFactory, JobsApiResponseProcessor} from "../apis/JobsApi";
export class ObservableJobsApi {
    private requestFactory: JobsApiRequestFactory;
    private responseProcessor: JobsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: JobsApiRequestFactory,
        responseProcessor?: JobsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new JobsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new JobsApiResponseProcessor();
    }

    /**
     * Retrieve job status by batch ID
     * @param studyKey Study key identifying the study context for the request
     * @param batchId Batch ID of the job to retrieve
     */
    public getJobStatusWithHttpInfo(studyKey: string, batchId: string, _options?: ConfigurationOptions): Observable<HttpInfo<Job>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJobStatus(studyKey, batchId, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJobStatusWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve job status by batch ID
     * @param studyKey Study key identifying the study context for the request
     * @param batchId Batch ID of the job to retrieve
     */
    public getJobStatus(studyKey: string, batchId: string, _options?: ConfigurationOptions): Observable<Job> {
        return this.getJobStatusWithHttpInfo(studyKey, batchId, _options).pipe(map((apiResponse: HttpInfo<Job>) => apiResponse.data));
    }

}

import { QueriesApiRequestFactory, QueriesApiResponseProcessor} from "../apis/QueriesApi";
export class ObservableQueriesApi {
    private requestFactory: QueriesApiRequestFactory;
    private responseProcessor: QueriesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: QueriesApiRequestFactory,
        responseProcessor?: QueriesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new QueriesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new QueriesApiResponseProcessor();
    }

    /**
     * List data queries in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listQueriesWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<QueryList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listQueries(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listQueriesWithHttpInfo(rsp)));
            }));
    }

    /**
     * List data queries in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listQueries(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<QueryList> {
        return this.listQueriesWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<QueryList>) => apiResponse.data));
    }

}

import { RecordRevisionsApiRequestFactory, RecordRevisionsApiResponseProcessor} from "../apis/RecordRevisionsApi";
export class ObservableRecordRevisionsApi {
    private requestFactory: RecordRevisionsApiRequestFactory;
    private responseProcessor: RecordRevisionsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: RecordRevisionsApiRequestFactory,
        responseProcessor?: RecordRevisionsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new RecordRevisionsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new RecordRevisionsApiResponseProcessor();
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listRecordRevisionsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<RecordRevisionList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listRecordRevisions(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listRecordRevisionsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listRecordRevisions(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<RecordRevisionList> {
        return this.listRecordRevisionsWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<RecordRevisionList>) => apiResponse.data));
    }

}

import { RecordsApiRequestFactory, RecordsApiResponseProcessor} from "../apis/RecordsApi";
export class ObservableRecordsApi {
    private requestFactory: RecordsApiRequestFactory;
    private responseProcessor: RecordsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: RecordsApiRequestFactory,
        responseProcessor?: RecordsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new RecordsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new RecordsApiResponseProcessor();
    }

    /**
     * Add new record or update subject/record data
     * @param studyKey Study key identifying the study context for the request
     * @param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
     */
    public createRecordsWithHttpInfo(studyKey: string, componentsSchemasRecordCreateRequestItem: Array<ComponentsSchemasRecordCreateRequestItem>, _options?: ConfigurationOptions): Observable<HttpInfo<RecordJobStatus>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.createRecords(studyKey, componentsSchemasRecordCreateRequestItem, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.createRecordsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Add new record or update subject/record data
     * @param studyKey Study key identifying the study context for the request
     * @param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
     */
    public createRecords(studyKey: string, componentsSchemasRecordCreateRequestItem: Array<ComponentsSchemasRecordCreateRequestItem>, _options?: ConfigurationOptions): Observable<RecordJobStatus> {
        return this.createRecordsWithHttpInfo(studyKey, componentsSchemasRecordCreateRequestItem, _options).pipe(map((apiResponse: HttpInfo<RecordJobStatus>) => apiResponse.data));
    }

    /**
     * List records (eCRF instances) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * @param [recordDataFilter] Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listRecordsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, recordDataFilter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<RecordList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listRecords(studyKey, page, size, sort, filter, recordDataFilter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listRecordsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List records (eCRF instances) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * @param [recordDataFilter] Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listRecords(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, recordDataFilter?: string, _options?: ConfigurationOptions): Observable<RecordList> {
        return this.listRecordsWithHttpInfo(studyKey, page, size, sort, filter, recordDataFilter, _options).pipe(map((apiResponse: HttpInfo<RecordList>) => apiResponse.data));
    }

}

import { SitesApiRequestFactory, SitesApiResponseProcessor} from "../apis/SitesApi";
export class ObservableSitesApi {
    private requestFactory: SitesApiRequestFactory;
    private responseProcessor: SitesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: SitesApiRequestFactory,
        responseProcessor?: SitesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new SitesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new SitesApiResponseProcessor();
    }

    /**
     * List sites for a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSitesWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<SiteList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listSites(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listSitesWithHttpInfo(rsp)));
            }));
    }

    /**
     * List sites for a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSites(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<SiteList> {
        return this.listSitesWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<SiteList>) => apiResponse.data));
    }

}

import { StudiesApiRequestFactory, StudiesApiResponseProcessor} from "../apis/StudiesApi";
export class ObservableStudiesApi {
    private requestFactory: StudiesApiRequestFactory;
    private responseProcessor: StudiesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: StudiesApiRequestFactory,
        responseProcessor?: StudiesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new StudiesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new StudiesApiResponseProcessor();
    }

    /**
     * List studies accessible by API key
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listStudiesWithHttpInfo(page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<StudyList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listStudies(page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listStudiesWithHttpInfo(rsp)));
            }));
    }

    /**
     * List studies accessible by API key
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listStudies(page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<StudyList> {
        return this.listStudiesWithHttpInfo(page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<StudyList>) => apiResponse.data));
    }

}

import { SubjectsApiRequestFactory, SubjectsApiResponseProcessor} from "../apis/SubjectsApi";
export class ObservableSubjectsApi {
    private requestFactory: SubjectsApiRequestFactory;
    private responseProcessor: SubjectsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: SubjectsApiRequestFactory,
        responseProcessor?: SubjectsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new SubjectsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new SubjectsApiResponseProcessor();
    }

    /**
     * List subjects in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSubjectsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<SubjectList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listSubjects(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listSubjectsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List subjects in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSubjects(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<SubjectList> {
        return this.listSubjectsWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<SubjectList>) => apiResponse.data));
    }

}

import { VariablesApiRequestFactory, VariablesApiResponseProcessor} from "../apis/VariablesApi";
export class ObservableVariablesApi {
    private requestFactory: VariablesApiRequestFactory;
    private responseProcessor: VariablesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: VariablesApiRequestFactory,
        responseProcessor?: VariablesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new VariablesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new VariablesApiResponseProcessor();
    }

    /**
     * List variables (fields) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVariablesWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<VariableList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listVariables(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listVariablesWithHttpInfo(rsp)));
            }));
    }

    /**
     * List variables (fields) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVariables(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<VariableList> {
        return this.listVariablesWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<VariableList>) => apiResponse.data));
    }

}

import { VisitsApiRequestFactory, VisitsApiResponseProcessor} from "../apis/VisitsApi";
export class ObservableVisitsApi {
    private requestFactory: VisitsApiRequestFactory;
    private responseProcessor: VisitsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: VisitsApiRequestFactory,
        responseProcessor?: VisitsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new VisitsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new VisitsApiResponseProcessor();
    }

    /**
     * List visits (subject visit instances) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVisitsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<HttpInfo<VisitList>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.listVisits(studyKey, page, size, sort, filter, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listVisitsWithHttpInfo(rsp)));
            }));
    }

    /**
     * List visits (subject visit instances) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVisits(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: ConfigurationOptions): Observable<VisitList> {
        return this.listVisitsWithHttpInfo(studyKey, page, size, sort, filter, _options).pipe(map((apiResponse: HttpInfo<VisitList>) => apiResponse.data));
    }

}
