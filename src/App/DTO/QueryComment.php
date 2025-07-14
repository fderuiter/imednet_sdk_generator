<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class QueryComment
{
    /**
     * Sequence number of the comment/action in the query history
     * @DTA\Data(field="sequence", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $sequence = null;

    /**
     * Status of the query after this comment (e.g., Open, Closed)
     * @DTA\Data(field="annotationStatus", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $annotation_status = null;

    /**
     * Username of the user who made the comment or action
     * @DTA\Data(field="user", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $user = null;

    /**
     * Text of the comment
     * @DTA\Data(field="comment", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $comment = null;

    /**
     * Whether the query was marked closed at this step
     * @DTA\Data(field="closed", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $closed = null;

    /**
     * Date of the comment or action
     * @DTA\Data(field="date", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date = null;

}
