<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class User
{
    /**
     * Unique user ID (UUID)
     * @DTA\Data(field="userId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $user_id = null;

    /**
     * User login name
     * @DTA\Data(field="login", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $login = null;

    /**
     * User first name
     * @DTA\Data(field="firstName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $first_name = null;

    /**
     * User last name
     * @DTA\Data(field="lastName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $last_name = null;

    /**
     * User email address
     * @DTA\Data(field="email", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $email = null;

    /**
     * Whether the user is active in the given study
     * @DTA\Data(field="userActiveInStudy", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $user_active_in_study = null;

    /**
     * Roles that the user has in the study
     * @DTA\Data(field="roles", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection12::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection12::class})
     */
    public ?\App\DTO\Collection12 $roles = null;

}
