<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class RecordJobStatus
{
    /**
     * Unique job identifier
     * @DTA\Data(field="jobId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $job_id = null;

    /**
     * Batch ID used to track the job (identical to jobId in most cases)
     * @DTA\Data(field="batchId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $batch_id = null;

    /**
     * Current state of the job (e.g., created, completed)
     * @DTA\Data(field="state", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $state = null;

}
