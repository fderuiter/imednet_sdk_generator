package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Record._

case class Record (
  /* Unique study key */
  studyKey: Option[String],
/* Interval ID (visit definition) that this record is associated with */
  intervalId: Option[Integer],
/* Form ID of the form this record instance belongs to */
  formId: Option[Integer],
/* Form key of the form for this record instance */
  formKey: Option[String],
/* Site ID associated with the record */
  siteId: Option[Integer],
/* Unique record ID */
  recordId: Option[Integer],
/* Client-assigned record OID */
  recordOid: Option[String],
/* Type of record (e.g., SUBJECT for subject-related forms) */
  recordType: Option[String],
/* Current status of the record (e.g., Record Incomplete, Record Complete) */
  recordStatus: Option[String],
/* Whether the record is marked as deleted */
  deleted: Option[Boolean],
/* Date when this record was created */
  dateCreated: Option[String],
/* Date when this record was last modified */
  dateModified: Option[String],
/* Mednet subject ID that this record is associated with */
  subjectId: Option[Integer],
/* Client-assigned subject OID for the subject this record is associated with */
  subjectOid: Option[String],
/* Subject display ID that this record is associated with */
  subjectKey: Option[String],
/* Visit instance ID that this record is associated with (if applicable) */
  visitId: Option[Integer],
/* Record ID of the parent record if this record is a subrecord (if applicable) */
  parentRecordId: Option[Integer],
/* List of keywords associated with the record */
  keywords: Option[List[Keyword]],
/* Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. */
  recordData: Option[Map[String, AnyType]])

object Record {
  import DateTimeCodecs._

  implicit val RecordCodecJson: CodecJson[Record] = CodecJson.derive[Record]
  implicit val RecordDecoder: EntityDecoder[Record] = jsonOf[Record]
  implicit val RecordEncoder: EntityEncoder[Record] = jsonEncoderOf[Record]
}
