# QUERY

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | [**STRING_32**](STRING_32.md) | Unique study key | [optional] [default to null]
**subject_id** | **INTEGER_32** | Mednet subject ID associated with the query (if applicable) | [optional] [default to null]
**subject_oid** | [**STRING_32**](STRING_32.md) | Client-assigned subject OID (if applicable) | [optional] [default to null]
**annotation_type** | [**STRING_32**](STRING_32.md) | Category/type of the query (e.g., subject, record, question) | [optional] [default to null]
**annotation_id** | **INTEGER_32** | Unique system identifier for the query | [optional] [default to null]
**type** | [**STRING_32**](STRING_32.md) | System text identifier for the query type/location (subject, record, question) | [optional] [default to null]
**description** | [**STRING_32**](STRING_32.md) | Description of the query (e.g., reason or context) | [optional] [default to null]
**record_id** | **INTEGER_32** | Record ID associated with the query (if applicable) | [optional] [default to null]
**variable** | [**STRING_32**](STRING_32.md) | Variable name (field) associated with the query (if applicable) | [optional] [default to null]
**subject_key** | [**STRING_32**](STRING_32.md) | Subject display ID associated with the query (if applicable) | [optional] [default to null]
**date_created** | [**STRING_32**](STRING_32.md) | Date when the query was created | [optional] [default to null]
**date_modified** | [**STRING_32**](STRING_32.md) | Date when the query was last modified | [optional] [default to null]
**query_comments** | [**LIST [QUERY_COMMENT]**](QueryComment.md) | History of comments/actions on the query | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


