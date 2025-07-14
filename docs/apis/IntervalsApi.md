# IntervalsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listIntervals**](IntervalsApi.md#listIntervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study |


## Creating IntervalsApi

To initiate an instance of `IntervalsApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.IntervalsApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(IntervalsApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    IntervalsApi intervalsApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a id="listIntervals"></a>
# **listIntervals**
```java
Mono<IntervalList> IntervalsApi.listIntervals(studyKeypagesizesortfilter)
```

List intervals (visit definitions) in a study

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | `String`| Study key identifying the study context for the request | |
| **page** | `Integer`| Page index to retrieve (0-based) | [optional parameter] [default to `0`] |
| **size** | `Integer`| Number of items to return per page (max 500) | [optional parameter] [default to `25`] |
| **sort** | `String`| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional parameter] |
| **filter** | `String`| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional parameter] |


### Return type
[**IntervalList**](IntervalList.md)

### Authorization
* **[apiKeyAuth](auth.md#apiKeyAuth)**
* **[securityKeyAuth](auth.md#securityKeyAuth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

