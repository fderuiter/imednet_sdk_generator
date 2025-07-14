<a name="__pageTop"></a>
# RecordRevisionsApi   { #RecordRevisionsApi }


All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_record_revisions**](#list_record_revisions) | **GET** `/studies/{studyKey}/recordRevisions` | List record revisions (audit trail entries) in a study

# **list_record_revisions**   { #list_record_revisions }
<a name="list_record_revisions"></a>

> `list_record_revisions(studyKey: String,page = 0,size = 25,sort = null,filter = null, on_success: Callable, on_failure: Callable)`

List record revisions (audit trail entries) in a study



### Example

* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`securityKeyAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = RecordRevisionsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RecordRevisionsApi.new(config, client)


# Invoke an endpoint
api.list_record_revisions(
	# studyKey: String   Eg: studyKey_example
	# Study key identifying the study context for the request
	studyKey,
	# page: int = 0   Eg: 0
	# Page index to retrieve (0-based)
	page,
	# size: int = 25   Eg: 25
	# Number of items to return per page (max 500)
	size,
	# sort: String   Eg: sort_example
	# Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
	sort,
	# filter: String   Eg: filter_example
	# Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
	filter,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "list_record_revisions", response)
		assert(response.data is RecordRevisionList)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```


### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), 
[securityKeyAuth](../README.md#securityKeyAuth)

[[Back to top]](#__pageTop) \
[[Back to API list]](../README.md#documentation-for-api-endpoints) \
[[Back to Model list]](../README.md#documentation-for-models) \
[[Back to README]](../README.md) \

