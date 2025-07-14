const utils = require('../utils/utils');
const Sort = require('../models/Sort');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}currentPage`,
                label: `Current index page returned - [${labelPrefix}currentPage]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}size`,
                label: `Number of items per page returned - [${labelPrefix}size]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}totalPages`,
                label: `Total number of pages available - [${labelPrefix}totalPages]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}totalElements`,
                label: `Total number of elements (items) available - [${labelPrefix}totalElements]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}sort`,
                label: `[${labelPrefix}sort]`,
                children: Sort.fields(`${keyPrefix}sort${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'currentPage': bundle.inputData?.[`${keyPrefix}currentPage`],
            'size': bundle.inputData?.[`${keyPrefix}size`],
            'totalPages': bundle.inputData?.[`${keyPrefix}totalPages`],
            'totalElements': bundle.inputData?.[`${keyPrefix}totalElements`],
            'sort': utils.childMapping(bundle.inputData?.[`${keyPrefix}sort`], `${keyPrefix}sort`, Sort),
        }
    },
}
