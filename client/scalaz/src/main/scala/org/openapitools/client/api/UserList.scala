package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserList._

case class UserList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[User]])

object UserList {
  import DateTimeCodecs._

  implicit val UserListCodecJson: CodecJson[UserList] = CodecJson.derive[UserList]
  implicit val UserListDecoder: EntityDecoder[UserList] = jsonOf[UserList]
  implicit val UserListEncoder: EntityEncoder[UserList] = jsonEncoderOf[UserList]
}
