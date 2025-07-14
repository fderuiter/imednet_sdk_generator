package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import IntervalList._

case class IntervalList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Interval]])

object IntervalList {
  import DateTimeCodecs._

  implicit val IntervalListCodecJson: CodecJson[IntervalList] = CodecJson.derive[IntervalList]
  implicit val IntervalListDecoder: EntityDecoder[IntervalList] = jsonOf[IntervalList]
  implicit val IntervalListEncoder: EntityEncoder[IntervalList] = jsonEncoderOf[IntervalList]
}
