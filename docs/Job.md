# Job
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** | Unique job identifier | [optional] 
**BatchId** | **String** | Batch ID associated with the job (useful for linking with record creation requests) | [optional] 
**State** | **String** | State of the job (e.g., completed, pending) | [optional] 
**DateCreated** | **String** | Timestamp when the job was created | [optional] 
**DateStarted** | **String** | Timestamp when the job started processing | [optional] 
**DateFinished** | **String** | Timestamp when the job finished processing | [optional] 

## Examples

- Prepare the resource
```powershell
$Job = Initialize-PSOpenAPIToolsJob  -JobId null `
 -BatchId null `
 -State null `
 -DateCreated null `
 -DateStarted null `
 -DateFinished null
```

- Convert the resource to JSON
```powershell
$Job | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

