package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import VisitList._

case class VisitList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Visit]])

object VisitList {
  import DateTimeCodecs._

  implicit val VisitListCodecJson: CodecJson[VisitList] = CodecJson.derive[VisitList]
  implicit val VisitListDecoder: EntityDecoder[VisitList] = jsonOf[VisitList]
  implicit val VisitListEncoder: EntityEncoder[VisitList] = jsonEncoderOf[VisitList]
}
