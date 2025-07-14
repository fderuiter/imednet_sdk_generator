const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}formId`,
                label: `Form ID scheduled in the interval - [${labelPrefix}formId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}formKey`,
                label: `Form key scheduled in the interval - [${labelPrefix}formKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formName`,
                label: `Form name scheduled in the interval - [${labelPrefix}formName]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'formId': bundle.inputData?.[`${keyPrefix}formId`],
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'formName': bundle.inputData?.[`${keyPrefix}formName`],
        }
    },
}
