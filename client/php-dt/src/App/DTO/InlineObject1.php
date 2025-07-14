<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class InlineObject1
{
    /**
     * @DTA\Data(field="metadata", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Metadata::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Metadata::class})
     */
    public ?\App\DTO\Metadata $metadata = null;

}
