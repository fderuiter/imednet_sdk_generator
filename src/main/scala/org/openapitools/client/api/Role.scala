package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Role._

case class Role (
  /* Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond]) */
  dateCreated: Option[List[Integer]],
/* Timestamp when the role assignment was last modified */
  dateModified: Option[List[Integer]],
/* Unique role ID (UUID) */
  roleId: Option[String],
/* Community ID or level associated with the role */
  communityId: Option[Integer],
/* Name of the role */
  name: Option[String],
/* Description of the role */
  description: Option[String],
/* Role level or hierarchy */
  level: Option[Integer],
/* Role type/category */
  `type`: Option[String],
/* Whether the role is inactive */
  inactive: Option[Boolean])

object Role {
  import DateTimeCodecs._

  implicit val RoleCodecJson: CodecJson[Role] = CodecJson.derive[Role]
  implicit val RoleDecoder: EntityDecoder[Role] = jsonOf[Role]
  implicit val RoleEncoder: EntityEncoder[Role] = jsonEncoderOf[Role]
}
