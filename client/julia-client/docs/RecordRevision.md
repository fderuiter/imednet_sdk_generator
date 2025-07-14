# RecordRevision


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] [default to nothing]
**recordRevisionId** | **Int64** | Unique system identifier for the record revision | [optional] [default to nothing]
**recordId** | **Int64** | Unique system identifier of the related record | [optional] [default to nothing]
**recordOid** | **String** | Client-assigned record OID (if any) | [optional] [default to nothing]
**recordRevision** | **Int64** | Revision number of the record (version of the record status) | [optional] [default to nothing]
**dataRevision** | **Int64** | Revision number of the data within the record | [optional] [default to nothing]
**recordStatus** | **String** | Status of the record at this revision (user-defined status label) | [optional] [default to nothing]
**subjectId** | **Int64** | Mednet subject ID related to the record | [optional] [default to nothing]
**subjectOid** | **String** | Client-assigned subject OID related to the record | [optional] [default to nothing]
**subjectKey** | **String** | Subject display ID related to the record | [optional] [default to nothing]
**siteId** | **Int64** | Site ID related to the record | [optional] [default to nothing]
**formKey** | **String** | Form key of the form that the record belongs to | [optional] [default to nothing]
**intervalId** | **Int64** | Interval ID (visit definition) related to the record | [optional] [default to nothing]
**role** | **String** | Role name of the user who saved the record revision | [optional] [default to nothing]
**user** | **String** | Username of the user who saved the record revision | [optional] [default to nothing]
**reasonForChange** | **String** | Reason for change, if provided (for audit trail) | [optional] [default to nothing]
**deleted** | **Bool** | Whether the record was deleted in this revision | [optional] [default to nothing]
**dateCreated** | **String** | Date when this record revision was created | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


