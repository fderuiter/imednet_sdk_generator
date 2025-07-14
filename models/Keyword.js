const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}keywordName`,
                label: `Name of the keyword - [${labelPrefix}keywordName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}keywordKey`,
                label: `Key of the keyword (short code) - [${labelPrefix}keywordKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}keywordId`,
                label: `Internal keyword ID - [${labelPrefix}keywordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}dateAdded`,
                label: `Date when this keyword was added - [${labelPrefix}dateAdded]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'keywordName': bundle.inputData?.[`${keyPrefix}keywordName`],
            'keywordKey': bundle.inputData?.[`${keyPrefix}keywordKey`],
            'keywordId': bundle.inputData?.[`${keyPrefix}keywordId`],
            'dateAdded': bundle.inputData?.[`${keyPrefix}dateAdded`],
        }
    },
}
