const utils = require('../utils/utils');
const Role = require('../models/Role');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}userId`,
                label: `Unique user ID (UUID) - [${labelPrefix}userId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}login`,
                label: `User login name - [${labelPrefix}login]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}firstName`,
                label: `User first name - [${labelPrefix}firstName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}lastName`,
                label: `User last name - [${labelPrefix}lastName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}email`,
                label: `User email address - [${labelPrefix}email]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}userActiveInStudy`,
                label: `Whether the user is active in the given study - [${labelPrefix}userActiveInStudy]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}roles`,
                label: `[${labelPrefix}roles]`,
                children: Role.fields(`${keyPrefix}roles${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'userId': bundle.inputData?.[`${keyPrefix}userId`],
            'login': bundle.inputData?.[`${keyPrefix}login`],
            'firstName': bundle.inputData?.[`${keyPrefix}firstName`],
            'lastName': bundle.inputData?.[`${keyPrefix}lastName`],
            'email': bundle.inputData?.[`${keyPrefix}email`],
            'userActiveInStudy': bundle.inputData?.[`${keyPrefix}userActiveInStudy`],
            'roles': utils.childMapping(bundle.inputData?.[`${keyPrefix}roles`], `${keyPrefix}roles`, Role),
        }
    },
}
