# openapi.model.RecordRevision

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] 
**recordRevisionId** | **int** | Unique system identifier for the record revision | [optional] 
**recordId** | **int** | Unique system identifier of the related record | [optional] 
**recordOid** | **String** | Client-assigned record OID (if any) | [optional] 
**recordRevision** | **int** | Revision number of the record (version of the record status) | [optional] 
**dataRevision** | **int** | Revision number of the data within the record | [optional] 
**recordStatus** | **String** | Status of the record at this revision (user-defined status label) | [optional] 
**subjectId** | **int** | Mednet subject ID related to the record | [optional] 
**subjectOid** | **String** | Client-assigned subject OID related to the record | [optional] 
**subjectKey** | **String** | Subject display ID related to the record | [optional] 
**siteId** | **int** | Site ID related to the record | [optional] 
**formKey** | **String** | Form key of the form that the record belongs to | [optional] 
**intervalId** | **int** | Interval ID (visit definition) related to the record | [optional] 
**role** | **String** | Role name of the user who saved the record revision | [optional] 
**user** | **String** | Username of the user who saved the record revision | [optional] 
**reasonForChange** | **String** | Reason for change, if provided (for audit trail) | [optional] 
**deleted** | **bool** | Whether the record was deleted in this revision | [optional] 
**dateCreated** | **String** | Date when this record revision was created | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


