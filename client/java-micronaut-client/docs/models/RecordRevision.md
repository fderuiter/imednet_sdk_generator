

# RecordRevision

The class is defined in **[RecordRevision.java](../../src/main/java/org/openapitools/model/RecordRevision.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | `String` | Unique study key |  [optional property]
**recordRevisionId** | `Integer` | Unique system identifier for the record revision |  [optional property]
**recordId** | `Integer` | Unique system identifier of the related record |  [optional property]
**recordOid** | `String` | Client-assigned record OID (if any) |  [optional property]
**recordRevision** | `Integer` | Revision number of the record (version of the record status) |  [optional property]
**dataRevision** | `Integer` | Revision number of the data within the record |  [optional property]
**recordStatus** | `String` | Status of the record at this revision (user-defined status label) |  [optional property]
**subjectId** | `Integer` | Mednet subject ID related to the record |  [optional property]
**subjectOid** | `String` | Client-assigned subject OID related to the record |  [optional property]
**subjectKey** | `String` | Subject display ID related to the record |  [optional property]
**siteId** | `Integer` | Site ID related to the record |  [optional property]
**formKey** | `String` | Form key of the form that the record belongs to |  [optional property]
**intervalId** | `Integer` | Interval ID (visit definition) related to the record |  [optional property]
**role** | `String` | Role name of the user who saved the record revision |  [optional property]
**user** | `String` | Username of the user who saved the record revision |  [optional property]
**reasonForChange** | `String` | Reason for change, if provided (for audit trail) |  [optional property]
**deleted** | `Boolean` | Whether the record was deleted in this revision |  [optional property]
**dateCreated** | `String` | Date when this record revision was created |  [optional property]




















