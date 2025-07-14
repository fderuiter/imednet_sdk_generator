# Mednet EDC API API Client


The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services.\nThis specification documents all available endpoints in the latest version of the API.\n

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASAdministrationApi api = new OASAdministrationApi();
OASClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'studyKey' => 'null',
    'page' => 0,
    'size' => 25,
    'r_sort' => 'null',
    'includeInactive' => ''
};

try {
    // cross your fingers
    OASUserList result = api.listUsers(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAdministrationApi* | [**listUsers**](OASAdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study
*OASCodingsApi* | [**listCodings**](OASCodingsApi.md#listCodings) | **GET** /studies/{studyKey}/codings | List coding activities in a study
*OASFormsApi* | [**listForms**](OASFormsApi.md#listForms) | **GET** /studies/{studyKey}/forms | List forms in a study
*OASIntervalsApi* | [**listIntervals**](OASIntervalsApi.md#listIntervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study
*OASJobsApi* | [**getJobStatus**](OASJobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID
*OASQueriesApi* | [**listQueries**](OASQueriesApi.md#listQueries) | **GET** /studies/{studyKey}/queries | List data queries in a study
*OASRecordRevisionsApi* | [**listRecordRevisions**](OASRecordRevisionsApi.md#listRecordRevisions) | **GET** /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study
*OASRecordsApi* | [**createRecords**](OASRecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
*OASRecordsApi* | [**listRecords**](OASRecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study
*OASSitesApi* | [**listSites**](OASSitesApi.md#listSites) | **GET** /studies/{studyKey}/sites | List sites for a study
*OASStudiesApi* | [**listStudies**](OASStudiesApi.md#listStudies) | **GET** /studies | List studies accessible by API key
*OASSubjectsApi* | [**listSubjects**](OASSubjectsApi.md#listSubjects) | **GET** /studies/{studyKey}/subjects | List subjects in a study
*OASVariablesApi* | [**listVariables**](OASVariablesApi.md#listVariables) | **GET** /studies/{studyKey}/variables | List variables (fields) in a study
*OASVisitsApi* | [**listVisits**](OASVisitsApi.md#listVisits) | **GET** /studies/{studyKey}/visits | List visits (subject visit instances) in a study


## Documentation for Models

 - [OASCoding](OASCoding.md)
 - [OASCodingList](OASCodingList.md)
 - [OASComponentsSchemasIntervalFormsIte](OASComponentsSchemasIntervalFormsIte.md)
 - [OASComponentsSchemasMetadataError](OASComponentsSchemasMetadataError.md)
 - [OASComponentsSchemasRecordCreateRequ](OASComponentsSchemasRecordCreateRequ.md)
 - [OASForm](OASForm.md)
 - [OASFormList](OASFormList.md)
 - [OASInlineObject](OASInlineObject.md)
 - [OASInlineObject1](OASInlineObject1.md)
 - [OASInlineObject2](OASInlineObject2.md)
 - [OASInlineObject3](OASInlineObject3.md)
 - [OASInlineObject4](OASInlineObject4.md)
 - [OASInlineObject5](OASInlineObject5.md)
 - [OASInterval](OASInterval.md)
 - [OASIntervalList](OASIntervalList.md)
 - [OASJob](OASJob.md)
 - [OASKeyword](OASKeyword.md)
 - [OASMetadata](OASMetadata.md)
 - [OASPagination](OASPagination.md)
 - [OASQuery](OASQuery.md)
 - [OASQueryComment](OASQueryComment.md)
 - [OASQueryList](OASQueryList.md)
 - [OASRecord](OASRecord.md)
 - [OASRecordJobStatus](OASRecordJobStatus.md)
 - [OASRecordList](OASRecordList.md)
 - [OASRecordRevision](OASRecordRevision.md)
 - [OASRecordRevisionList](OASRecordRevisionList.md)
 - [OASRole](OASRole.md)
 - [OASSite](OASSite.md)
 - [OASSiteList](OASSiteList.md)
 - [OASSort](OASSort.md)
 - [OASStudy](OASStudy.md)
 - [OASStudyList](OASStudyList.md)
 - [OASSubject](OASSubject.md)
 - [OASSubjectList](OASSubjectList.md)
 - [OASUser](OASUser.md)
 - [OASUserList](OASUserList.md)
 - [OASVariable](OASVariable.md)
 - [OASVariableList](OASVariableList.md)
 - [OASVisit](OASVisit.md)
 - [OASVisitList](OASVisitList.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### apiKeyAuth

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

### securityKeyAuth

- **Type**: API key
- **API key parameter name**: x-imn-security-key
- **Location**: HTTP header


## Author



