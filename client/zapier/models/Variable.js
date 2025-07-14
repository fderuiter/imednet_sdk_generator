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
                key: `${keyPrefix}variableId`,
                label: `Mednet variable ID - [${labelPrefix}variableId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}variableType`,
                label: `Type of the variable (field type), e.g., RADIO, TEXT, etc. - [${labelPrefix}variableType]`,
                type: 'string',
                choices: [
                    'TEXT',
                    'TEXTAREA',
                    'RADIO',
                    'CHECKBOX',
                    'DROPDOWN',
                    'DATE',
                    'NUMBER',
                ],
            },
            {
                key: `${keyPrefix}variableName`,
                label: `Name of the variable (question text or label) - [${labelPrefix}variableName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}sequence`,
                label: `Sequence of the variable on the form - [${labelPrefix}sequence]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}revision`,
                label: `Number of modifications of the variable (via form metadata revisions) - [${labelPrefix}revision]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}disabled`,
                label: `Whether the variable is marked as disabled (deleted) - [${labelPrefix}disabled]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}dateCreated`,
                label: `Date when this variable was created - [${labelPrefix}dateCreated]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}dateModified`,
                label: `Date when this variable was last modified - [${labelPrefix}dateModified]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formId`,
                label: `ID of the form that this variable belongs to - [${labelPrefix}formId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}variableOid`,
                label: `Client-assigned variable OID - [${labelPrefix}variableOid]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}deleted`,
                label: `Whether the variable is marked as deleted - [${labelPrefix}deleted]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}formKey`,
                label: `Form key of the form that this variable belongs to - [${labelPrefix}formKey]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}formName`,
                label: `Name of the form that this variable belongs to - [${labelPrefix}formName]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}label`,
                label: `User-defined identifier (field name) for the variable - [${labelPrefix}label]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}blinded`,
                label: `Whether the variable is flagged as blinded (hidden in certain contexts) - [${labelPrefix}blinded]`,
                type: 'boolean',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'studyKey': bundle.inputData?.[`${keyPrefix}studyKey`],
            'variableId': bundle.inputData?.[`${keyPrefix}variableId`],
            'variableType': bundle.inputData?.[`${keyPrefix}variableType`],
            'variableName': bundle.inputData?.[`${keyPrefix}variableName`],
            'sequence': bundle.inputData?.[`${keyPrefix}sequence`],
            'revision': bundle.inputData?.[`${keyPrefix}revision`],
            'disabled': bundle.inputData?.[`${keyPrefix}disabled`],
            'dateCreated': bundle.inputData?.[`${keyPrefix}dateCreated`],
            'dateModified': bundle.inputData?.[`${keyPrefix}dateModified`],
            'formId': bundle.inputData?.[`${keyPrefix}formId`],
            'variableOid': bundle.inputData?.[`${keyPrefix}variableOid`],
            'deleted': bundle.inputData?.[`${keyPrefix}deleted`],
            'formKey': bundle.inputData?.[`${keyPrefix}formKey`],
            'formName': bundle.inputData?.[`${keyPrefix}formName`],
            'label': bundle.inputData?.[`${keyPrefix}label`],
            'blinded': bundle.inputData?.[`${keyPrefix}blinded`],
        }
    },
}
