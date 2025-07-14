package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ComponentsSchemasIntervalFormsItem._

case class ComponentsSchemasIntervalFormsItem (
  /* Form ID scheduled in the interval */
  formId: Option[Integer],
/* Form key scheduled in the interval */
  formKey: Option[String],
/* Form name scheduled in the interval */
  formName: Option[String])

object ComponentsSchemasIntervalFormsItem {
  import DateTimeCodecs._

  implicit val ComponentsSchemasIntervalFormsItemCodecJson: CodecJson[ComponentsSchemasIntervalFormsItem] = CodecJson.derive[ComponentsSchemasIntervalFormsItem]
  implicit val ComponentsSchemasIntervalFormsItemDecoder: EntityDecoder[ComponentsSchemasIntervalFormsItem] = jsonOf[ComponentsSchemasIntervalFormsItem]
  implicit val ComponentsSchemasIntervalFormsItemEncoder: EntityEncoder[ComponentsSchemasIntervalFormsItem] = jsonEncoderOf[ComponentsSchemasIntervalFormsItem]
}
