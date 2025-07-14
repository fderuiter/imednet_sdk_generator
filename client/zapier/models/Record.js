const utils = require('../utils/utils');
const AnyType = require('../models/AnyType');
const Keyword = require('../models/Keyword');

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
                key: `${keyPrefix}intervalId`,
                label: `Interval ID (visit definition) that this record is associated with - [${labelPrefix}intervalId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}formId`,
                label: `Form ID of the form this record instance belongs to - [${labelPrefix}formId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}formKey`,
                label: `Form key of the form for this record instance - [${labelPrefix}formKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}siteId`,
                label: `Site ID associated with the record - [${labelPrefix}siteId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordId`,
                label: `Unique record ID - [${labelPrefix}recordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordOid`,
                label: `Client-assigned record OID - [${labelPrefix}recordOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}recordType`,
                label: `Type of record (e.g., SUBJECT for subject-related forms) - [${labelPrefix}recordType]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}recordStatus`,
                label: `Current status of the record (e.g., Record Incomplete, Record Complete) - [${labelPrefix}recordStatus]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}deleted`,
                label: `Whether the record is marked as deleted - [${labelPrefix}deleted]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this record was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this record was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectId`,
                label: `Mednet subject ID that this record is associated with - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectOid`,
                label: `Client-assigned subject OID for the subject this record is associated with - [${labelPrefix}subjectOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Subject display ID that this record is associated with - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}visitId`,
                label: `Visit instance ID that this record is associated with (if applicable) - [${labelPrefix}visitId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}parentRecordId`,
                label: `Record ID of the parent record if this record is a subrecord (if applicable) - [${labelPrefix}parentRecordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}keywords`,
                label: `[${labelPrefix}keywords]`,
                children: Keyword.fields(`${keyPrefix}keywords${!isInput ? '[]' : ''}`, isInput, true), 
            },
            {
                key: `${keyPrefix}recordData`,
                label: `Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. - [${labelPrefix}recordData]`,
                dict: true,
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'intervalId': bundle.inputData?.[`${keyPrefix}intervalId`],
            'formId': bundle.inputData?.[`${keyPrefix}formId`],
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'siteId': bundle.inputData?.[`${keyPrefix}siteId`],
            'recordId': bundle.inputData?.[`${keyPrefix}recordId`],
            'recordOid': bundle.inputData?.[`${keyPrefix}recordOid`],
            'recordType': bundle.inputData?.[`${keyPrefix}recordType`],
            'recordStatus': bundle.inputData?.[`${keyPrefix}recordStatus`],
            'deleted': bundle.inputData?.[`${keyPrefix}deleted`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectOid': bundle.inputData?.[`${keyPrefix}subjectOid`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'visitId': bundle.inputData?.[`${keyPrefix}visitId`],
            'parentRecordId': bundle.inputData?.[`${keyPrefix}parentRecordId`],
            'keywords': utils.childMapping(bundle.inputData?.[`${keyPrefix}keywords`], `${keyPrefix}keywords`, Keyword),
            'recordData': bundle.inputData?.[`${keyPrefix}recordData`],
        }
    },
}
