
# Record

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **studyKey** | **kotlin.String** | Unique study key |  [optional] |
| **intervalId** | **kotlin.Int** | Interval ID (visit definition) that this record is associated with |  [optional] |
| **formId** | **kotlin.Int** | Form ID of the form this record instance belongs to |  [optional] |
| **formKey** | **kotlin.String** | Form key of the form for this record instance |  [optional] |
| **siteId** | **kotlin.Int** | Site ID associated with the record |  [optional] |
| **recordId** | **kotlin.Int** | Unique record ID |  [optional] |
| **recordOid** | **kotlin.String** | Client-assigned record OID |  [optional] |
| **recordType** | **kotlin.String** | Type of record (e.g., SUBJECT for subject-related forms) |  [optional] |
| **recordStatus** | **kotlin.String** | Current status of the record (e.g., Record Incomplete, Record Complete) |  [optional] |
| **deleted** | **kotlin.Boolean** | Whether the record is marked as deleted |  [optional] |
| **dateCreated** | **kotlin.String** | Date when this record was created |  [optional] |
| **dateModified** | **kotlin.String** | Date when this record was last modified |  [optional] |
| **subjectId** | **kotlin.Int** | Mednet subject ID that this record is associated with |  [optional] |
| **subjectOid** | **kotlin.String** | Client-assigned subject OID for the subject this record is associated with |  [optional] |
| **subjectKey** | **kotlin.String** | Subject display ID that this record is associated with |  [optional] |
| **visitId** | **kotlin.Int** | Visit instance ID that this record is associated with (if applicable) |  [optional] |
| **parentRecordId** | **kotlin.Int** | Record ID of the parent record if this record is a subrecord (if applicable) |  [optional] |
| **keywords** | [**kotlin.collections.List&lt;Keyword&gt;**](Keyword.md) | List of keywords associated with the record |  [optional] |
| **recordData** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. |  [optional] |



