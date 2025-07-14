# INTERVAL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | [**STRING_32**](STRING_32.md) | Unique study key | [optional] [default to null]
**interval_id** | **INTEGER_32** | Unique system identifier for the interval (visit definition) | [optional] [default to null]
**interval_name** | [**STRING_32**](STRING_32.md) | Name of the interval (visit) as defined in the study | [optional] [default to null]
**interval_description** | [**STRING_32**](STRING_32.md) | Description of the interval (visit) | [optional] [default to null]
**interval_sequence** | **INTEGER_32** | Sequence number of the interval in the schedule | [optional] [default to null]
**interval_group_id** | **INTEGER_32** | Identifier for the interval group (if intervals are grouped) | [optional] [default to null]
**interval_group_name** | [**STRING_32**](STRING_32.md) | Name of the interval group | [optional] [default to null]
**timeline** | [**STRING_32**](STRING_32.md) | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) | [optional] [default to null]
**defined_using_interval** | [**STRING_32**](STRING_32.md) | Baseline interval used for calculating this interval’s dates | [optional] [default to null]
**window_calculation_form** | [**STRING_32**](STRING_32.md) | Baseline form (name) from which the calculation date is taken | [optional] [default to null]
**window_calculation_date** | [**STRING_32**](STRING_32.md) | Baseline field (variable name) from which the calculation date is taken | [optional] [default to null]
**actual_date_form** | [**STRING_32**](STRING_32.md) | Form used to capture the actual date for this interval | [optional] [default to null]
**actual_date** | [**STRING_32**](STRING_32.md) | Field (variable name) used to capture the actual date for this interval | [optional] [default to null]
**due_date_will_be_in** | **INTEGER_32** | Number of days from the calculation date when the interval is due | [optional] [default to null]
**negative_slack** | **INTEGER_32** | Number of days before the due date that are allowed (negative window) | [optional] [default to null]
**positive_slack** | **INTEGER_32** | Number of days after the due date that are allowed (positive window) | [optional] [default to null]
**epro_grace_period** | **INTEGER_32** | Number of days of grace period for ePRO completion after due date | [optional] [default to null]
**forms** | [**LIST [COMPONENTS_SCHEMAS_INTERVAL_FORMS_ITEM]**](components_schemas_Interval_forms_item.md) | List of forms that are scheduled in this interval | [optional] [default to null]
**disabled** | **BOOLEAN** | Whether the interval is soft-deleted (disabled) | [optional] [default to null]
**date_created** | [**STRING_32**](STRING_32.md) | Date when this interval was created | [optional] [default to null]
**date_modified** | [**STRING_32**](STRING_32.md) | Date when this interval was last modified | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


