package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Keyword._

case class Keyword (
  /* Name of the keyword */
  keywordName: Option[String],
/* Key of the keyword (short code) */
  keywordKey: Option[String],
/* Internal keyword ID */
  keywordId: Option[Integer],
/* Date when this keyword was added */
  dateAdded: Option[String])

object Keyword {
  import DateTimeCodecs._

  implicit val KeywordCodecJson: CodecJson[Keyword] = CodecJson.derive[Keyword]
  implicit val KeywordDecoder: EntityDecoder[Keyword] = jsonOf[Keyword]
  implicit val KeywordEncoder: EntityEncoder[Keyword] = jsonEncoderOf[Keyword]
}
