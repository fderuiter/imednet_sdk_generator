package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import User._

case class User (
  /* Unique user ID (UUID) */
  userId: Option[String],
/* User login name */
  login: Option[String],
/* User first name */
  firstName: Option[String],
/* User last name */
  lastName: Option[String],
/* User email address */
  email: Option[String],
/* Whether the user is active in the given study */
  userActiveInStudy: Option[Boolean],
/* Roles that the user has in the study */
  roles: Option[List[Role]])

object User {
  import DateTimeCodecs._

  implicit val UserCodecJson: CodecJson[User] = CodecJson.derive[User]
  implicit val UserDecoder: EntityDecoder[User] = jsonOf[User]
  implicit val UserEncoder: EntityEncoder[User] = jsonEncoderOf[User]
}
