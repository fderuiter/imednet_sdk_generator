package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QueryList._

case class QueryList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Query]])

object QueryList {
  import DateTimeCodecs._

  implicit val QueryListCodecJson: CodecJson[QueryList] = CodecJson.derive[QueryList]
  implicit val QueryListDecoder: EntityDecoder[QueryList] = jsonOf[QueryList]
  implicit val QueryListEncoder: EntityEncoder[QueryList] = jsonEncoderOf[QueryList]
}
