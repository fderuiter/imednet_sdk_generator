# OAIRecordRevision

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **NSString*** | Unique study key | [optional] 
**recordRevisionId** | **NSNumber*** | Unique system identifier for the record revision | [optional] 
**recordId** | **NSNumber*** | Unique system identifier of the related record | [optional] 
**recordOid** | **NSString*** | Client-assigned record OID (if any) | [optional] 
**recordRevision** | **NSNumber*** | Revision number of the record (version of the record status) | [optional] 
**dataRevision** | **NSNumber*** | Revision number of the data within the record | [optional] 
**recordStatus** | **NSString*** | Status of the record at this revision (user-defined status label) | [optional] 
**subjectId** | **NSNumber*** | Mednet subject ID related to the record | [optional] 
**subjectOid** | **NSString*** | Client-assigned subject OID related to the record | [optional] 
**subjectKey** | **NSString*** | Subject display ID related to the record | [optional] 
**siteId** | **NSNumber*** | Site ID related to the record | [optional] 
**formKey** | **NSString*** | Form key of the form that the record belongs to | [optional] 
**intervalId** | **NSNumber*** | Interval ID (visit definition) related to the record | [optional] 
**role** | **NSString*** | Role name of the user who saved the record revision | [optional] 
**user** | **NSString*** | Username of the user who saved the record revision | [optional] 
**reasonForChange** | **NSString*** | Reason for change, if provided (for audit trail) | [optional] 
**deleted** | **NSNumber*** | Whether the record was deleted in this revision | [optional] 
**dateCreated** | **NSString*** | Date when this record revision was created | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


