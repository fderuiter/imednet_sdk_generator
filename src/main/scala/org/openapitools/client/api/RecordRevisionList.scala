package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RecordRevisionList._

case class RecordRevisionList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[RecordRevision]])

object RecordRevisionList {
  import DateTimeCodecs._

  implicit val RecordRevisionListCodecJson: CodecJson[RecordRevisionList] = CodecJson.derive[RecordRevisionList]
  implicit val RecordRevisionListDecoder: EntityDecoder[RecordRevisionList] = jsonOf[RecordRevisionList]
  implicit val RecordRevisionListEncoder: EntityEncoder[RecordRevisionList] = jsonEncoderOf[RecordRevisionList]
}
