package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SubjectList._

case class SubjectList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Subject]])

object SubjectList {
  import DateTimeCodecs._

  implicit val SubjectListCodecJson: CodecJson[SubjectList] = CodecJson.derive[SubjectList]
  implicit val SubjectListDecoder: EntityDecoder[SubjectList] = jsonOf[SubjectList]
  implicit val SubjectListEncoder: EntityEncoder[SubjectList] = jsonEncoderOf[SubjectList]
}
