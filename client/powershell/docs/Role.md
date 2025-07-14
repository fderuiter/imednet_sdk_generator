# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateCreated** | **Int32[]** | Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond]) | [optional] 
**DateModified** | **Int32[]** | Timestamp when the role assignment was last modified | [optional] 
**RoleId** | **String** | Unique role ID (UUID) | [optional] 
**CommunityId** | **Int32** | Community ID or level associated with the role | [optional] 
**Name** | **String** | Name of the role | [optional] 
**Description** | **String** | Description of the role | [optional] 
**Level** | **Int32** | Role level or hierarchy | [optional] 
**Type** | **String** | Role type/category | [optional] 
**Inactive** | **Boolean** | Whether the role is inactive | [optional] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-PSOpenAPIToolsRole  -DateCreated null `
 -DateModified null `
 -RoleId null `
 -CommunityId null `
 -Name null `
 -Description null `
 -Level null `
 -Type null `
 -Inactive null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

