

# Record

The class is defined in **[Record.java](../../src/main/java/org/openapitools/model/Record.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | `String` | Unique study key |  [optional property]
**intervalId** | `Integer` | Interval ID (visit definition) that this record is associated with |  [optional property]
**formId** | `Integer` | Form ID of the form this record instance belongs to |  [optional property]
**formKey** | `String` | Form key of the form for this record instance |  [optional property]
**siteId** | `Integer` | Site ID associated with the record |  [optional property]
**recordId** | `Integer` | Unique record ID |  [optional property]
**recordOid** | `String` | Client-assigned record OID |  [optional property]
**recordType** | `String` | Type of record (e.g., SUBJECT for subject-related forms) |  [optional property]
**recordStatus** | `String` | Current status of the record (e.g., Record Incomplete, Record Complete) |  [optional property]
**deleted** | `Boolean` | Whether the record is marked as deleted |  [optional property]
**dateCreated** | `String` | Date when this record was created |  [optional property]
**dateModified** | `String` | Date when this record was last modified |  [optional property]
**subjectId** | `Integer` | Mednet subject ID that this record is associated with |  [optional property]
**subjectOid** | `String` | Client-assigned subject OID for the subject this record is associated with |  [optional property]
**subjectKey** | `String` | Subject display ID that this record is associated with |  [optional property]
**visitId** | `Integer` | Visit instance ID that this record is associated with (if applicable) |  [optional property]
**parentRecordId** | `Integer` | Record ID of the parent record if this record is a subrecord (if applicable) |  [optional property]
**keywords** | [`List&lt;Keyword&gt;`](Keyword.md) | List of keywords associated with the record |  [optional property]
**recordData** | `Map&lt;String, Object&gt;` | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. |  [optional property]





















