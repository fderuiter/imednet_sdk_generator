<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Form
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Mednet Form ID
     * @DTA\Data(field="formId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $form_id = null;

    /**
     * User-defined form key
     * @DTA\Data(field="formKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Name of the form (eCRF)
     * @DTA\Data(field="formName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_name = null;

    /**
     * Type of the form (e.g., Subject or Site)
     * @DTA\Data(field="formType", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_type = null;

    /**
     * Number of modifications (revisions) of the form metadata
     * @DTA\Data(field="revision", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $revision = null;

    /**
     * Whether the form has an embedded log
     * @DTA\Data(field="embeddedLog", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $embedded_log = null;

    /**
     * Whether the form enforces record ownership
     * @DTA\Data(field="enforceOwnership", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $enforce_ownership = null;

    /**
     * Whether the form requires a user agreement
     * @DTA\Data(field="userAgreement", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $user_agreement = null;

    /**
     * Whether the form is marked as a subject record report
     * @DTA\Data(field="subjectRecordReport", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $subject_record_report = null;

    /**
     * Whether the form is included in unscheduled visits
     * @DTA\Data(field="unscheduledVisit", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $unscheduled_visit = null;

    /**
     * Whether the form is included in Other Forms category
     * @DTA\Data(field="otherForms", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $other_forms = null;

    /**
     * Whether the form is an ePRO (electronic patient reported outcome) form
     * @DTA\Data(field="eproForm", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $epro_form = null;

    /**
     * Whether the form allows copying of data
     * @DTA\Data(field="allowCopy", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $allow_copy = null;

    /**
     * Whether the form is soft-deleted (disabled)
     * @DTA\Data(field="disabled", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $disabled = null;

    /**
     * Date when this form was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when this form was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

}
