# Mednet EDC API Bash client

## Overview

This is a Bash client script for accessing Mednet EDC API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to */api/v1/edc*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdministrationApi* | [**listUsers**](docs/AdministrationApi.md#listusers) | **GET** /studies/{studyKey}/users | List users and their roles in a study
*CodingsApi* | [**listCodings**](docs/CodingsApi.md#listcodings) | **GET** /studies/{studyKey}/codings | List coding activities in a study
*FormsApi* | [**listForms**](docs/FormsApi.md#listforms) | **GET** /studies/{studyKey}/forms | List forms in a study
*IntervalsApi* | [**listIntervals**](docs/IntervalsApi.md#listintervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study
*JobsApi* | [**getJobStatus**](docs/JobsApi.md#getjobstatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID
*QueriesApi* | [**listQueries**](docs/QueriesApi.md#listqueries) | **GET** /studies/{studyKey}/queries | List data queries in a study
*RecordRevisionsApi* | [**listRecordRevisions**](docs/RecordRevisionsApi.md#listrecordrevisions) | **GET** /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study
*RecordsApi* | [**createRecords**](docs/RecordsApi.md#createrecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
*RecordsApi* | [**listRecords**](docs/RecordsApi.md#listrecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study
*SitesApi* | [**listSites**](docs/SitesApi.md#listsites) | **GET** /studies/{studyKey}/sites | List sites for a study
*StudiesApi* | [**listStudies**](docs/StudiesApi.md#liststudies) | **GET** /studies | List studies accessible by API key
*SubjectsApi* | [**listSubjects**](docs/SubjectsApi.md#listsubjects) | **GET** /studies/{studyKey}/subjects | List subjects in a study
*VariablesApi* | [**listVariables**](docs/VariablesApi.md#listvariables) | **GET** /studies/{studyKey}/variables | List variables (fields) in a study
*VisitsApi* | [**listVisits**](docs/VisitsApi.md#listvisits) | **GET** /studies/{studyKey}/visits | List visits (subject visit instances) in a study


## Documentation For Models

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


## Documentation For Authorization


## apiKeyAuth


- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

## securityKeyAuth


- **Type**: API key
- **API key parameter name**: x-imn-security-key
- **Location**: HTTP header

