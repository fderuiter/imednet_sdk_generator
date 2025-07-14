const utils = require('../utils/utils');

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
                key: `${keyPrefix}recordRevisionId`,
                label: `Unique system identifier for the record revision - [${labelPrefix}recordRevisionId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordId`,
                label: `Unique system identifier of the related record - [${labelPrefix}recordId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordOid`,
                label: `Client-assigned record OID (if any) - [${labelPrefix}recordOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}recordRevision`,
                label: `Revision number of the record (version of the record status) - [${labelPrefix}recordRevision]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}dataRevision`,
                label: `Revision number of the data within the record - [${labelPrefix}dataRevision]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}recordStatus`,
                label: `Status of the record at this revision (user-defined status label) - [${labelPrefix}recordStatus]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectId`,
                label: `Mednet subject ID related to the record - [${labelPrefix}subjectId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}subjectOid`,
                label: `Client-assigned subject OID related to the record - [${labelPrefix}subjectOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}subjectKey`,
                label: `Subject display ID related to the record - [${labelPrefix}subjectKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}siteId`,
                label: `Site ID related to the record - [${labelPrefix}siteId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}formKey`,
                label: `Form key of the form that the record belongs to - [${labelPrefix}formKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}intervalId`,
                label: `Interval ID (visit definition) related to the record - [${labelPrefix}intervalId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}role`,
                label: `Role name of the user who saved the record revision - [${labelPrefix}role]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}user`,
                label: `Username of the user who saved the record revision - [${labelPrefix}user]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}reasonForChange`,
                label: `Reason for change, if provided (for audit trail) - [${labelPrefix}reasonForChange]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}deleted`,
                label: `Whether the record was deleted in this revision - [${labelPrefix}deleted]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this record revision was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'recordRevisionId': bundle.inputData?.[`${keyPrefix}recordRevisionId`],
            'recordId': bundle.inputData?.[`${keyPrefix}recordId`],
            'recordOid': bundle.inputData?.[`${keyPrefix}recordOid`],
            'recordRevision': bundle.inputData?.[`${keyPrefix}recordRevision`],
            'dataRevision': bundle.inputData?.[`${keyPrefix}dataRevision`],
            'recordStatus': bundle.inputData?.[`${keyPrefix}recordStatus`],
            'subjectId': bundle.inputData?.[`${keyPrefix}subjectId`],
            'subjectOid': bundle.inputData?.[`${keyPrefix}subjectOid`],
            'subjectKey': bundle.inputData?.[`${keyPrefix}subjectKey`],
            'siteId': bundle.inputData?.[`${keyPrefix}siteId`],
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'intervalId': bundle.inputData?.[`${keyPrefix}intervalId`],
            'role': bundle.inputData?.[`${keyPrefix}role`],
            'user': bundle.inputData?.[`${keyPrefix}user`],
            'reasonForChange': bundle.inputData?.[`${keyPrefix}reasonForChange`],
            'deleted': bundle.inputData?.[`${keyPrefix}deleted`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
        }
    },
}
