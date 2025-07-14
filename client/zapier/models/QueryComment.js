const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}sequence`,
                label: `Sequence number of the comment/action in the query history - [${labelPrefix}sequence]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}annotationStatus`,
                label: `Status of the query after this comment (e.g., Open, Closed) - [${labelPrefix}annotationStatus]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}user`,
                label: `Username of the user who made the comment or action - [${labelPrefix}user]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}comment`,
                label: `Text of the comment - [${labelPrefix}comment]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}closed`,
                label: `Whether the query was marked closed at this step - [${labelPrefix}closed]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}date`,
                label: `Date of the comment or action - [${labelPrefix}date]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'sequence': bundle.inputData?.[`${keyPrefix}sequence`],
            'annotationStatus': bundle.inputData?.[`${keyPrefix}annotationStatus`],
            'user': bundle.inputData?.[`${keyPrefix}user`],
            'comment': bundle.inputData?.[`${keyPrefix}comment`],
            'closed': bundle.inputData?.[`${keyPrefix}closed`],
            'date': bundle.inputData?.[`${keyPrefix}date`],
        }
    },
}
