<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Query
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Mednet subject ID associated with the query (if applicable)
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Client-assigned subject OID (if applicable)
     * @DTA\Data(field="subjectOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_oid = null;

    /**
     * Category/type of the query (e.g., subject, record, question)
     * @DTA\Data(field="annotationType", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $annotation_type = null;

    /**
     * Unique system identifier for the query
     * @DTA\Data(field="annotationId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $annotation_id = null;

    /**
     * System text identifier for the query type/location (subject, record, question)
     * @DTA\Data(field="type", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $type = null;

    /**
     * Description of the query (e.g., reason or context)
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $description = null;

    /**
     * Record ID associated with the query (if applicable)
     * @DTA\Data(field="recordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_id = null;

    /**
     * Variable name (field) associated with the query (if applicable)
     * @DTA\Data(field="variable", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $variable = null;

    /**
     * Subject display ID associated with the query (if applicable)
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Date when the query was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when the query was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

    /**
     * History of comments/actions on the query
     * @DTA\Data(field="queryComments", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection16::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection16::class})
     */
    public ?\App\DTO\Collection16 $query_comments = null;

}
