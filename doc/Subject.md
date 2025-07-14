# openapi.model.Subject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] 
**subjectId** | **int** | Mednet subject ID (internal numeric ID) | [optional] 
**subjectOid** | **String** | Client-assigned subject object identifier (OID) | [optional] 
**subjectKey** | **String** | Protocol-assigned subject identifier (display ID) | [optional] 
**subjectStatus** | **String** | Current status of the subject (e.g., Enrolled) | [optional] 
**siteId** | **int** | Mednet site ID the subject is associated with | [optional] 
**siteName** | **String** | Name of the site the subject is associated with | [optional] 
**deleted** | **bool** | Whether the subject is marked as deleted | [optional] 
**enrollmentStartDate** | **String** | Subject’s enrollment start date | [optional] 
**dateCreated** | **String** | Date when this subject record was created | [optional] 
**dateModified** | **String** | Date when this subject record was last modified | [optional] 
**keywords** | [**BuiltList&lt;Keyword&gt;**](Keyword.md) | List of keywords associated with the subject | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


