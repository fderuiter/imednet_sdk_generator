<a name="__pageTop"></a>
# StudiesApi   { #StudiesApi }


All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_studies**](#list_studies) | **GET** `/studies` | List studies accessible by API key

# **list_studies**   { #list_studies }
<a name="list_studies"></a>

> `list_studies(page = 0,size = 25,sort = null,filter = null, on_success: Callable, on_failure: Callable)`

List studies accessible by API key



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
var api = StudiesApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudiesApi.new(config, client)


# Invoke an endpoint
api.list_studies(
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
		prints("Success!", "list_studies", response)
		assert(response.data is StudyList)
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

