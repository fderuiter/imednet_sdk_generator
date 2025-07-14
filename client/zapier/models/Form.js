const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}studyKey`,
                label: `Unique study key - [${labelPrefix}studyKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formId`,
                label: `Mednet Form ID - [${labelPrefix}formId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}formKey`,
                label: `User-defined form key - [${labelPrefix}formKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formName`,
                label: `Name of the form (eCRF) - [${labelPrefix}formName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formType`,
                label: `Type of the form (e.g., Subject or Site) - [${labelPrefix}formType]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}revision`,
                label: `Number of modifications (revisions) of the form metadata - [${labelPrefix}revision]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}embeddedLog`,
                label: `Whether the form has an embedded log - [${labelPrefix}embeddedLog]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}enforceOwnership`,
                label: `Whether the form enforces record ownership - [${labelPrefix}enforceOwnership]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}userAgreement`,
                label: `Whether the form requires a user agreement - [${labelPrefix}userAgreement]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}subjectRecordReport`,
                label: `Whether the form is marked as a subject record report - [${labelPrefix}subjectRecordReport]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}unscheduledVisit`,
                label: `Whether the form is included in unscheduled visits - [${labelPrefix}unscheduledVisit]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}otherForms`,
                label: `Whether the form is included in Other Forms category - [${labelPrefix}otherForms]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}eproForm`,
                label: `Whether the form is an ePRO (electronic patient reported outcome) form - [${labelPrefix}eproForm]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}allowCopy`,
                label: `Whether the form allows copying of data - [${labelPrefix}allowCopy]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}disabled`,
                label: `Whether the form is soft-deleted (disabled) - [${labelPrefix}disabled]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this form was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this form was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'formId': bundle.inputData?.[`${keyPrefix}formId`],
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'formName': bundle.inputData?.[`${keyPrefix}formName`],
            'formType': bundle.inputData?.[`${keyPrefix}formType`],
            'revision': bundle.inputData?.[`${keyPrefix}revision`],
            'embeddedLog': bundle.inputData?.[`${keyPrefix}embeddedLog`],
            'enforceOwnership': bundle.inputData?.[`${keyPrefix}enforceOwnership`],
            'userAgreement': bundle.inputData?.[`${keyPrefix}userAgreement`],
            'subjectRecordReport': bundle.inputData?.[`${keyPrefix}subjectRecordReport`],
            'unscheduledVisit': bundle.inputData?.[`${keyPrefix}unscheduledVisit`],
            'otherForms': bundle.inputData?.[`${keyPrefix}otherForms`],
            'eproForm': bundle.inputData?.[`${keyPrefix}eproForm`],
            'allowCopy': bundle.inputData?.[`${keyPrefix}allowCopy`],
            'disabled': bundle.inputData?.[`${keyPrefix}disabled`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
        }
    },
}
