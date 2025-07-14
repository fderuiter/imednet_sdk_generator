# OAIRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **NSString*** | Unique study key | [optional] 
**intervalId** | **NSNumber*** | Interval ID (visit definition) that this record is associated with | [optional] 
**formId** | **NSNumber*** | Form ID of the form this record instance belongs to | [optional] 
**formKey** | **NSString*** | Form key of the form for this record instance | [optional] 
**siteId** | **NSNumber*** | Site ID associated with the record | [optional] 
**recordId** | **NSNumber*** | Unique record ID | [optional] 
**recordOid** | **NSString*** | Client-assigned record OID | [optional] 
**recordType** | **NSString*** | Type of record (e.g., SUBJECT for subject-related forms) | [optional] 
**recordStatus** | **NSString*** | Current status of the record (e.g., Record Incomplete, Record Complete) | [optional] 
**deleted** | **NSNumber*** | Whether the record is marked as deleted | [optional] 
**dateCreated** | **NSString*** | Date when this record was created | [optional] 
**dateModified** | **NSString*** | Date when this record was last modified | [optional] 
**subjectId** | **NSNumber*** | Mednet subject ID that this record is associated with | [optional] 
**subjectOid** | **NSString*** | Client-assigned subject OID for the subject this record is associated with | [optional] 
**subjectKey** | **NSString*** | Subject display ID that this record is associated with | [optional] 
**visitId** | **NSNumber*** | Visit instance ID that this record is associated with (if applicable) | [optional] 
**parentRecordId** | **NSNumber*** | Record ID of the parent record if this record is a subrecord (if applicable) | [optional] 
**keywords** | [**NSArray&lt;OAIKeyword&gt;***](OAIKeyword.md) | List of keywords associated with the record | [optional] 
**recordData** | [**NSDictionary&lt;OAIAnyType&gt;***](OAIAnyType.md) | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


