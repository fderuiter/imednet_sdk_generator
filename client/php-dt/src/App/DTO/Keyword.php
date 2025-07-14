<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Keyword
{
    /**
     * Name of the keyword
     * @DTA\Data(field="keywordName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $keyword_name = null;

    /**
     * Key of the keyword (short code)
     * @DTA\Data(field="keywordKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $keyword_key = null;

    /**
     * Internal keyword ID
     * @DTA\Data(field="keywordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $keyword_id = null;

    /**
     * Date when this keyword was added
     * @DTA\Data(field="dateAdded", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_added = null;

}
