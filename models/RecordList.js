const utils = require('../utils/utils');
const Metadata = require('../models/Metadata');
const Pagination = require('../models/Pagination');
const Record = require('../models/Record');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            ...Metadata.fields(`${keyPrefix}metadata`, isInput),
            ...Pagination.fields(`${keyPrefix}pagination`, isInput),
            {
                key: `${keyPrefix}data`,
                label: `[${labelPrefix}data]`,
                children: Record.fields(`${keyPrefix}data${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'metadata': utils.removeIfEmpty(Metadata.mapping(bundle, `${keyPrefix}metadata`)),
            'pagination': utils.removeIfEmpty(Pagination.mapping(bundle, `${keyPrefix}pagination`)),
            'data': utils.childMapping(bundle.inputData?.[`${keyPrefix}data`], `${keyPrefix}data`, Record),
        }
    },
}
