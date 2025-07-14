# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.AdministrationApi;

public class AdministrationApiExample {

    public static void main(String[] args) {
        AdministrationApi apiInstance = new AdministrationApi();
        String studyKey = null; // String | Study key identifying the study context for the request
        Integer page = 0; // Integer | Page index to retrieve (0-based)
        Integer size = 25; // Integer | Number of items to return per page (max 500)
        String sort = null; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
        Boolean includeInactive = false; // Boolean | For user listing, whether to include inactive users
        try {
            UserList result = apiInstance.listUsers(studyKey, page, size, sort, includeInactive);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AdministrationApi#listUsers");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdministrationApi* | [**listUsers**](docs/AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study
*CodingsApi* | [**listCodings**](docs/CodingsApi.md#listCodings) | **GET** /studies/{studyKey}/codings | List coding activities in a study
*FormsApi* | [**listForms**](docs/FormsApi.md#listForms) | **GET** /studies/{studyKey}/forms | List forms in a study
*IntervalsApi* | [**listIntervals**](docs/IntervalsApi.md#listIntervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study
*JobsApi* | [**getJobStatus**](docs/JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID
*QueriesApi* | [**listQueries**](docs/QueriesApi.md#listQueries) | **GET** /studies/{studyKey}/queries | List data queries in a study
*RecordRevisionsApi* | [**listRecordRevisions**](docs/RecordRevisionsApi.md#listRecordRevisions) | **GET** /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study
*RecordsApi* | [**createRecords**](docs/RecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
*RecordsApi* | [**listRecords**](docs/RecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study
*SitesApi* | [**listSites**](docs/SitesApi.md#listSites) | **GET** /studies/{studyKey}/sites | List sites for a study
*StudiesApi* | [**listStudies**](docs/StudiesApi.md#listStudies) | **GET** /studies | List studies accessible by API key
*SubjectsApi* | [**listSubjects**](docs/SubjectsApi.md#listSubjects) | **GET** /studies/{studyKey}/subjects | List subjects in a study
*VariablesApi* | [**listVariables**](docs/VariablesApi.md#listVariables) | **GET** /studies/{studyKey}/variables | List variables (fields) in a study
*VisitsApi* | [**listVisits**](docs/VisitsApi.md#listVisits) | **GET** /studies/{studyKey}/visits | List visits (subject visit instances) in a study


## Documentation for Models

 - [Coding](docs/Coding.md)
 - [CodingList](docs/CodingList.md)
 - [ComponentsSchemasIntervalFormsItem](docs/ComponentsSchemasIntervalFormsItem.md)
 - [ComponentsSchemasMetadataError](docs/ComponentsSchemasMetadataError.md)
 - [ComponentsSchemasRecordCreateRequestItem](docs/ComponentsSchemasRecordCreateRequestItem.md)
 - [Form](docs/Form.md)
 - [FormList](docs/FormList.md)
 - [InlineObject](docs/InlineObject.md)
 - [InlineObject1](docs/InlineObject1.md)
 - [InlineObject2](docs/InlineObject2.md)
 - [InlineObject3](docs/InlineObject3.md)
 - [InlineObject4](docs/InlineObject4.md)
 - [InlineObject5](docs/InlineObject5.md)
 - [Interval](docs/Interval.md)
 - [IntervalList](docs/IntervalList.md)
 - [Job](docs/Job.md)
 - [Keyword](docs/Keyword.md)
 - [Metadata](docs/Metadata.md)
 - [Pagination](docs/Pagination.md)
 - [Query](docs/Query.md)
 - [QueryComment](docs/QueryComment.md)
 - [QueryList](docs/QueryList.md)
 - [Record](docs/Record.md)
 - [RecordJobStatus](docs/RecordJobStatus.md)
 - [RecordList](docs/RecordList.md)
 - [RecordRevision](docs/RecordRevision.md)
 - [RecordRevisionList](docs/RecordRevisionList.md)
 - [Role](docs/Role.md)
 - [Site](docs/Site.md)
 - [SiteList](docs/SiteList.md)
 - [Sort](docs/Sort.md)
 - [Study](docs/Study.md)
 - [StudyList](docs/StudyList.md)
 - [Subject](docs/Subject.md)
 - [SubjectList](docs/SubjectList.md)
 - [User](docs/User.md)
 - [UserList](docs/UserList.md)
 - [Variable](docs/Variable.md)
 - [VariableList](docs/VariableList.md)
 - [Visit](docs/Visit.md)
 - [VisitList](docs/VisitList.md)


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


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author



