<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Metadata
{
    /**
     * HTTP status of the response (e.g., OK or ERROR)
     * @DTA\Data(field="status", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $status = null;

    /**
     * HTTP method of the request
     * @DTA\Data(field="method", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $method = null;

    /**
     * Requested URI path
     * @DTA\Data(field="path", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $path = null;

    /**
     * Timestamp when response was generated
     * @DTA\Data(field="timestamp", nullable=true)
     * @DTA\Strategy(name="DateTime")
     * @DTA\Validator(name="DateTime")
     */
    public ?\DateTimeInterface $timestamp = null;

    /**
     * @DTA\Data(field="error", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ComponentsSchemasMetadataError::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ComponentsSchemasMetadataError::class})
     */
    public ?\App\DTO\ComponentsSchemasMetadataError $error = null;

}
