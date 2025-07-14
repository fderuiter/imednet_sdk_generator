# Record


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] [default to nothing]
**intervalId** | **Int64** | Interval ID (visit definition) that this record is associated with | [optional] [default to nothing]
**formId** | **Int64** | Form ID of the form this record instance belongs to | [optional] [default to nothing]
**formKey** | **String** | Form key of the form for this record instance | [optional] [default to nothing]
**siteId** | **Int64** | Site ID associated with the record | [optional] [default to nothing]
**recordId** | **Int64** | Unique record ID | [optional] [default to nothing]
**recordOid** | **String** | Client-assigned record OID | [optional] [default to nothing]
**recordType** | **String** | Type of record (e.g., SUBJECT for subject-related forms) | [optional] [default to nothing]
**recordStatus** | **String** | Current status of the record (e.g., Record Incomplete, Record Complete) | [optional] [default to nothing]
**deleted** | **Bool** | Whether the record is marked as deleted | [optional] [default to nothing]
**dateCreated** | **String** | Date when this record was created | [optional] [default to nothing]
**dateModified** | **String** | Date when this record was last modified | [optional] [default to nothing]
**subjectId** | **Int64** | Mednet subject ID that this record is associated with | [optional] [default to nothing]
**subjectOid** | **String** | Client-assigned subject OID for the subject this record is associated with | [optional] [default to nothing]
**subjectKey** | **String** | Subject display ID that this record is associated with | [optional] [default to nothing]
**visitId** | **Int64** | Visit instance ID that this record is associated with (if applicable) | [optional] [default to nothing]
**parentRecordId** | **Int64** | Record ID of the parent record if this record is a subrecord (if applicable) | [optional] [default to nothing]
**keywords** | [**Vector{Keyword}**](Keyword.md) | List of keywords associated with the record | [optional] [default to nothing]
**recordData** | **Dict{String, Any}** | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


