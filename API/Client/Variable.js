goog.provide('API.Client.Variable');

/**
 * @record
 */
API.Client.Variable = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.studyKey;

/**
 * Mednet variable ID
 * @type {!number}
 * @export
 */
API.Client.Variable.prototype.variableId;

/**
 * Type of the variable (field type), e.g., RADIO, TEXT, etc.
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.variableType;

/**
 * Name of the variable (question text or label)
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.variableName;

/**
 * Sequence of the variable on the form
 * @type {!number}
 * @export
 */
API.Client.Variable.prototype.sequence;

/**
 * Number of modifications of the variable (via form metadata revisions)
 * @type {!number}
 * @export
 */
API.Client.Variable.prototype.revision;

/**
 * Whether the variable is marked as disabled (deleted)
 * @type {!boolean}
 * @export
 */
API.Client.Variable.prototype.disabled;

/**
 * Date when this variable was created
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.dateCreated;

/**
 * Date when this variable was last modified
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.dateModified;

/**
 * ID of the form that this variable belongs to
 * @type {!number}
 * @export
 */
API.Client.Variable.prototype.formId;

/**
 * Client-assigned variable OID
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.variableOid;

/**
 * Whether the variable is marked as deleted
 * @type {!boolean}
 * @export
 */
API.Client.Variable.prototype.deleted;

/**
 * Form key of the form that this variable belongs to
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.formKey;

/**
 * Name of the form that this variable belongs to
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.formName;

/**
 * User-defined identifier (field name) for the variable
 * @type {!string}
 * @export
 */
API.Client.Variable.prototype.label;

/**
 * Whether the variable is flagged as blinded (hidden in certain contexts)
 * @type {!boolean}
 * @export
 */
API.Client.Variable.prototype.blinded;

/** @enum {string} */
API.Client.Variable.VariableTypeEnum = { 
  TEXT: 'TEXT',
  TEXTAREA: 'TEXTAREA',
  RADIO: 'RADIO',
  CHECKBOX: 'CHECKBOX',
  DROPDOWN: 'DROPDOWN',
  DATE: 'DATE',
  NUMBER: 'NUMBER',
}
