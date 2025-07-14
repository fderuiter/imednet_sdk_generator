# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** | Unique user ID (UUID) | [optional] 
**Login** | **String** | User login name | [optional] 
**FirstName** | **String** | User first name | [optional] 
**LastName** | **String** | User last name | [optional] 
**Email** | **String** | User email address | [optional] 
**UserActiveInStudy** | **Boolean** | Whether the user is active in the given study | [optional] 
**Roles** | [**Role[]**](Role.md) | Roles that the user has in the study | [optional] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-PSOpenAPIToolsUser  -UserId null `
 -Login null `
 -FirstName null `
 -LastName null `
 -Email null `
 -UserActiveInStudy null `
 -Roles null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

