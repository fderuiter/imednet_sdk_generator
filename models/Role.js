const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}dateCreated`,
                label: `Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond]) - [${labelPrefix}dateCreated]`,
                list: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Timestamp when the role assignment was last modified - [${labelPrefix}dateModified]`,
                list: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}roleId`,
                label: `Unique role ID (UUID) - [${labelPrefix}roleId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}communityId`,
                label: `Community ID or level associated with the role - [${labelPrefix}communityId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}name`,
                label: `Name of the role - [${labelPrefix}name]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}description`,
                label: `Description of the role - [${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}level`,
                label: `Role level or hierarchy - [${labelPrefix}level]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}type`,
                label: `Role type/category - [${labelPrefix}type]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}inactive`,
                label: `Whether the role is inactive - [${labelPrefix}inactive]`,
                type: 'boolean',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
            'roleId': bundle.inputData?.[`${keyPrefix}roleId`],
            'communityId': bundle.inputData?.[`${keyPrefix}communityId`],
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'level': bundle.inputData?.[`${keyPrefix}level`],
            'type': bundle.inputData?.[`${keyPrefix}type`],
            'inactive': bundle.inputData?.[`${keyPrefix}inactive`],
        }
    },
}
