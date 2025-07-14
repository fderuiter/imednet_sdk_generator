const utils = require('../utils/utils');
const QueryComment = require('../models/QueryComment');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}studyKey`,
                label: `Unique study key - [${labelPrefix}studyKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectId`,
                label: `Mednet subject ID associated with the query (if applicable) - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectOid`,
                label: `Client-assigned subject OID (if applicable) - [${labelPrefix}subjectOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}annotationType`,
                label: `Category/type of the query (e.g., subject, record, question) - [${labelPrefix}annotationType]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}annotationId`,
                label: `Unique system identifier for the query - [${labelPrefix}annotationId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}type`,
                label: `System text identifier for the query type/location (subject, record, question) - [${labelPrefix}type]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}description`,
                label: `Description of the query (e.g., reason or context) - [${labelPrefix}description]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}recordId`,
                label: `Record ID associated with the query (if applicable) - [${labelPrefix}recordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}variable`,
                label: `Variable name (field) associated with the query (if applicable) - [${labelPrefix}variable]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Subject display ID associated with the query (if applicable) - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when the query was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when the query was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}queryComments`,
                label: `[${labelPrefix}queryComments]`,
                children: QueryComment.fields(`${keyPrefix}queryComments${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectOid': bundle.inputData?.[`${keyPrefix}subjectOid`],
            'annotationType': bundle.inputData?.[`${keyPrefix}annotationType`],
            'annotationId': bundle.inputData?.[`${keyPrefix}annotationId`],
            'type': bundle.inputData?.[`${keyPrefix}type`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'recordId': bundle.inputData?.[`${keyPrefix}recordId`],
            'variable': bundle.inputData?.[`${keyPrefix}variable`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
            'queryComments': utils.childMapping(bundle.inputData?.[`${keyPrefix}queryComments`], `${keyPrefix}queryComments`, QueryComment),
        }
    },
}
