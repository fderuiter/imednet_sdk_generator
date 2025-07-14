<a name="__pageTop"></a>
# JobsApi   { #JobsApi }


All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_job_status**](#get_job_status) | **GET** `/studies/{studyKey}/jobs/{batchId}` | Retrieve job status by batch ID

# **get_job_status**   { #get_job_status }
<a name="get_job_status"></a>

> `get_job_status(studyKey: String,batchId: String, on_success: Callable, on_failure: Callable)`

Retrieve job status by batch ID



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
var api = JobsApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = JobsApi.new(config, client)


# Invoke an endpoint
api.get_job_status(
	# studyKey: String   Eg: studyKey_example
	# Study key identifying the study context for the request
	studyKey,
	# batchId: String   Eg: batchId_example
	# Batch ID of the job to retrieve
	batchId,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_job_status", response)
		assert(response.data is Job)
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

