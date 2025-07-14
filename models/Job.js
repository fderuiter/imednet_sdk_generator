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
                label: `Batch ID associated with the job (useful for linking with record creation requests) - [${labelPrefix}batchId]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}state`,
                label: `State of the job (e.g., completed, pending) - [${labelPrefix}state]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Timestamp when the job was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateStarted`,
                label: `Timestamp when the job started processing - [${labelPrefix}dateStarted]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateFinished`,
                label: `Timestamp when the job finished processing - [${labelPrefix}dateFinished]`,
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
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateStarted': bundle.inputData?.[`${keyPrefix}dateStarted`],
            'dateFinished': bundle.inputData?.[`${keyPrefix}dateFinished`],
        }
    },
}
