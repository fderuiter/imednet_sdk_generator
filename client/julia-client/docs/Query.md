# Query


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] [default to nothing]
**subjectId** | **Int64** | Mednet subject ID associated with the query (if applicable) | [optional] [default to nothing]
**subjectOid** | **String** | Client-assigned subject OID (if applicable) | [optional] [default to nothing]
**annotationType** | **String** | Category/type of the query (e.g., subject, record, question) | [optional] [default to nothing]
**annotationId** | **Int64** | Unique system identifier for the query | [optional] [default to nothing]
**type** | **String** | System text identifier for the query type/location (subject, record, question) | [optional] [default to nothing]
**description** | **String** | Description of the query (e.g., reason or context) | [optional] [default to nothing]
**recordId** | **Int64** | Record ID associated with the query (if applicable) | [optional] [default to nothing]
**variable** | **String** | Variable name (field) associated with the query (if applicable) | [optional] [default to nothing]
**subjectKey** | **String** | Subject display ID associated with the query (if applicable) | [optional] [default to nothing]
**dateCreated** | **String** | Date when the query was created | [optional] [default to nothing]
**dateModified** | **String** | Date when the query was last modified | [optional] [default to nothing]
**queryComments** | [**Vector{QueryComment}**](QueryComment.md) | History of comments/actions on the query | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


