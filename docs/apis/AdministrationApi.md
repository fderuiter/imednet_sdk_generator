# AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listUsers**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study |


## Creating AdministrationApi

To initiate an instance of `AdministrationApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.AdministrationApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(AdministrationApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    AdministrationApi administrationApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a id="listUsers"></a>
# **listUsers**
```java
Mono<UserList> AdministrationApi.listUsers(studyKeypagesizesortincludeInactive)
```

List users and their roles in a study

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | `String`| Study key identifying the study context for the request | |
| **page** | `Integer`| Page index to retrieve (0-based) | [optional parameter] [default to `0`] |
| **size** | `Integer`| Number of items to return per page (max 500) | [optional parameter] [default to `25`] |
| **sort** | `String`| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional parameter] |
| **includeInactive** | `Boolean`| For user listing, whether to include inactive users | [optional parameter] [default to `false`] |


### Return type
[**UserList**](UserList.md)

### Authorization
* **[apiKeyAuth](auth.md#apiKeyAuth)**
* **[securityKeyAuth](auth.md#securityKeyAuth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

