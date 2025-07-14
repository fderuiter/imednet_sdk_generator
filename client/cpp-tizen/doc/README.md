# Documentation for Mednet EDC API 1.3.6 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in Mednet EDC API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://edc.prod.imednetapi.comhttps://edc.prod.imednetapi.com/api/v1/edc


### AdministrationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listUsersSync* | *GET* /studies/{studyKey}/users | List users and their roles in a study.
*listUsersASync* | *GET* /studies/{studyKey}/users | List users and their roles in a study.


### CodingsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listCodingsSync* | *GET* /studies/{studyKey}/codings | List coding activities in a study.
*listCodingsASync* | *GET* /studies/{studyKey}/codings | List coding activities in a study.


### FormsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listFormsSync* | *GET* /studies/{studyKey}/forms | List forms in a study.
*listFormsASync* | *GET* /studies/{studyKey}/forms | List forms in a study.


### IntervalsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listIntervalsSync* | *GET* /studies/{studyKey}/intervals | List intervals (visit definitions) in a study.
*listIntervalsASync* | *GET* /studies/{studyKey}/intervals | List intervals (visit definitions) in a study.


### JobsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*getJobStatusSync* | *GET* /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID.
*getJobStatusASync* | *GET* /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID.


### QueriesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listQueriesSync* | *GET* /studies/{studyKey}/queries | List data queries in a study.
*listQueriesASync* | *GET* /studies/{studyKey}/queries | List data queries in a study.


### RecordRevisionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listRecordRevisionsSync* | *GET* /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study.
*listRecordRevisionsASync* | *GET* /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study.


### RecordsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*createRecordsSync* | *POST* /studies/{studyKey}/records | Add new record or update subject/record data.
*createRecordsASync* | *POST* /studies/{studyKey}/records | Add new record or update subject/record data.
*listRecordsSync* | *GET* /studies/{studyKey}/records | List records (eCRF instances) in a study.
*listRecordsASync* | *GET* /studies/{studyKey}/records | List records (eCRF instances) in a study.


### SitesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listSitesSync* | *GET* /studies/{studyKey}/sites | List sites for a study.
*listSitesASync* | *GET* /studies/{studyKey}/sites | List sites for a study.


### StudiesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listStudiesSync* | *GET* /studies | List studies accessible by API key.
*listStudiesASync* | *GET* /studies | List studies accessible by API key.


### SubjectsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listSubjectsSync* | *GET* /studies/{studyKey}/subjects | List subjects in a study.
*listSubjectsASync* | *GET* /studies/{studyKey}/subjects | List subjects in a study.


### VariablesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listVariablesSync* | *GET* /studies/{studyKey}/variables | List variables (fields) in a study.
*listVariablesASync* | *GET* /studies/{studyKey}/variables | List variables (fields) in a study.


### VisitsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*listVisitsSync* | *GET* /studies/{studyKey}/visits | List visits (subject visit instances) in a study.
*listVisitsASync* | *GET* /studies/{studyKey}/visits | List visits (subject visit instances) in a study.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Coding* | 
 *CodingList* | 
 *Components_schemas_Interval_forms_item* | 
 *Components_schemas_Metadata_error* | Error details if an error occurred
 *Components_schemas_RecordCreateRequest_item* | 
 *Form* | 
 *FormList* | 
 *Inline_object* | 
 *Inline_object_1* | 
 *Inline_object_2* | 
 *Inline_object_3* | 
 *Inline_object_4* | 
 *Inline_object_5* | 
 *Interval* | 
 *IntervalList* | 
 *Job* | 
 *Keyword* | 
 *Metadata* | 
 *Pagination* | 
 *Query* | 
 *QueryComment* | 
 *QueryList* | 
 *Record* | 
 *RecordJobStatus* | 
 *RecordList* | 
 *RecordRevision* | 
 *RecordRevisionList* | 
 *Role* | 
 *Site* | 
 *SiteList* | 
 *Sort* | 
 *Study* | 
 *StudyList* | 
 *Subject* | 
 *SubjectList* | 
 *User* | 
 *UserList* | 
 *Variable* | 
 *VariableList* | 
 *Visit* | 
 *VisitList* | 

