package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.util.HashMap

import ComponentsSchemasMetadataError._

case class ComponentsSchemasMetadataError (
  /* Error message describing the issue */
  message: Option[String])

object ComponentsSchemasMetadataError {
  import DateTimeCodecs._

  implicit val ComponentsSchemasMetadataErrorCodecJson: CodecJson[ComponentsSchemasMetadataError] = CodecJson.derive[ComponentsSchemasMetadataError]
  implicit val ComponentsSchemasMetadataErrorDecoder: EntityDecoder[ComponentsSchemasMetadataError] = jsonOf[ComponentsSchemasMetadataError]
  implicit val ComponentsSchemasMetadataErrorEncoder: EntityEncoder[ComponentsSchemasMetadataError] = jsonEncoderOf[ComponentsSchemasMetadataError]
}
