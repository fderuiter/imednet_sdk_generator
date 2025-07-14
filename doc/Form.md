# openapi.model.Form

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] 
**formId** | **int** | Mednet Form ID | [optional] 
**formKey** | **String** | User-defined form key | [optional] 
**formName** | **String** | Name of the form (eCRF) | [optional] 
**formType** | **String** | Type of the form (e.g., Subject or Site) | [optional] 
**revision** | **int** | Number of modifications (revisions) of the form metadata | [optional] 
**embeddedLog** | **bool** | Whether the form has an embedded log | [optional] 
**enforceOwnership** | **bool** | Whether the form enforces record ownership | [optional] 
**userAgreement** | **bool** | Whether the form requires a user agreement | [optional] 
**subjectRecordReport** | **bool** | Whether the form is marked as a subject record report | [optional] 
**unscheduledVisit** | **bool** | Whether the form is included in unscheduled visits | [optional] 
**otherForms** | **bool** | Whether the form is included in Other Forms category | [optional] 
**eproForm** | **bool** | Whether the form is an ePRO (electronic patient reported outcome) form | [optional] 
**allowCopy** | **bool** | Whether the form allows copying of data | [optional] 
**disabled** | **bool** | Whether the form is soft-deleted (disabled) | [optional] 
**dateCreated** | **String** | Date when this form was created | [optional] 
**dateModified** | **String** | Date when this form was last modified | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


