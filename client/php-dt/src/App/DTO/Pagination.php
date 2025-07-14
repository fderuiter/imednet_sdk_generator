<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Pagination
{
    /**
     * Current index page returned
     * @DTA\Data(field="currentPage", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $current_page = null;

    /**
     * Number of items per page returned
     * @DTA\Data(field="size", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $size = null;

    /**
     * Total number of pages available
     * @DTA\Data(field="totalPages", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $total_pages = null;

    /**
     * Total number of elements (items) available
     * @DTA\Data(field="totalElements", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $total_elements = null;

    /**
     * @DTA\Data(field="sort", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection1::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection1::class})
     */
    public ?\App\DTO\Collection1 $sort = null;

}
