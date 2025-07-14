const utils = require('../utils/utils');
const Form = require('../models/Form');
const Metadata = require('../models/Metadata');
const Pagination = require('../models/Pagination');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...Metadata.fields(`${keyPrefix}metadata`, isInput),
            ...Pagination.fields(`${keyPrefix}pagination`, isInput),
            {
                key: `${keyPrefix}data`,
                label: `[${labelPrefix}data]`,
                children: Form.fields(`${keyPrefix}data${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'metadata': utils.removeIfEmpty(Metadata.mapping(bundle, `${keyPrefix}metadata`)),
            'pagination': utils.removeIfEmpty(Pagination.mapping(bundle, `${keyPrefix}pagination`)),
            'data': utils.childMapping(bundle.inputData?.[`${keyPrefix}data`], `${keyPrefix}data`, Form),
        }
    },
}
