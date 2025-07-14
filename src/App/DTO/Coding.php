<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Coding
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Name of the site associated with the coded data
     * @DTA\Data(field="siteName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $site_name = null;

    /**
     * Site ID associated with the coded data
     * @DTA\Data(field="siteId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $site_id = null;

    /**
     * Subject ID associated with the coded data
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Subject key (display ID) associated with the coded data
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Form ID where the coded data originates
     * @DTA\Data(field="formId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $form_id = null;

    /**
     * Name of the form where the coded data originates
     * @DTA\Data(field="formName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_name = null;

    /**
     * Form key where the coded data originates
     * @DTA\Data(field="formKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Revision number of the coding entry
     * @DTA\Data(field="revision", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $revision = null;

    /**
     * Record ID associated with the coded data
     * @DTA\Data(field="recordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_id = null;

    /**
     * Variable name (field) that was coded
     * @DTA\Data(field="variable", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $variable = null;

    /**
     * Original value entered that required coding
     * @DTA\Data(field="value", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $value = null;

    /**
     * Mednet coding ID
     * @DTA\Data(field="codingId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $coding_id = null;

    /**
     * Standardized code assigned (e.g., dictionary term)
     * @DTA\Data(field="code", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $code = null;

    /**
     * Name of the user who performed the coding
     * @DTA\Data(field="codedBy", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $coded_by = null;

    /**
     * Reason for coding or any notes on changes
     * @DTA\Data(field="reason", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $reason = null;

    /**
     * Name of the dictionary used (e.g., MedDRA)
     * @DTA\Data(field="dictionaryName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $dictionary_name = null;

    /**
     * Version of the dictionary used
     * @DTA\Data(field="dictionaryVersion", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $dictionary_version = null;

    /**
     * Date when the coding was performed
     * @DTA\Data(field="dateCoded", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_coded = null;

}
