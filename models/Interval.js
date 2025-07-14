const utils = require('../utils/utils');
const components_schemas_Interval_forms_item = require('../models/components_schemas_Interval_forms_item');

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
                key: `${keyPrefix}intervalId`,
                label: `Unique system identifier for the interval (visit definition) - [${labelPrefix}intervalId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}intervalName`,
                label: `Name of the interval (visit) as defined in the study - [${labelPrefix}intervalName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}intervalDescription`,
                label: `Description of the interval (visit) - [${labelPrefix}intervalDescription]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}intervalSequence`,
                label: `Sequence number of the interval in the schedule - [${labelPrefix}intervalSequence]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}intervalGroupId`,
                label: `Identifier for the interval group (if intervals are grouped) - [${labelPrefix}intervalGroupId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}intervalGroupName`,
                label: `Name of the interval group - [${labelPrefix}intervalGroupName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}timeline`,
                label: `Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) - [${labelPrefix}timeline]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}definedUsingInterval`,
                label: `Baseline interval used for calculating this interval’s dates - [${labelPrefix}definedUsingInterval]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}windowCalculationForm`,
                label: `Baseline form (name) from which the calculation date is taken - [${labelPrefix}windowCalculationForm]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}windowCalculationDate`,
                label: `Baseline field (variable name) from which the calculation date is taken - [${labelPrefix}windowCalculationDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}actualDateForm`,
                label: `Form used to capture the actual date for this interval - [${labelPrefix}actualDateForm]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}actualDate`,
                label: `Field (variable name) used to capture the actual date for this interval - [${labelPrefix}actualDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dueDateWillBeIn`,
                label: `Number of days from the calculation date when the interval is due - [${labelPrefix}dueDateWillBeIn]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}negativeSlack`,
                label: `Number of days before the due date that are allowed (negative window) - [${labelPrefix}negativeSlack]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}positiveSlack`,
                label: `Number of days after the due date that are allowed (positive window) - [${labelPrefix}positiveSlack]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}eproGracePeriod`,
                label: `Number of days of grace period for ePRO completion after due date - [${labelPrefix}eproGracePeriod]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}forms`,
                label: `[${labelPrefix}forms]`,
                children: components_schemas_Interval_forms_item.fields(`${keyPrefix}forms${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}disabled`,
                label: `Whether the interval is soft-deleted (disabled) - [${labelPrefix}disabled]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this interval was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this interval was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'intervalId': bundle.inputData?.[`${keyPrefix}intervalId`],
            'intervalName': bundle.inputData?.[`${keyPrefix}intervalName`],
            'intervalDescription': bundle.inputData?.[`${keyPrefix}intervalDescription`],
            'intervalSequence': bundle.inputData?.[`${keyPrefix}intervalSequence`],
            'intervalGroupId': bundle.inputData?.[`${keyPrefix}intervalGroupId`],
            'intervalGroupName': bundle.inputData?.[`${keyPrefix}intervalGroupName`],
            'timeline': bundle.inputData?.[`${keyPrefix}timeline`],
            'definedUsingInterval': bundle.inputData?.[`${keyPrefix}definedUsingInterval`],
            'windowCalculationForm': bundle.inputData?.[`${keyPrefix}windowCalculationForm`],
            'windowCalculationDate': bundle.inputData?.[`${keyPrefix}windowCalculationDate`],
            'actualDateForm': bundle.inputData?.[`${keyPrefix}actualDateForm`],
            'actualDate': bundle.inputData?.[`${keyPrefix}actualDate`],
            'dueDateWillBeIn': bundle.inputData?.[`${keyPrefix}dueDateWillBeIn`],
            'negativeSlack': bundle.inputData?.[`${keyPrefix}negativeSlack`],
            'positiveSlack': bundle.inputData?.[`${keyPrefix}positiveSlack`],
            'eproGracePeriod': bundle.inputData?.[`${keyPrefix}eproGracePeriod`],
            'forms': utils.childMapping(bundle.inputData?.[`${keyPrefix}forms`], `${keyPrefix}forms`, components_schemas_Interval_forms_item),
            'disabled': bundle.inputData?.[`${keyPrefix}disabled`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
        }
    },
}
