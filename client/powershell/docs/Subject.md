# Subject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**SubjectId** | **Int32** | Mednet subject ID (internal numeric ID) | [optional] 
**SubjectOid** | **String** | Client-assigned subject object identifier (OID) | [optional] 
**SubjectKey** | **String** | Protocol-assigned subject identifier (display ID) | [optional] 
**SubjectStatus** | **String** | Current status of the subject (e.g., Enrolled) | [optional] 
**SiteId** | **Int32** | Mednet site ID the subject is associated with | [optional] 
**SiteName** | **String** | Name of the site the subject is associated with | [optional] 
**Deleted** | **Boolean** | Whether the subject is marked as deleted | [optional] 
**EnrollmentStartDate** | **String** | Subject’s enrollment start date | [optional] 
**DateCreated** | **String** | Date when this subject record was created | [optional] 
**DateModified** | **String** | Date when this subject record was last modified | [optional] 
**Keywords** | [**Keyword[]**](Keyword.md) | List of keywords associated with the subject | [optional] 

## Examples

- Prepare the resource
```powershell
$Subject = Initialize-PSOpenAPIToolsSubject  -StudyKey null `
 -SubjectId null `
 -SubjectOid null `
 -SubjectKey null `
 -SubjectStatus null `
 -SiteId null `
 -SiteName null `
 -Deleted null `
 -EnrollmentStartDate null `
 -DateCreated null `
 -DateModified null `
 -Keywords null
```

- Convert the resource to JSON
```powershell
$Subject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

