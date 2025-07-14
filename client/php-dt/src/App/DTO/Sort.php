<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Sort
{
    /**
     * Name of the property by which the result is sorted
     * @DTA\Data(field="property", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $property = null;

    /**
     * Sort direction (ASC or DESC)
     * @DTA\Data(field="direction", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $direction = null;

}
