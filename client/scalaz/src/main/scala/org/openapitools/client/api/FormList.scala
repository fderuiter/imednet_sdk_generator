package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FormList._

case class FormList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Form]])

object FormList {
  import DateTimeCodecs._

  implicit val FormListCodecJson: CodecJson[FormList] = CodecJson.derive[FormList]
  implicit val FormListDecoder: EntityDecoder[FormList] = jsonOf[FormList]
  implicit val FormListEncoder: EntityEncoder[FormList] = jsonEncoderOf[FormList]
}
