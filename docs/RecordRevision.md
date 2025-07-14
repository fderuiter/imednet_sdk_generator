
# RecordRevision

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **studyKey** | **kotlin.String** | Unique study key |  [optional] |
| **recordRevisionId** | **kotlin.Int** | Unique system identifier for the record revision |  [optional] |
| **recordId** | **kotlin.Int** | Unique system identifier of the related record |  [optional] |
| **recordOid** | **kotlin.String** | Client-assigned record OID (if any) |  [optional] |
| **recordRevision** | **kotlin.Int** | Revision number of the record (version of the record status) |  [optional] |
| **dataRevision** | **kotlin.Int** | Revision number of the data within the record |  [optional] |
| **recordStatus** | **kotlin.String** | Status of the record at this revision (user-defined status label) |  [optional] |
| **subjectId** | **kotlin.Int** | Mednet subject ID related to the record |  [optional] |
| **subjectOid** | **kotlin.String** | Client-assigned subject OID related to the record |  [optional] |
| **subjectKey** | **kotlin.String** | Subject display ID related to the record |  [optional] |
| **siteId** | **kotlin.Int** | Site ID related to the record |  [optional] |
| **formKey** | **kotlin.String** | Form key of the form that the record belongs to |  [optional] |
| **intervalId** | **kotlin.Int** | Interval ID (visit definition) related to the record |  [optional] |
| **role** | **kotlin.String** | Role name of the user who saved the record revision |  [optional] |
| **user** | **kotlin.String** | Username of the user who saved the record revision |  [optional] |
| **reasonForChange** | **kotlin.String** | Reason for change, if provided (for audit trail) |  [optional] |
| **deleted** | **kotlin.Boolean** | Whether the record was deleted in this revision |  [optional] |
| **dateCreated** | **kotlin.String** | Date when this record revision was created |  [optional] |



