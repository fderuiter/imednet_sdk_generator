const utils = require('../utils/utils');
const components_schemas_Metadata_error = require('../models/components_schemas_Metadata_error');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}status`,
                label: `HTTP status of the response (e.g., OK or ERROR) - [${labelPrefix}status]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}method`,
                label: `HTTP method of the request - [${labelPrefix}method]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}path`,
                label: `Requested URI path - [${labelPrefix}path]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}timestamp`,
                label: `Timestamp when response was generated - [${labelPrefix}timestamp]`,
                type: 'string',
            },
            ...components_schemas_Metadata_error.fields(`${keyPrefix}error`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'status': bundle.inputData?.[`${keyPrefix}status`],
            'method': bundle.inputData?.[`${keyPrefix}method`],
            'path': bundle.inputData?.[`${keyPrefix}path`],
            'timestamp': bundle.inputData?.[`${keyPrefix}timestamp`],
            'error': utils.removeIfEmpty(components_schemas_Metadata_error.mapping(bundle, `${keyPrefix}error`)),
        }
    },
}
