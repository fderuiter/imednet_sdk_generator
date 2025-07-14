

# Query


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key |  [optional]
**subjectId** | **Int** | Mednet subject ID associated with the query (if applicable) |  [optional]
**subjectOid** | **String** | Client-assigned subject OID (if applicable) |  [optional]
**annotationType** | **String** | Category/type of the query (e.g., subject, record, question) |  [optional]
**annotationId** | **Int** | Unique system identifier for the query |  [optional]
**`type`** | **String** | System text identifier for the query type/location (subject, record, question) |  [optional]
**description** | **String** | Description of the query (e.g., reason or context) |  [optional]
**recordId** | **Int** | Record ID associated with the query (if applicable) |  [optional]
**variable** | **String** | Variable name (field) associated with the query (if applicable) |  [optional]
**subjectKey** | **String** | Subject display ID associated with the query (if applicable) |  [optional]
**dateCreated** | **String** | Date when the query was created |  [optional]
**dateModified** | **String** | Date when the query was last modified |  [optional]
**queryComments** | [**Seq&lt;QueryComment&gt;**](QueryComment.md) | History of comments/actions on the query |  [optional]



