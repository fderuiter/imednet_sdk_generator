# Form


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**formId** | **number** | Mednet Form ID | [optional] [default to undefined]
**formKey** | **string** | User-defined form key | [optional] [default to undefined]
**formName** | **string** | Name of the form (eCRF) | [optional] [default to undefined]
**formType** | **string** | Type of the form (e.g., Subject or Site) | [optional] [default to undefined]
**revision** | **number** | Number of modifications (revisions) of the form metadata | [optional] [default to undefined]
**embeddedLog** | **boolean** | Whether the form has an embedded log | [optional] [default to undefined]
**enforceOwnership** | **boolean** | Whether the form enforces record ownership | [optional] [default to undefined]
**userAgreement** | **boolean** | Whether the form requires a user agreement | [optional] [default to undefined]
**subjectRecordReport** | **boolean** | Whether the form is marked as a subject record report | [optional] [default to undefined]
**unscheduledVisit** | **boolean** | Whether the form is included in unscheduled visits | [optional] [default to undefined]
**otherForms** | **boolean** | Whether the form is included in Other Forms category | [optional] [default to undefined]
**eproForm** | **boolean** | Whether the form is an ePRO (electronic patient reported outcome) form | [optional] [default to undefined]
**allowCopy** | **boolean** | Whether the form allows copying of data | [optional] [default to undefined]
**disabled** | **boolean** | Whether the form is soft-deleted (disabled) | [optional] [default to undefined]
**dateCreated** | **string** | Date when this form was created | [optional] [default to undefined]
**dateModified** | **string** | Date when this form was last modified | [optional] [default to undefined]

## Example

```typescript
import { Form } from './api';

const instance: Form = {
    studyKey,
    formId,
    formKey,
    formName,
    formType,
    revision,
    embeddedLog,
    enforceOwnership,
    userAgreement,
    subjectRecordReport,
    unscheduledVisit,
    otherForms,
    eproForm,
    allowCopy,
    disabled,
    dateCreated,
    dateModified,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
