<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Role
{
    /**
     * Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection10::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection10::class})
     */
    public ?\App\DTO\Collection10 $date_created = null;

    /**
     * Timestamp when the role assignment was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection11::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection11::class})
     */
    public ?\App\DTO\Collection11 $date_modified = null;

    /**
     * Unique role ID (UUID)
     * @DTA\Data(field="roleId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $role_id = null;

    /**
     * Community ID or level associated with the role
     * @DTA\Data(field="communityId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $community_id = null;

    /**
     * Name of the role
     * @DTA\Data(field="name", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $name = null;

    /**
     * Description of the role
     * @DTA\Data(field="description", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $description = null;

    /**
     * Role level or hierarchy
     * @DTA\Data(field="level", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $level = null;

    /**
     * Role type/category
     * @DTA\Data(field="type", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $type = null;

    /**
     * Whether the role is inactive
     * @DTA\Data(field="inactive", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $inactive = null;

}
