package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import StudyList._

case class StudyList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Study]])

object StudyList {
  import DateTimeCodecs._

  implicit val StudyListCodecJson: CodecJson[StudyList] = CodecJson.derive[StudyList]
  implicit val StudyListDecoder: EntityDecoder[StudyList] = jsonOf[StudyList]
  implicit val StudyListEncoder: EntityEncoder[StudyList] = jsonEncoderOf[StudyList]
}
