const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}jobId`,
                label: `Unique job identifier - [${labelPrefix}jobId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}batchId`,
                label: `Batch ID used to track the job (identical to jobId in most cases) - [${labelPrefix}batchId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}state`,
                label: `Current state of the job (e.g., created, completed) - [${labelPrefix}state]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'jobId': bundle.inputData?.[`${keyPrefix}jobId`],
            'batchId': bundle.inputData?.[`${keyPrefix}batchId`],
            'state': bundle.inputData?.[`${keyPrefix}state`],
        }
    },
}
