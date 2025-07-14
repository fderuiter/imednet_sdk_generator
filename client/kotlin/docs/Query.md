
# Query

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **studyKey** | **kotlin.String** | Unique study key |  [optional] |
| **subjectId** | **kotlin.Int** | Mednet subject ID associated with the query (if applicable) |  [optional] |
| **subjectOid** | **kotlin.String** | Client-assigned subject OID (if applicable) |  [optional] |
| **annotationType** | **kotlin.String** | Category/type of the query (e.g., subject, record, question) |  [optional] |
| **annotationId** | **kotlin.Int** | Unique system identifier for the query |  [optional] |
| **type** | **kotlin.String** | System text identifier for the query type/location (subject, record, question) |  [optional] |
| **description** | **kotlin.String** | Description of the query (e.g., reason or context) |  [optional] |
| **recordId** | **kotlin.Int** | Record ID associated with the query (if applicable) |  [optional] |
| **variable** | **kotlin.String** | Variable name (field) associated with the query (if applicable) |  [optional] |
| **subjectKey** | **kotlin.String** | Subject display ID associated with the query (if applicable) |  [optional] |
| **dateCreated** | **kotlin.String** | Date when the query was created |  [optional] |
| **dateModified** | **kotlin.String** | Date when the query was last modified |  [optional] |
| **queryComments** | [**kotlin.collections.List&lt;QueryComment&gt;**](QueryComment.md) | History of comments/actions on the query |  [optional] |



