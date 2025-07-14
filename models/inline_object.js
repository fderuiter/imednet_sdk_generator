const utils = require('../utils/utils');
const Metadata = require('../models/Metadata');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...Metadata.fields(`${keyPrefix}metadata`, isInput),
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'metadata': utils.removeIfEmpty(Metadata.mapping(bundle, `${keyPrefix}metadata`)),
        }
    },
}
