# OpenAPIClient-php

The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services.
This specification documents all available endpoints in the latest version of the API.



## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: apiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');

// Configure API key authorization: securityKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-imn-security-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-imn-security-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\AdministrationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$study_key = 'study_key_example'; // string | Study key identifying the study context for the request
$page = 0; // int | Page index to retrieve (0-based)
$size = 25; // int | Number of items to return per page (max 500)
$sort = 'sort_example'; // string | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
$include_inactive = false; // bool | For user listing, whether to include inactive users

try {
    $result = $apiInstance->listUsers($study_key, $page, $size, $sort, $include_inactive);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdministrationApi->listUsers: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdministrationApi* | [**listUsers**](docs/Api/AdministrationApi.md#listusers) | **GET** /studies/{studyKey}/users | List users and their roles in a study
*CodingsApi* | [**listCodings**](docs/Api/CodingsApi.md#listcodings) | **GET** /studies/{studyKey}/codings | List coding activities in a study
*FormsApi* | [**listForms**](docs/Api/FormsApi.md#listforms) | **GET** /studies/{studyKey}/forms | List forms in a study
*IntervalsApi* | [**listIntervals**](docs/Api/IntervalsApi.md#listintervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study
*JobsApi* | [**getJobStatus**](docs/Api/JobsApi.md#getjobstatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID
*QueriesApi* | [**listQueries**](docs/Api/QueriesApi.md#listqueries) | **GET** /studies/{studyKey}/queries | List data queries in a study
*RecordRevisionsApi* | [**listRecordRevisions**](docs/Api/RecordRevisionsApi.md#listrecordrevisions) | **GET** /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study
*RecordsApi* | [**createRecords**](docs/Api/RecordsApi.md#createrecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
*RecordsApi* | [**listRecords**](docs/Api/RecordsApi.md#listrecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study
*SitesApi* | [**listSites**](docs/Api/SitesApi.md#listsites) | **GET** /studies/{studyKey}/sites | List sites for a study
*StudiesApi* | [**listStudies**](docs/Api/StudiesApi.md#liststudies) | **GET** /studies | List studies accessible by API key
*SubjectsApi* | [**listSubjects**](docs/Api/SubjectsApi.md#listsubjects) | **GET** /studies/{studyKey}/subjects | List subjects in a study
*VariablesApi* | [**listVariables**](docs/Api/VariablesApi.md#listvariables) | **GET** /studies/{studyKey}/variables | List variables (fields) in a study
*VisitsApi* | [**listVisits**](docs/Api/VisitsApi.md#listvisits) | **GET** /studies/{studyKey}/visits | List visits (subject visit instances) in a study

## Models

- [Coding](docs/Model/Coding.md)
- [CodingList](docs/Model/CodingList.md)
- [ComponentsSchemasIntervalFormsItem](docs/Model/ComponentsSchemasIntervalFormsItem.md)
- [ComponentsSchemasMetadataError](docs/Model/ComponentsSchemasMetadataError.md)
- [ComponentsSchemasRecordCreateRequestItem](docs/Model/ComponentsSchemasRecordCreateRequestItem.md)
- [Form](docs/Model/Form.md)
- [FormList](docs/Model/FormList.md)
- [InlineObject](docs/Model/InlineObject.md)
- [InlineObject1](docs/Model/InlineObject1.md)
- [InlineObject2](docs/Model/InlineObject2.md)
- [InlineObject3](docs/Model/InlineObject3.md)
- [InlineObject4](docs/Model/InlineObject4.md)
- [InlineObject5](docs/Model/InlineObject5.md)
- [Interval](docs/Model/Interval.md)
- [IntervalList](docs/Model/IntervalList.md)
- [Job](docs/Model/Job.md)
- [Keyword](docs/Model/Keyword.md)
- [Metadata](docs/Model/Metadata.md)
- [Pagination](docs/Model/Pagination.md)
- [Query](docs/Model/Query.md)
- [QueryComment](docs/Model/QueryComment.md)
- [QueryList](docs/Model/QueryList.md)
- [Record](docs/Model/Record.md)
- [RecordJobStatus](docs/Model/RecordJobStatus.md)
- [RecordList](docs/Model/RecordList.md)
- [RecordRevision](docs/Model/RecordRevision.md)
- [RecordRevisionList](docs/Model/RecordRevisionList.md)
- [Role](docs/Model/Role.md)
- [Site](docs/Model/Site.md)
- [SiteList](docs/Model/SiteList.md)
- [Sort](docs/Model/Sort.md)
- [Study](docs/Model/Study.md)
- [StudyList](docs/Model/StudyList.md)
- [Subject](docs/Model/Subject.md)
- [SubjectList](docs/Model/SubjectList.md)
- [User](docs/Model/User.md)
- [UserList](docs/Model/UserList.md)
- [Variable](docs/Model/Variable.md)
- [VariableList](docs/Model/VariableList.md)
- [Visit](docs/Model/Visit.md)
- [VisitList](docs/Model/VisitList.md)

## Authorization

Authentication schemes defined for the API:
### apiKeyAuth

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


### securityKeyAuth

- **Type**: API key
- **API key parameter name**: x-imn-security-key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.3.6`
    - Generator version: `7.14.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
