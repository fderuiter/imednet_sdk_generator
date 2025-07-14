const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}property`,
                label: `Name of the property by which the result is sorted - [${labelPrefix}property]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}direction`,
                label: `Sort direction (ASC or DESC) - [${labelPrefix}direction]`,
                type: 'string',
                choices: [
                    'ASC',
                    'DESC',
                ],
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'property': bundle.inputData?.[`${keyPrefix}property`],
            'direction': bundle.inputData?.[`${keyPrefix}direction`],
        }
    },
}
