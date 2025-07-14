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
                key: `${keyPrefix}siteId`,
                label: `Unique site ID - [${labelPrefix}siteId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}siteName`,
                label: `Name of the site - [${labelPrefix}siteName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}siteEnrollmentStatus`,
                label: `Enrollment status of the site - [${labelPrefix}siteEnrollmentStatus]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this site was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this site was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'siteId': bundle.inputData?.[`${keyPrefix}siteId`],
            'siteName': bundle.inputData?.[`${keyPrefix}siteName`],
            'siteEnrollmentStatus': bundle.inputData?.[`${keyPrefix}siteEnrollmentStatus`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
        }
    },
}
