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
                key: `${keyPrefix}siteName`,
                label: `Name of the site associated with the coded data - [${labelPrefix}siteName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}siteId`,
                label: `Site ID associated with the coded data - [${labelPrefix}siteId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectId`,
                label: `Subject ID associated with the coded data - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Subject key (display ID) associated with the coded data - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formId`,
                label: `Form ID where the coded data originates - [${labelPrefix}formId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}formName`,
                label: `Name of the form where the coded data originates - [${labelPrefix}formName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formKey`,
                label: `Form key where the coded data originates - [${labelPrefix}formKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}revision`,
                label: `Revision number of the coding entry - [${labelPrefix}revision]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordId`,
                label: `Record ID associated with the coded data - [${labelPrefix}recordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}variable`,
                label: `Variable name (field) that was coded - [${labelPrefix}variable]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}value`,
                label: `Original value entered that required coding - [${labelPrefix}value]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}codingId`,
                label: `Mednet coding ID - [${labelPrefix}codingId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}code`,
                label: `Standardized code assigned (e.g., dictionary term) - [${labelPrefix}code]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}codedBy`,
                label: `Name of the user who performed the coding - [${labelPrefix}codedBy]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}reason`,
                label: `Reason for coding or any notes on changes - [${labelPrefix}reason]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dictionaryName`,
                label: `Name of the dictionary used (e.g., MedDRA) - [${labelPrefix}dictionaryName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dictionaryVersion`,
                label: `Version of the dictionary used - [${labelPrefix}dictionaryVersion]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateCoded`,
                label: `Date when the coding was performed - [${labelPrefix}dateCoded]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'siteName': bundle.inputData?.[`${keyPrefix}siteName`],
            'siteId': bundle.inputData?.[`${keyPrefix}siteId`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'formId': bundle.inputData?.[`${keyPrefix}formId`],
            'formName': bundle.inputData?.[`${keyPrefix}formName`],
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'revision': bundle.inputData?.[`${keyPrefix}revision`],
            'recordId': bundle.inputData?.[`${keyPrefix}recordId`],
            'variable': bundle.inputData?.[`${keyPrefix}variable`],
            'value': bundle.inputData?.[`${keyPrefix}value`],
            'codingId': bundle.inputData?.[`${keyPrefix}codingId`],
            'code': bundle.inputData?.[`${keyPrefix}code`],
            'codedBy': bundle.inputData?.[`${keyPrefix}codedBy`],
            'reason': bundle.inputData?.[`${keyPrefix}reason`],
            'dictionaryName': bundle.inputData?.[`${keyPrefix}dictionaryName`],
            'dictionaryVersion': bundle.inputData?.[`${keyPrefix}dictionaryVersion`],
            'dateCoded': bundle.inputData?.[`${keyPrefix}dateCoded`],
        }
    },
}
