export * from './administrationApi';
import { AdministrationApi } from './administrationApi';
export * from './codingsApi';
import { CodingsApi } from './codingsApi';
export * from './formsApi';
import { FormsApi } from './formsApi';
export * from './intervalsApi';
import { IntervalsApi } from './intervalsApi';
export * from './jobsApi';
import { JobsApi } from './jobsApi';
export * from './queriesApi';
import { QueriesApi } from './queriesApi';
export * from './recordRevisionsApi';
import { RecordRevisionsApi } from './recordRevisionsApi';
export * from './recordsApi';
import { RecordsApi } from './recordsApi';
export * from './sitesApi';
import { SitesApi } from './sitesApi';
export * from './studiesApi';
import { StudiesApi } from './studiesApi';
export * from './subjectsApi';
import { SubjectsApi } from './subjectsApi';
export * from './variablesApi';
import { VariablesApi } from './variablesApi';
export * from './visitsApi';
import { VisitsApi } from './visitsApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [AdministrationApi, CodingsApi, FormsApi, IntervalsApi, JobsApi, QueriesApi, RecordRevisionsApi, RecordsApi, SitesApi, StudiesApi, SubjectsApi, VariablesApi, VisitsApi];
