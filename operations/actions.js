const AdministrationApi = require('../apis/AdministrationApi');
const CodingsApi = require('../apis/CodingsApi');
const FormsApi = require('../apis/FormsApi');
const IntervalsApi = require('../apis/IntervalsApi');
const JobsApi = require('../apis/JobsApi');
const QueriesApi = require('../apis/QueriesApi');
const RecordRevisionsApi = require('../apis/RecordRevisionsApi');
const RecordsApi = require('../apis/RecordsApi');
const SitesApi = require('../apis/SitesApi');
const StudiesApi = require('../apis/StudiesApi');
const SubjectsApi = require('../apis/SubjectsApi');
const VariablesApi = require('../apis/VariablesApi');
const VisitsApi = require('../apis/VisitsApi');
const { triggerMiddleware, isTrigger, searchMiddleware, hasSearchRequisites, isSearchAction, isCreateAction, createMiddleware } = require('../utils/utils');

const actions = {
    [AdministrationApi.listUsers.key]: AdministrationApi.listUsers,
    [CodingsApi.listCodings.key]: CodingsApi.listCodings,
    [FormsApi.listForms.key]: FormsApi.listForms,
    [IntervalsApi.listIntervals.key]: IntervalsApi.listIntervals,
    [JobsApi.getJobStatus.key]: JobsApi.getJobStatus,
    [QueriesApi.listQueries.key]: QueriesApi.listQueries,
    [RecordRevisionsApi.listRecordRevisions.key]: RecordRevisionsApi.listRecordRevisions,
    [RecordsApi.createRecords.key]: RecordsApi.createRecords,
    [RecordsApi.listRecords.key]: RecordsApi.listRecords,
    [SitesApi.listSites.key]: SitesApi.listSites,
    [StudiesApi.listStudies.key]: StudiesApi.listStudies,
    [SubjectsApi.listSubjects.key]: SubjectsApi.listSubjects,
    [VariablesApi.listVariables.key]: VariablesApi.listVariables,
    [VisitsApi.listVisits.key]: VisitsApi.listVisits,
}

module.exports = {
    searchActions: () => Object.entries(actions).reduce((actions, [key, value]) => isSearchAction(key) && hasSearchRequisites(value) ? {...actions, [key]: searchMiddleware(value)} : actions, {}),
    createActions: () => Object.entries(actions).reduce((actions, [key, value]) => isCreateAction(key) ? {...actions, [key]: createMiddleware(value)} : actions, {}),
    triggers: () => Object.entries(actions).reduce((actions, [key, value]) => isTrigger(key) ? {...actions, [key]: triggerMiddleware(value)} : actions, {}),
}
