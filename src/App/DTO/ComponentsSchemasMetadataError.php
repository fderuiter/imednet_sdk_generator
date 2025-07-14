<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Error details if an error occurred
 */
class ComponentsSchemasMetadataError
{
    /**
     * Error message describing the issue
     * @DTA\Data(field="message", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $message = null;

}
