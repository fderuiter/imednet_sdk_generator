package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CodingList._

case class CodingList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Coding]])

object CodingList {
  import DateTimeCodecs._

  implicit val CodingListCodecJson: CodecJson[CodingList] = CodecJson.derive[CodingList]
  implicit val CodingListDecoder: EntityDecoder[CodingList] = jsonOf[CodingList]
  implicit val CodingListEncoder: EntityEncoder[CodingList] = jsonEncoderOf[CodingList]
}
