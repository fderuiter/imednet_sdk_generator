# Documentation for OpenAPI Petstore
This is a client generator for microcontrollers on the Espressif32 platform and the Arduino framework
After the client have been generated, you have to change these following variables:
- root.cert | Provide your service root certificate.
- src/main.cpp | Change wifi name
- src/main.cpp | Change wifi password
- lib/service/AbstractService.h | Change to your url

# Documentation for Mednet EDC API 1.3.6 Tiny client cpp (Arduino) 

The project is structured like this:
```
samples/client/petstore/tiny/cpp/
├── lib
│   ├── Models
│   ├── service
│   └── TestFiles
├── platformio.ini
├── pre_compiling_bourne.py
├── README.md
├── root.cert
├── src
│   └── main.cpp
└── test
    └── RunTests.cpp
```

All URIs are relative to https://edc.prod.imednetapi.comhttps://edc.prod.imednetapi.com/api/v1/edc

### AdministrationApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listUsers* | *GET* /studies/{studyKey}/users | List users and their roles in a study.|

### CodingsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listCodings* | *GET* /studies/{studyKey}/codings | List coding activities in a study.|

### FormsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listForms* | *GET* /studies/{studyKey}/forms | List forms in a study.|

### IntervalsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listIntervals* | *GET* /studies/{studyKey}/intervals | List intervals (visit definitions) in a study.|

### JobsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*getJobStatus* | *GET* /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID.|

### QueriesApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listQueries* | *GET* /studies/{studyKey}/queries | List data queries in a study.|

### RecordRevisionsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listRecordRevisions* | *GET* /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study.|

### RecordsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*createRecords* | *POST* /studies/{studyKey}/records | Add new record or update subject/record data.|
|*listRecords* | *GET* /studies/{studyKey}/records | List records (eCRF instances) in a study.|

### SitesApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listSites* | *GET* /studies/{studyKey}/sites | List sites for a study.|

### StudiesApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listStudies* | *GET* /studies | List studies accessible by API key.|

### SubjectsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listSubjects* | *GET* /studies/{studyKey}/subjects | List subjects in a study.|

### VariablesApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listVariables* | *GET* /studies/{studyKey}/variables | List variables (fields) in a study.|

### VisitsApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*listVisits* | *GET* /studies/{studyKey}/visits | List visits (subject visit instances) in a study.|


## What are the Model files for the data structures/objects?
|Class | Description|
|------------- | -------------|
|*Coding* | |
|*CodingList* | |
|*Components_schemas_Interval_forms_item* | |
|*Components_schemas_Metadata_error* | Error details if an error occurred|
|*Components_schemas_RecordCreateRequest_item* | |
|*Form* | |
|*FormList* | |
|*Inline_object* | |
|*Inline_object_1* | |
|*Inline_object_2* | |
|*Inline_object_3* | |
|*Inline_object_4* | |
|*Inline_object_5* | |
|*Interval* | |
|*IntervalList* | |
|*Job* | |
|*Keyword* | |
|*Metadata* | |
|*Pagination* | |
|*Query* | |
|*QueryComment* | |
|*QueryList* | |
|*Record* | |
|*RecordJobStatus* | |
|*RecordList* | |
|*RecordRevision* | |
|*RecordRevisionList* | |
|*Role* | |
|*Site* | |
|*SiteList* | |
|*Sort* | |
|*Study* | |
|*StudyList* | |
|*Subject* | |
|*SubjectList* | |
|*User* | |
|*UserList* | |
|*Variable* | |
|*VariableList* | |
|*Visit* | |
|*VisitList* | |

