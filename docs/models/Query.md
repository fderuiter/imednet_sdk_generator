

# Query

The class is defined in **[Query.java](../../src/main/java/org/openapitools/model/Query.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | `String` | Unique study key |  [optional property]
**subjectId** | `Integer` | Mednet subject ID associated with the query (if applicable) |  [optional property]
**subjectOid** | `String` | Client-assigned subject OID (if applicable) |  [optional property]
**annotationType** | `String` | Category/type of the query (e.g., subject, record, question) |  [optional property]
**annotationId** | `Integer` | Unique system identifier for the query |  [optional property]
**type** | `String` | System text identifier for the query type/location (subject, record, question) |  [optional property]
**description** | `String` | Description of the query (e.g., reason or context) |  [optional property]
**recordId** | `Integer` | Record ID associated with the query (if applicable) |  [optional property]
**variable** | `String` | Variable name (field) associated with the query (if applicable) |  [optional property]
**subjectKey** | `String` | Subject display ID associated with the query (if applicable) |  [optional property]
**dateCreated** | `String` | Date when the query was created |  [optional property]
**dateModified** | `String` | Date when the query was last modified |  [optional property]
**queryComments** | [`List&lt;QueryComment&gt;`](QueryComment.md) | History of comments/actions on the query |  [optional property]















