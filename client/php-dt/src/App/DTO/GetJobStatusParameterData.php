<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for getJobStatus
 */
class GetJobStatusParameterData
{
    /**
     * Study key identifying the study context for the request
     * @DTA\Data(subset="path", field="studyKey")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Batch ID of the job to retrieve
     * @DTA\Data(subset="path", field="batchId")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     */
    public ?string $batch_id = null;

}
