<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class ComponentsSchemasIntervalFormsItem
{
    /**
     * Form ID scheduled in the interval
     * @DTA\Data(field="formId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $form_id = null;

    /**
     * Form key scheduled in the interval
     * @DTA\Data(field="formKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Form name scheduled in the interval
     * @DTA\Data(field="formName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_name = null;

}
