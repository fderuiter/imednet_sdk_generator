package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RecordList._

case class RecordList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Record]])

object RecordList {
  import DateTimeCodecs._

  implicit val RecordListCodecJson: CodecJson[RecordList] = CodecJson.derive[RecordList]
  implicit val RecordListDecoder: EntityDecoder[RecordList] = jsonOf[RecordList]
  implicit val RecordListEncoder: EntityEncoder[RecordList] = jsonEncoderOf[RecordList]
}
