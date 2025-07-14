# RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRecords**](RecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data |
| [**listRecords**](RecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study |


## Creating RecordsApi

To initiate an instance of `RecordsApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.RecordsApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(RecordsApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    RecordsApi recordsApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a id="createRecords"></a>
# **createRecords**
```java
Mono<RecordJobStatus> RecordsApi.createRecords(studyKeycomponentsSchemasRecordCreateRequestItem)
```

Add new record or update subject/record data

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | `String`| Study key identifying the study context for the request | |
| **componentsSchemasRecordCreateRequestItem** | [**List&lt;@Valid ComponentsSchemasRecordCreateRequestItem&gt;**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | |


### Return type
[**RecordJobStatus**](RecordJobStatus.md)

### Authorization
* **[apiKeyAuth](auth.md#apiKeyAuth)**
* **[securityKeyAuth](auth.md#securityKeyAuth)**

### HTTP request headers
 - **Content-Type**: `application/json`
 - **Accept**: `application/json`

<a id="listRecords"></a>
# **listRecords**
```java
Mono<RecordList> RecordsApi.listRecords(studyKeypagesizesortfilterrecordDataFilter)
```

List records (eCRF instances) in a study

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | `String`| Study key identifying the study context for the request | |
| **page** | `Integer`| Page index to retrieve (0-based) | [optional parameter] [default to `0`] |
| **size** | `Integer`| Number of items to return per page (max 500) | [optional parameter] [default to `25`] |
| **sort** | `String`| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional parameter] |
| **filter** | `String`| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional parameter] |
| **recordDataFilter** | `String`| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional parameter] |


### Return type
[**RecordList**](RecordList.md)

### Authorization
* **[apiKeyAuth](auth.md#apiKeyAuth)**
* **[securityKeyAuth](auth.md#securityKeyAuth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

