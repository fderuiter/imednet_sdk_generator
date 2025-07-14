<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Variable
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Mednet variable ID
     * @DTA\Data(field="variableId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $variable_id = null;

    /**
     * Type of the variable (field type), e.g., RADIO, TEXT, etc.
     * @DTA\Data(field="variableType", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $variable_type = null;

    /**
     * Name of the variable (question text or label)
     * @DTA\Data(field="variableName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $variable_name = null;

    /**
     * Sequence of the variable on the form
     * @DTA\Data(field="sequence", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $sequence = null;

    /**
     * Number of modifications of the variable (via form metadata revisions)
     * @DTA\Data(field="revision", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $revision = null;

    /**
     * Whether the variable is marked as disabled (deleted)
     * @DTA\Data(field="disabled", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $disabled = null;

    /**
     * Date when this variable was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when this variable was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

    /**
     * ID of the form that this variable belongs to
     * @DTA\Data(field="formId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $form_id = null;

    /**
     * Client-assigned variable OID
     * @DTA\Data(field="variableOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $variable_oid = null;

    /**
     * Whether the variable is marked as deleted
     * @DTA\Data(field="deleted", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $deleted = null;

    /**
     * Form key of the form that this variable belongs to
     * @DTA\Data(field="formKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Name of the form that this variable belongs to
     * @DTA\Data(field="formName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_name = null;

    /**
     * User-defined identifier (field name) for the variable
     * @DTA\Data(field="label", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $label = null;

    /**
     * Whether the variable is flagged as blinded (hidden in certain contexts)
     * @DTA\Data(field="blinded", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $blinded = null;

}
