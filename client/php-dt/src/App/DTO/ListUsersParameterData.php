<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for listUsers
 */
class ListUsersParameterData
{
    /**
     * For user listing, whether to include inactive users
     * @DTA\Data(subset="query", field="includeInactive", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"bool"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"bool"})
     */
    public ?bool $include_inactive = null;

    /**
     * Number of items to return per page (max 500)
     * @DTA\Data(subset="query", field="size", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="Range", options={"min":1, "max":500})
     */
    public ?int $size = null;

    /**
     * Page index to retrieve (0-based)
     * @DTA\Data(subset="query", field="page", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="Range", options={"min":0})
     */
    public ?int $page = null;

    /**
     * Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated.
     * @DTA\Data(subset="query", field="sort", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     */
    public ?string $sort = null;

    /**
     * Study key identifying the study context for the request
     * @DTA\Data(subset="path", field="studyKey")
     * @DTA\Strategy(subset="path", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="path", name="QueryStringScalar", options={"type":"string"})
     */
    public ?string $study_key = null;

}
