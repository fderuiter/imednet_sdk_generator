package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Metadata._

case class Metadata (
  /* HTTP status of the response (e.g., OK or ERROR) */
  status: Option[String],
/* HTTP method of the request */
  method: Option[String],
/* Requested URI path */
  `path`: Option[String],
/* Timestamp when response was generated */
  timestamp: Option[OffsetDateTime],
error: Option[ComponentsSchemasMetadataError])

object Metadata {
  import DateTimeCodecs._

  implicit val MetadataCodecJson: CodecJson[Metadata] = CodecJson.derive[Metadata]
  implicit val MetadataDecoder: EntityDecoder[Metadata] = jsonOf[Metadata]
  implicit val MetadataEncoder: EntityEncoder[Metadata] = jsonEncoderOf[Metadata]
}
