# Site
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**SiteId** | **Int32** | Unique site ID | [optional] 
**SiteName** | **String** | Name of the site | [optional] 
**SiteEnrollmentStatus** | **String** | Enrollment status of the site | [optional] 
**DateCreated** | **String** | Date when this site was created | [optional] 
**DateModified** | **String** | Date when this site was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$Site = Initialize-PSOpenAPIToolsSite  -StudyKey null `
 -SiteId null `
 -SiteName null `
 -SiteEnrollmentStatus null `
 -DateCreated null `
 -DateModified null
```

- Convert the resource to JSON
```powershell
$Site | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

