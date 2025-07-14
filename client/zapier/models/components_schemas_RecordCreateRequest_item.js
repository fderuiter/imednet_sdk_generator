const utils = require('../utils/utils');
const AnyType = require('../models/AnyType');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}formKey`,
                label: `Form key identifying the eCRF to create or update - [${labelPrefix}formKey]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}formId`,
                label: `Form ID identifying the eCRF to create or update (alternative to formKey) - [${labelPrefix}formId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}siteName`,
                label: `Name of the site where the record should be created (for new subject registration) - [${labelPrefix}siteName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}siteId`,
                label: `Site ID for the record (alternative to siteName) - [${labelPrefix}siteId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Subject identifier (display ID) for which to create or update the record - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectId`,
                label: `Subject ID for which to create or update the record (alternative to subjectKey) - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectOid`,
                label: `Subject OID for which to create or update the record (alternative to subjectKey) - [${labelPrefix}subjectOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}intervalName`,
                label: `Name of the interval (visit) for a scheduled record update - [${labelPrefix}intervalName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}intervalId`,
                label: `Interval ID for a scheduled record update (alternative to intervalName) - [${labelPrefix}intervalId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordId`,
                label: `Record ID for updating an existing unscheduled record (if applicable) - [${labelPrefix}recordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordOid`,
                label: `Record OID for updating an existing unscheduled record (if applicable) - [${labelPrefix}recordOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}data`,
                label: `Key-value pairs of field names and values for the record data - [${labelPrefix}data]`,
                required: true,
                dict: true,
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'formId': bundle.inputData?.[`${keyPrefix}formId`],
            'siteName': bundle.inputData?.[`${keyPrefix}siteName`],
            'siteId': bundle.inputData?.[`${keyPrefix}siteId`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectOid': bundle.inputData?.[`${keyPrefix}subjectOid`],
            'intervalName': bundle.inputData?.[`${keyPrefix}intervalName`],
            'intervalId': bundle.inputData?.[`${keyPrefix}intervalId`],
            'recordId': bundle.inputData?.[`${keyPrefix}recordId`],
            'recordOid': bundle.inputData?.[`${keyPrefix}recordOid`],
            'data': bundle.inputData?.[`${keyPrefix}data`],
        }
    },
}
