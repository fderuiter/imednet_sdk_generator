import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, PromiseConfigurationOptions, wrapOptions } from '../configuration'
import { PromiseMiddleware, Middleware, PromiseMiddlewareWrapper } from '../middleware';

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
import { ObservableAdministrationApi } from './ObservableAPI';

import { AdministrationApiRequestFactory, AdministrationApiResponseProcessor} from "../apis/AdministrationApi";
export class PromiseAdministrationApi {
    private api: ObservableAdministrationApi

    public constructor(
        configuration: Configuration,
        requestFactory?: AdministrationApiRequestFactory,
        responseProcessor?: AdministrationApiResponseProcessor
    ) {
        this.api = new ObservableAdministrationApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List users and their roles in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [includeInactive] For user listing, whether to include inactive users
     */
    public listUsersWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, includeInactive?: boolean, _options?: PromiseConfigurationOptions): Promise<HttpInfo<UserList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listUsersWithHttpInfo(studyKey, page, size, sort, includeInactive, observableOptions);
        return result.toPromise();
    }

    /**
     * List users and their roles in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [includeInactive] For user listing, whether to include inactive users
     */
    public listUsers(studyKey: string, page?: number, size?: number, sort?: string, includeInactive?: boolean, _options?: PromiseConfigurationOptions): Promise<UserList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listUsers(studyKey, page, size, sort, includeInactive, observableOptions);
        return result.toPromise();
    }


}



import { ObservableCodingsApi } from './ObservableAPI';

import { CodingsApiRequestFactory, CodingsApiResponseProcessor} from "../apis/CodingsApi";
export class PromiseCodingsApi {
    private api: ObservableCodingsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: CodingsApiRequestFactory,
        responseProcessor?: CodingsApiResponseProcessor
    ) {
        this.api = new ObservableCodingsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List coding activities in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listCodingsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<CodingList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listCodingsWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List coding activities in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listCodings(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<CodingList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listCodings(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableFormsApi } from './ObservableAPI';

import { FormsApiRequestFactory, FormsApiResponseProcessor} from "../apis/FormsApi";
export class PromiseFormsApi {
    private api: ObservableFormsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: FormsApiRequestFactory,
        responseProcessor?: FormsApiResponseProcessor
    ) {
        this.api = new ObservableFormsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List forms in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listFormsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<FormList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listFormsWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List forms in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listForms(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<FormList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listForms(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableIntervalsApi } from './ObservableAPI';

import { IntervalsApiRequestFactory, IntervalsApiResponseProcessor} from "../apis/IntervalsApi";
export class PromiseIntervalsApi {
    private api: ObservableIntervalsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: IntervalsApiRequestFactory,
        responseProcessor?: IntervalsApiResponseProcessor
    ) {
        this.api = new ObservableIntervalsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List intervals (visit definitions) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listIntervalsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<IntervalList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listIntervalsWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List intervals (visit definitions) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listIntervals(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<IntervalList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listIntervals(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableJobsApi } from './ObservableAPI';

import { JobsApiRequestFactory, JobsApiResponseProcessor} from "../apis/JobsApi";
export class PromiseJobsApi {
    private api: ObservableJobsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: JobsApiRequestFactory,
        responseProcessor?: JobsApiResponseProcessor
    ) {
        this.api = new ObservableJobsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Retrieve job status by batch ID
     * @param studyKey Study key identifying the study context for the request
     * @param batchId Batch ID of the job to retrieve
     */
    public getJobStatusWithHttpInfo(studyKey: string, batchId: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<Job>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.getJobStatusWithHttpInfo(studyKey, batchId, observableOptions);
        return result.toPromise();
    }

    /**
     * Retrieve job status by batch ID
     * @param studyKey Study key identifying the study context for the request
     * @param batchId Batch ID of the job to retrieve
     */
    public getJobStatus(studyKey: string, batchId: string, _options?: PromiseConfigurationOptions): Promise<Job> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.getJobStatus(studyKey, batchId, observableOptions);
        return result.toPromise();
    }


}



import { ObservableQueriesApi } from './ObservableAPI';

import { QueriesApiRequestFactory, QueriesApiResponseProcessor} from "../apis/QueriesApi";
export class PromiseQueriesApi {
    private api: ObservableQueriesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: QueriesApiRequestFactory,
        responseProcessor?: QueriesApiResponseProcessor
    ) {
        this.api = new ObservableQueriesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List data queries in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listQueriesWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<QueryList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listQueriesWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List data queries in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listQueries(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<QueryList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listQueries(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableRecordRevisionsApi } from './ObservableAPI';

import { RecordRevisionsApiRequestFactory, RecordRevisionsApiResponseProcessor} from "../apis/RecordRevisionsApi";
export class PromiseRecordRevisionsApi {
    private api: ObservableRecordRevisionsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: RecordRevisionsApiRequestFactory,
        responseProcessor?: RecordRevisionsApiResponseProcessor
    ) {
        this.api = new ObservableRecordRevisionsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listRecordRevisionsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<RecordRevisionList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listRecordRevisionsWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listRecordRevisions(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<RecordRevisionList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listRecordRevisions(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableRecordsApi } from './ObservableAPI';

import { RecordsApiRequestFactory, RecordsApiResponseProcessor} from "../apis/RecordsApi";
export class PromiseRecordsApi {
    private api: ObservableRecordsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: RecordsApiRequestFactory,
        responseProcessor?: RecordsApiResponseProcessor
    ) {
        this.api = new ObservableRecordsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Add new record or update subject/record data
     * @param studyKey Study key identifying the study context for the request
     * @param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
     */
    public createRecordsWithHttpInfo(studyKey: string, componentsSchemasRecordCreateRequestItem: Array<ComponentsSchemasRecordCreateRequestItem>, _options?: PromiseConfigurationOptions): Promise<HttpInfo<RecordJobStatus>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.createRecordsWithHttpInfo(studyKey, componentsSchemasRecordCreateRequestItem, observableOptions);
        return result.toPromise();
    }

    /**
     * Add new record or update subject/record data
     * @param studyKey Study key identifying the study context for the request
     * @param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
     */
    public createRecords(studyKey: string, componentsSchemasRecordCreateRequestItem: Array<ComponentsSchemasRecordCreateRequestItem>, _options?: PromiseConfigurationOptions): Promise<RecordJobStatus> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.createRecords(studyKey, componentsSchemasRecordCreateRequestItem, observableOptions);
        return result.toPromise();
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
    public listRecordsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, recordDataFilter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<RecordList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listRecordsWithHttpInfo(studyKey, page, size, sort, filter, recordDataFilter, observableOptions);
        return result.toPromise();
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
    public listRecords(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, recordDataFilter?: string, _options?: PromiseConfigurationOptions): Promise<RecordList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listRecords(studyKey, page, size, sort, filter, recordDataFilter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableSitesApi } from './ObservableAPI';

import { SitesApiRequestFactory, SitesApiResponseProcessor} from "../apis/SitesApi";
export class PromiseSitesApi {
    private api: ObservableSitesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: SitesApiRequestFactory,
        responseProcessor?: SitesApiResponseProcessor
    ) {
        this.api = new ObservableSitesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List sites for a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSitesWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<SiteList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listSitesWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List sites for a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSites(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<SiteList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listSites(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableStudiesApi } from './ObservableAPI';

import { StudiesApiRequestFactory, StudiesApiResponseProcessor} from "../apis/StudiesApi";
export class PromiseStudiesApi {
    private api: ObservableStudiesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: StudiesApiRequestFactory,
        responseProcessor?: StudiesApiResponseProcessor
    ) {
        this.api = new ObservableStudiesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List studies accessible by API key
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listStudiesWithHttpInfo(page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<StudyList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listStudiesWithHttpInfo(page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List studies accessible by API key
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listStudies(page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<StudyList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listStudies(page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableSubjectsApi } from './ObservableAPI';

import { SubjectsApiRequestFactory, SubjectsApiResponseProcessor} from "../apis/SubjectsApi";
export class PromiseSubjectsApi {
    private api: ObservableSubjectsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: SubjectsApiRequestFactory,
        responseProcessor?: SubjectsApiResponseProcessor
    ) {
        this.api = new ObservableSubjectsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List subjects in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSubjectsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<SubjectList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listSubjectsWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List subjects in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listSubjects(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<SubjectList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listSubjects(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableVariablesApi } from './ObservableAPI';

import { VariablesApiRequestFactory, VariablesApiResponseProcessor} from "../apis/VariablesApi";
export class PromiseVariablesApi {
    private api: ObservableVariablesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: VariablesApiRequestFactory,
        responseProcessor?: VariablesApiResponseProcessor
    ) {
        this.api = new ObservableVariablesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List variables (fields) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVariablesWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<VariableList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listVariablesWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List variables (fields) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVariables(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<VariableList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listVariables(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



import { ObservableVisitsApi } from './ObservableAPI';

import { VisitsApiRequestFactory, VisitsApiResponseProcessor} from "../apis/VisitsApi";
export class PromiseVisitsApi {
    private api: ObservableVisitsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: VisitsApiRequestFactory,
        responseProcessor?: VisitsApiResponseProcessor
    ) {
        this.api = new ObservableVisitsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List visits (subject visit instances) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVisitsWithHttpInfo(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<HttpInfo<VisitList>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listVisitsWithHttpInfo(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }

    /**
     * List visits (subject visit instances) in a study
     * @param studyKey Study key identifying the study context for the request
     * @param [page] Page index to retrieve (0-based)
     * @param [size] Number of items to return per page (max 500)
     * @param [sort] Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @param [filter] Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     */
    public listVisits(studyKey: string, page?: number, size?: number, sort?: string, filter?: string, _options?: PromiseConfigurationOptions): Promise<VisitList> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.listVisits(studyKey, page, size, sort, filter, observableOptions);
        return result.toPromise();
    }


}



