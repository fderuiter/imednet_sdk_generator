import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, ConfigurationOptions } from '../configuration'
import type { Middleware } from '../middleware';

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

import { ObservableAdministrationApi } from "./ObservableAPI";
import { AdministrationApiRequestFactory, AdministrationApiResponseProcessor} from "../apis/AdministrationApi";

export interface AdministrationApiListUsersRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof AdministrationApilistUsers
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof AdministrationApilistUsers
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof AdministrationApilistUsers
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof AdministrationApilistUsers
     */
    sort?: string
    /**
     * For user listing, whether to include inactive users
     * Defaults to: false
     * @type boolean
     * @memberof AdministrationApilistUsers
     */
    includeInactive?: boolean
}

export class ObjectAdministrationApi {
    private api: ObservableAdministrationApi

    public constructor(configuration: Configuration, requestFactory?: AdministrationApiRequestFactory, responseProcessor?: AdministrationApiResponseProcessor) {
        this.api = new ObservableAdministrationApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List users and their roles in a study
     * @param param the request object
     */
    public listUsersWithHttpInfo(param: AdministrationApiListUsersRequest, options?: ConfigurationOptions): Promise<HttpInfo<UserList>> {
        return this.api.listUsersWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.includeInactive,  options).toPromise();
    }

    /**
     * List users and their roles in a study
     * @param param the request object
     */
    public listUsers(param: AdministrationApiListUsersRequest, options?: ConfigurationOptions): Promise<UserList> {
        return this.api.listUsers(param.studyKey, param.page, param.size, param.sort, param.includeInactive,  options).toPromise();
    }

}

import { ObservableCodingsApi } from "./ObservableAPI";
import { CodingsApiRequestFactory, CodingsApiResponseProcessor} from "../apis/CodingsApi";

export interface CodingsApiListCodingsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof CodingsApilistCodings
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof CodingsApilistCodings
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof CodingsApilistCodings
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof CodingsApilistCodings
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof CodingsApilistCodings
     */
    filter?: string
}

export class ObjectCodingsApi {
    private api: ObservableCodingsApi

    public constructor(configuration: Configuration, requestFactory?: CodingsApiRequestFactory, responseProcessor?: CodingsApiResponseProcessor) {
        this.api = new ObservableCodingsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List coding activities in a study
     * @param param the request object
     */
    public listCodingsWithHttpInfo(param: CodingsApiListCodingsRequest, options?: ConfigurationOptions): Promise<HttpInfo<CodingList>> {
        return this.api.listCodingsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List coding activities in a study
     * @param param the request object
     */
    public listCodings(param: CodingsApiListCodingsRequest, options?: ConfigurationOptions): Promise<CodingList> {
        return this.api.listCodings(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableFormsApi } from "./ObservableAPI";
import { FormsApiRequestFactory, FormsApiResponseProcessor} from "../apis/FormsApi";

export interface FormsApiListFormsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof FormsApilistForms
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof FormsApilistForms
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof FormsApilistForms
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof FormsApilistForms
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof FormsApilistForms
     */
    filter?: string
}

export class ObjectFormsApi {
    private api: ObservableFormsApi

    public constructor(configuration: Configuration, requestFactory?: FormsApiRequestFactory, responseProcessor?: FormsApiResponseProcessor) {
        this.api = new ObservableFormsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List forms in a study
     * @param param the request object
     */
    public listFormsWithHttpInfo(param: FormsApiListFormsRequest, options?: ConfigurationOptions): Promise<HttpInfo<FormList>> {
        return this.api.listFormsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List forms in a study
     * @param param the request object
     */
    public listForms(param: FormsApiListFormsRequest, options?: ConfigurationOptions): Promise<FormList> {
        return this.api.listForms(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableIntervalsApi } from "./ObservableAPI";
import { IntervalsApiRequestFactory, IntervalsApiResponseProcessor} from "../apis/IntervalsApi";

export interface IntervalsApiListIntervalsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof IntervalsApilistIntervals
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof IntervalsApilistIntervals
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof IntervalsApilistIntervals
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof IntervalsApilistIntervals
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof IntervalsApilistIntervals
     */
    filter?: string
}

export class ObjectIntervalsApi {
    private api: ObservableIntervalsApi

    public constructor(configuration: Configuration, requestFactory?: IntervalsApiRequestFactory, responseProcessor?: IntervalsApiResponseProcessor) {
        this.api = new ObservableIntervalsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List intervals (visit definitions) in a study
     * @param param the request object
     */
    public listIntervalsWithHttpInfo(param: IntervalsApiListIntervalsRequest, options?: ConfigurationOptions): Promise<HttpInfo<IntervalList>> {
        return this.api.listIntervalsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List intervals (visit definitions) in a study
     * @param param the request object
     */
    public listIntervals(param: IntervalsApiListIntervalsRequest, options?: ConfigurationOptions): Promise<IntervalList> {
        return this.api.listIntervals(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableJobsApi } from "./ObservableAPI";
import { JobsApiRequestFactory, JobsApiResponseProcessor} from "../apis/JobsApi";

export interface JobsApiGetJobStatusRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof JobsApigetJobStatus
     */
    studyKey: string
    /**
     * Batch ID of the job to retrieve
     * Defaults to: undefined
     * @type string
     * @memberof JobsApigetJobStatus
     */
    batchId: string
}

export class ObjectJobsApi {
    private api: ObservableJobsApi

    public constructor(configuration: Configuration, requestFactory?: JobsApiRequestFactory, responseProcessor?: JobsApiResponseProcessor) {
        this.api = new ObservableJobsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Retrieve job status by batch ID
     * @param param the request object
     */
    public getJobStatusWithHttpInfo(param: JobsApiGetJobStatusRequest, options?: ConfigurationOptions): Promise<HttpInfo<Job>> {
        return this.api.getJobStatusWithHttpInfo(param.studyKey, param.batchId,  options).toPromise();
    }

    /**
     * Retrieve job status by batch ID
     * @param param the request object
     */
    public getJobStatus(param: JobsApiGetJobStatusRequest, options?: ConfigurationOptions): Promise<Job> {
        return this.api.getJobStatus(param.studyKey, param.batchId,  options).toPromise();
    }

}

import { ObservableQueriesApi } from "./ObservableAPI";
import { QueriesApiRequestFactory, QueriesApiResponseProcessor} from "../apis/QueriesApi";

export interface QueriesApiListQueriesRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof QueriesApilistQueries
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof QueriesApilistQueries
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof QueriesApilistQueries
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof QueriesApilistQueries
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof QueriesApilistQueries
     */
    filter?: string
}

export class ObjectQueriesApi {
    private api: ObservableQueriesApi

    public constructor(configuration: Configuration, requestFactory?: QueriesApiRequestFactory, responseProcessor?: QueriesApiResponseProcessor) {
        this.api = new ObservableQueriesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List data queries in a study
     * @param param the request object
     */
    public listQueriesWithHttpInfo(param: QueriesApiListQueriesRequest, options?: ConfigurationOptions): Promise<HttpInfo<QueryList>> {
        return this.api.listQueriesWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List data queries in a study
     * @param param the request object
     */
    public listQueries(param: QueriesApiListQueriesRequest, options?: ConfigurationOptions): Promise<QueryList> {
        return this.api.listQueries(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableRecordRevisionsApi } from "./ObservableAPI";
import { RecordRevisionsApiRequestFactory, RecordRevisionsApiResponseProcessor} from "../apis/RecordRevisionsApi";

export interface RecordRevisionsApiListRecordRevisionsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof RecordRevisionsApilistRecordRevisions
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof RecordRevisionsApilistRecordRevisions
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof RecordRevisionsApilistRecordRevisions
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof RecordRevisionsApilistRecordRevisions
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof RecordRevisionsApilistRecordRevisions
     */
    filter?: string
}

export class ObjectRecordRevisionsApi {
    private api: ObservableRecordRevisionsApi

    public constructor(configuration: Configuration, requestFactory?: RecordRevisionsApiRequestFactory, responseProcessor?: RecordRevisionsApiResponseProcessor) {
        this.api = new ObservableRecordRevisionsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param param the request object
     */
    public listRecordRevisionsWithHttpInfo(param: RecordRevisionsApiListRecordRevisionsRequest, options?: ConfigurationOptions): Promise<HttpInfo<RecordRevisionList>> {
        return this.api.listRecordRevisionsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param param the request object
     */
    public listRecordRevisions(param: RecordRevisionsApiListRecordRevisionsRequest, options?: ConfigurationOptions): Promise<RecordRevisionList> {
        return this.api.listRecordRevisions(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableRecordsApi } from "./ObservableAPI";
import { RecordsApiRequestFactory, RecordsApiResponseProcessor} from "../apis/RecordsApi";

export interface RecordsApiCreateRecordsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof RecordsApicreateRecords
     */
    studyKey: string
    /**
     * An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
     * @type Array&lt;ComponentsSchemasRecordCreateRequestItem&gt;
     * @memberof RecordsApicreateRecords
     */
    componentsSchemasRecordCreateRequestItem: Array<ComponentsSchemasRecordCreateRequestItem>
}

export interface RecordsApiListRecordsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof RecordsApilistRecords
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof RecordsApilistRecords
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof RecordsApilistRecords
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof RecordsApilistRecords
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof RecordsApilistRecords
     */
    filter?: string
    /**
     * Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof RecordsApilistRecords
     */
    recordDataFilter?: string
}

export class ObjectRecordsApi {
    private api: ObservableRecordsApi

    public constructor(configuration: Configuration, requestFactory?: RecordsApiRequestFactory, responseProcessor?: RecordsApiResponseProcessor) {
        this.api = new ObservableRecordsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Add new record or update subject/record data
     * @param param the request object
     */
    public createRecordsWithHttpInfo(param: RecordsApiCreateRecordsRequest, options?: ConfigurationOptions): Promise<HttpInfo<RecordJobStatus>> {
        return this.api.createRecordsWithHttpInfo(param.studyKey, param.componentsSchemasRecordCreateRequestItem,  options).toPromise();
    }

    /**
     * Add new record or update subject/record data
     * @param param the request object
     */
    public createRecords(param: RecordsApiCreateRecordsRequest, options?: ConfigurationOptions): Promise<RecordJobStatus> {
        return this.api.createRecords(param.studyKey, param.componentsSchemasRecordCreateRequestItem,  options).toPromise();
    }

    /**
     * List records (eCRF instances) in a study
     * @param param the request object
     */
    public listRecordsWithHttpInfo(param: RecordsApiListRecordsRequest, options?: ConfigurationOptions): Promise<HttpInfo<RecordList>> {
        return this.api.listRecordsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter, param.recordDataFilter,  options).toPromise();
    }

    /**
     * List records (eCRF instances) in a study
     * @param param the request object
     */
    public listRecords(param: RecordsApiListRecordsRequest, options?: ConfigurationOptions): Promise<RecordList> {
        return this.api.listRecords(param.studyKey, param.page, param.size, param.sort, param.filter, param.recordDataFilter,  options).toPromise();
    }

}

import { ObservableSitesApi } from "./ObservableAPI";
import { SitesApiRequestFactory, SitesApiResponseProcessor} from "../apis/SitesApi";

export interface SitesApiListSitesRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof SitesApilistSites
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof SitesApilistSites
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof SitesApilistSites
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof SitesApilistSites
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof SitesApilistSites
     */
    filter?: string
}

export class ObjectSitesApi {
    private api: ObservableSitesApi

    public constructor(configuration: Configuration, requestFactory?: SitesApiRequestFactory, responseProcessor?: SitesApiResponseProcessor) {
        this.api = new ObservableSitesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List sites for a study
     * @param param the request object
     */
    public listSitesWithHttpInfo(param: SitesApiListSitesRequest, options?: ConfigurationOptions): Promise<HttpInfo<SiteList>> {
        return this.api.listSitesWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List sites for a study
     * @param param the request object
     */
    public listSites(param: SitesApiListSitesRequest, options?: ConfigurationOptions): Promise<SiteList> {
        return this.api.listSites(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableStudiesApi } from "./ObservableAPI";
import { StudiesApiRequestFactory, StudiesApiResponseProcessor} from "../apis/StudiesApi";

export interface StudiesApiListStudiesRequest {
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof StudiesApilistStudies
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof StudiesApilistStudies
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof StudiesApilistStudies
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof StudiesApilistStudies
     */
    filter?: string
}

export class ObjectStudiesApi {
    private api: ObservableStudiesApi

    public constructor(configuration: Configuration, requestFactory?: StudiesApiRequestFactory, responseProcessor?: StudiesApiResponseProcessor) {
        this.api = new ObservableStudiesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List studies accessible by API key
     * @param param the request object
     */
    public listStudiesWithHttpInfo(param: StudiesApiListStudiesRequest = {}, options?: ConfigurationOptions): Promise<HttpInfo<StudyList>> {
        return this.api.listStudiesWithHttpInfo(param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List studies accessible by API key
     * @param param the request object
     */
    public listStudies(param: StudiesApiListStudiesRequest = {}, options?: ConfigurationOptions): Promise<StudyList> {
        return this.api.listStudies(param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableSubjectsApi } from "./ObservableAPI";
import { SubjectsApiRequestFactory, SubjectsApiResponseProcessor} from "../apis/SubjectsApi";

export interface SubjectsApiListSubjectsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof SubjectsApilistSubjects
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof SubjectsApilistSubjects
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof SubjectsApilistSubjects
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof SubjectsApilistSubjects
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof SubjectsApilistSubjects
     */
    filter?: string
}

export class ObjectSubjectsApi {
    private api: ObservableSubjectsApi

    public constructor(configuration: Configuration, requestFactory?: SubjectsApiRequestFactory, responseProcessor?: SubjectsApiResponseProcessor) {
        this.api = new ObservableSubjectsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List subjects in a study
     * @param param the request object
     */
    public listSubjectsWithHttpInfo(param: SubjectsApiListSubjectsRequest, options?: ConfigurationOptions): Promise<HttpInfo<SubjectList>> {
        return this.api.listSubjectsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List subjects in a study
     * @param param the request object
     */
    public listSubjects(param: SubjectsApiListSubjectsRequest, options?: ConfigurationOptions): Promise<SubjectList> {
        return this.api.listSubjects(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableVariablesApi } from "./ObservableAPI";
import { VariablesApiRequestFactory, VariablesApiResponseProcessor} from "../apis/VariablesApi";

export interface VariablesApiListVariablesRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof VariablesApilistVariables
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof VariablesApilistVariables
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof VariablesApilistVariables
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof VariablesApilistVariables
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof VariablesApilistVariables
     */
    filter?: string
}

export class ObjectVariablesApi {
    private api: ObservableVariablesApi

    public constructor(configuration: Configuration, requestFactory?: VariablesApiRequestFactory, responseProcessor?: VariablesApiResponseProcessor) {
        this.api = new ObservableVariablesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List variables (fields) in a study
     * @param param the request object
     */
    public listVariablesWithHttpInfo(param: VariablesApiListVariablesRequest, options?: ConfigurationOptions): Promise<HttpInfo<VariableList>> {
        return this.api.listVariablesWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List variables (fields) in a study
     * @param param the request object
     */
    public listVariables(param: VariablesApiListVariablesRequest, options?: ConfigurationOptions): Promise<VariableList> {
        return this.api.listVariables(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}

import { ObservableVisitsApi } from "./ObservableAPI";
import { VisitsApiRequestFactory, VisitsApiResponseProcessor} from "../apis/VisitsApi";

export interface VisitsApiListVisitsRequest {
    /**
     * Study key identifying the study context for the request
     * Defaults to: undefined
     * @type string
     * @memberof VisitsApilistVisits
     */
    studyKey: string
    /**
     * Page index to retrieve (0-based)
     * Minimum: 0
     * Defaults to: 0
     * @type number
     * @memberof VisitsApilistVisits
     */
    page?: number
    /**
     * Number of items to return per page (max 500)
     * Minimum: 1
     * Maximum: 500
     * Defaults to: 25
     * @type number
     * @memberof VisitsApilistVisits
     */
    size?: number
    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * Defaults to: undefined
     * @type string
     * @memberof VisitsApilistVisits
     */
    sort?: string
    /**
     * Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR).
     * Defaults to: undefined
     * @type string
     * @memberof VisitsApilistVisits
     */
    filter?: string
}

export class ObjectVisitsApi {
    private api: ObservableVisitsApi

    public constructor(configuration: Configuration, requestFactory?: VisitsApiRequestFactory, responseProcessor?: VisitsApiResponseProcessor) {
        this.api = new ObservableVisitsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * List visits (subject visit instances) in a study
     * @param param the request object
     */
    public listVisitsWithHttpInfo(param: VisitsApiListVisitsRequest, options?: ConfigurationOptions): Promise<HttpInfo<VisitList>> {
        return this.api.listVisitsWithHttpInfo(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

    /**
     * List visits (subject visit instances) in a study
     * @param param the request object
     */
    public listVisits(param: VisitsApiListVisitsRequest, options?: ConfigurationOptions): Promise<VisitList> {
        return this.api.listVisits(param.studyKey, param.page, param.size, param.sort, param.filter,  options).toPromise();
    }

}
