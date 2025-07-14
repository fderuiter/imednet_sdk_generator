const utils = require('../utils/utils');
const Keyword = require('../models/Keyword');

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
                key: `${keyPrefix}subjectId`,
                label: `Mednet subject ID (internal numeric ID) - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectOid`,
                label: `Client-assigned subject object identifier (OID) - [${labelPrefix}subjectOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Protocol-assigned subject identifier (display ID) - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectStatus`,
                label: `Current status of the subject (e.g., Enrolled) - [${labelPrefix}subjectStatus]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}siteId`,
                label: `Mednet site ID the subject is associated with - [${labelPrefix}siteId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}siteName`,
                label: `Name of the site the subject is associated with - [${labelPrefix}siteName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}deleted`,
                label: `Whether the subject is marked as deleted - [${labelPrefix}deleted]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}enrollmentStartDate`,
                label: `Subject’s enrollment start date - [${labelPrefix}enrollmentStartDate]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this subject record was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this subject record was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}keywords`,
                label: `[${labelPrefix}keywords]`,
                children: Keyword.fields(`${keyPrefix}keywords${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectOid': bundle.inputData?.[`${keyPrefix}subjectOid`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'subjectStatus': bundle.inputData?.[`${keyPrefix}subjectStatus`],
            'siteId': bundle.inputData?.[`${keyPrefix}siteId`],
            'siteName': bundle.inputData?.[`${keyPrefix}siteName`],
            'deleted': bundle.inputData?.[`${keyPrefix}deleted`],
            'enrollmentStartDate': bundle.inputData?.[`${keyPrefix}enrollmentStartDate`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
            'keywords': utils.childMapping(bundle.inputData?.[`${keyPrefix}keywords`], `${keyPrefix}keywords`, Keyword),
        }
    },
}
