# OAIInterval

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **NSString*** | Unique study key | [optional] 
**intervalId** | **NSNumber*** | Unique system identifier for the interval (visit definition) | [optional] 
**intervalName** | **NSString*** | Name of the interval (visit) as defined in the study | [optional] 
**intervalDescription** | **NSString*** | Description of the interval (visit) | [optional] 
**intervalSequence** | **NSNumber*** | Sequence number of the interval in the schedule | [optional] 
**intervalGroupId** | **NSNumber*** | Identifier for the interval group (if intervals are grouped) | [optional] 
**intervalGroupName** | **NSString*** | Name of the interval group | [optional] 
**timeline** | **NSString*** | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) | [optional] 
**definedUsingInterval** | **NSString*** | Baseline interval used for calculating this interval’s dates | [optional] 
**windowCalculationForm** | **NSString*** | Baseline form (name) from which the calculation date is taken | [optional] 
**windowCalculationDate** | **NSString*** | Baseline field (variable name) from which the calculation date is taken | [optional] 
**actualDateForm** | **NSString*** | Form used to capture the actual date for this interval | [optional] 
**actualDate** | **NSString*** | Field (variable name) used to capture the actual date for this interval | [optional] 
**dueDateWillBeIn** | **NSNumber*** | Number of days from the calculation date when the interval is due | [optional] 
**negativeSlack** | **NSNumber*** | Number of days before the due date that are allowed (negative window) | [optional] 
**positiveSlack** | **NSNumber*** | Number of days after the due date that are allowed (positive window) | [optional] 
**eproGracePeriod** | **NSNumber*** | Number of days of grace period for ePRO completion after due date | [optional] 
**forms** | [**NSArray&lt;OAIComponentsSchemasIntervalFormsItem&gt;***](OAIComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval | [optional] 
**disabled** | **NSNumber*** | Whether the interval is soft-deleted (disabled) | [optional] 
**dateCreated** | **NSString*** | Date when this interval was created | [optional] 
**dateModified** | **NSString*** | Date when this interval was last modified | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


