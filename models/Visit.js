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
                key: `${keyPrefix}visitId`,
                label: `Unique system identifier for the subject visit instance - [${labelPrefix}visitId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}intervalId`,
                label: `Unique system identifier of the interval definition for this visit - [${labelPrefix}intervalId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}intervalName`,
                label: `Name of the interval (visit) for this visit instance - [${labelPrefix}intervalName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectId`,
                label: `Mednet subject ID of the subject - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Protocol-assigned subject identifier - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}startDate`,
                label: `Start date of the visit window (in YYYY-MM-DD format) - [${labelPrefix}startDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}endDate`,
                label: `End date of the visit window (in YYYY-MM-DD format) - [${labelPrefix}endDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dueDate`,
                label: `Due date of the visit (in YYYY-MM-DD format), if applicable - [${labelPrefix}dueDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}visitDate`,
                label: `Actual date the visit took place (in YYYY-MM-DD format) - [${labelPrefix}visitDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}visitDateForm`,
                label: `Name of the form used to capture the actual visit date - [${labelPrefix}visitDateForm]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}visitDateQuestion`,
                label: `Variable name of the field capturing the actual visit date - [${labelPrefix}visitDateQuestion]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}deleted`,
                label: `Whether the visit instance is marked as deleted - [${labelPrefix}deleted]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this visit record was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this visit record was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'visitId': bundle.inputData?.[`${keyPrefix}visitId`],
            'intervalId': bundle.inputData?.[`${keyPrefix}intervalId`],
            'intervalName': bundle.inputData?.[`${keyPrefix}intervalName`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'startDate': bundle.inputData?.[`${keyPrefix}startDate`],
            'endDate': bundle.inputData?.[`${keyPrefix}endDate`],
            'dueDate': bundle.inputData?.[`${keyPrefix}dueDate`],
            'visitDate': bundle.inputData?.[`${keyPrefix}visitDate`],
            'visitDateForm': bundle.inputData?.[`${keyPrefix}visitDateForm`],
            'visitDateQuestion': bundle.inputData?.[`${keyPrefix}visitDateQuestion`],
            'deleted': bundle.inputData?.[`${keyPrefix}deleted`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
        }
    },
}
