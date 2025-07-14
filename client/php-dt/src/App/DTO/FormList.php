<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class FormList
{
    /**
     * @DTA\Data(field="metadata", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Metadata::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Metadata::class})
     */
    public ?\App\DTO\Metadata $metadata = null;

    /**
     * @DTA\Data(field="pagination", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Pagination::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Pagination::class})
     */
    public ?\App\DTO\Pagination $pagination = null;

    /**
     * @DTA\Data(field="data", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection4::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection4::class})
     */
    public ?\App\DTO\Collection4 $data = null;

}
