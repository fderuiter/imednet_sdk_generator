<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Job
{
    /**
     * Unique job identifier
     * @DTA\Data(field="jobId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $job_id = null;

    /**
     * Batch ID associated with the job (useful for linking with record creation requests)
     * @DTA\Data(field="batchId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $batch_id = null;

    /**
     * State of the job (e.g., completed, pending)
     * @DTA\Data(field="state", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $state = null;

    /**
     * Timestamp when the job was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Timestamp when the job started processing
     * @DTA\Data(field="dateStarted", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_started = null;

    /**
     * Timestamp when the job finished processing
     * @DTA\Data(field="dateFinished", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_finished = null;

}
