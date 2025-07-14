package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ComponentsSchemasRecordCreateRequestItem._

case class ComponentsSchemasRecordCreateRequestItem (
  /* Form key identifying the eCRF to create or update */
  formKey: String,
/* Form ID identifying the eCRF to create or update (alternative to formKey) */
  formId: Option[Integer],
/* Name of the site where the record should be created (for new subject registration) */
  siteName: Option[String],
/* Site ID for the record (alternative to siteName) */
  siteId: Option[Integer],
/* Subject identifier (display ID) for which to create or update the record */
  subjectKey: Option[String],
/* Subject ID for which to create or update the record (alternative to subjectKey) */
  subjectId: Option[Integer],
/* Subject OID for which to create or update the record (alternative to subjectKey) */
  subjectOid: Option[String],
/* Name of the interval (visit) for a scheduled record update */
  intervalName: Option[String],
/* Interval ID for a scheduled record update (alternative to intervalName) */
  intervalId: Option[Integer],
/* Record ID for updating an existing unscheduled record (if applicable) */
  recordId: Option[Integer],
/* Record OID for updating an existing unscheduled record (if applicable) */
  recordOid: Option[String],
/* Key-value pairs of field names and values for the record data */
  data: Map[String, AnyType])

object ComponentsSchemasRecordCreateRequestItem {
  import DateTimeCodecs._

  implicit val ComponentsSchemasRecordCreateRequestItemCodecJson: CodecJson[ComponentsSchemasRecordCreateRequestItem] = CodecJson.derive[ComponentsSchemasRecordCreateRequestItem]
  implicit val ComponentsSchemasRecordCreateRequestItemDecoder: EntityDecoder[ComponentsSchemasRecordCreateRequestItem] = jsonOf[ComponentsSchemasRecordCreateRequestItem]
  implicit val ComponentsSchemasRecordCreateRequestItemEncoder: EntityEncoder[ComponentsSchemasRecordCreateRequestItem] = jsonEncoderOf[ComponentsSchemasRecordCreateRequestItem]
}
