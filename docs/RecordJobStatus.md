# RecordJobStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** | Unique job identifier | [optional] 
**BatchId** | **String** | Batch ID used to track the job (identical to jobId in most cases) | [optional] 
**State** | **String** | Current state of the job (e.g., created, completed) | [optional] 

## Examples

- Prepare the resource
```powershell
$RecordJobStatus = Initialize-PSOpenAPIToolsRecordJobStatus  -JobId null `
 -BatchId null `
 -State null
```

- Convert the resource to JSON
```powershell
$RecordJobStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

