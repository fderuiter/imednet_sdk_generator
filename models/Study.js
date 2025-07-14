const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}sponsorKey`,
                label: `Sponsor key that this study belongs to - [${labelPrefix}sponsorKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}studyKey`,
                label: `Unique study key - [${labelPrefix}studyKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}studyId`,
                label: `Mednet study ID (internal numeric identifier) - [${labelPrefix}studyId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}studyName`,
                label: `Name of the study - [${labelPrefix}studyName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}studyDescription`,
                label: `Description of the study - [${labelPrefix}studyDescription]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}studyType`,
                label: `Type of study (e.g., STUDY) - [${labelPrefix}studyType]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when the study record was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when the study record was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'sponsorKey': bundle.inputData?.[`${keyPrefix}sponsorKey`],
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'studyId': bundle.inputData?.[`${keyPrefix}studyId`],
            'studyName': bundle.inputData?.[`${keyPrefix}studyName`],
            'studyDescription': bundle.inputData?.[`${keyPrefix}studyDescription`],
            'studyType': bundle.inputData?.[`${keyPrefix}studyType`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
        }
    },
}
