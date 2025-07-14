package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RecordRevision._

case class RecordRevision (
  /* Unique study key */
  studyKey: Option[String],
/* Unique system identifier for the record revision */
  recordRevisionId: Option[Integer],
/* Unique system identifier of the related record */
  recordId: Option[Integer],
/* Client-assigned record OID (if any) */
  recordOid: Option[String],
/* Revision number of the record (version of the record status) */
  recordRevision: Option[Integer],
/* Revision number of the data within the record */
  dataRevision: Option[Integer],
/* Status of the record at this revision (user-defined status label) */
  recordStatus: Option[String],
/* Mednet subject ID related to the record */
  subjectId: Option[Integer],
/* Client-assigned subject OID related to the record */
  subjectOid: Option[String],
/* Subject display ID related to the record */
  subjectKey: Option[String],
/* Site ID related to the record */
  siteId: Option[Integer],
/* Form key of the form that the record belongs to */
  formKey: Option[String],
/* Interval ID (visit definition) related to the record */
  intervalId: Option[Integer],
/* Role name of the user who saved the record revision */
  role: Option[String],
/* Username of the user who saved the record revision */
  user: Option[String],
/* Reason for change, if provided (for audit trail) */
  reasonForChange: Option[String],
/* Whether the record was deleted in this revision */
  deleted: Option[Boolean],
/* Date when this record revision was created */
  dateCreated: Option[String])

object RecordRevision {
  import DateTimeCodecs._

  implicit val RecordRevisionCodecJson: CodecJson[RecordRevision] = CodecJson.derive[RecordRevision]
  implicit val RecordRevisionDecoder: EntityDecoder[RecordRevision] = jsonOf[RecordRevision]
  implicit val RecordRevisionEncoder: EntityEncoder[RecordRevision] = jsonEncoderOf[RecordRevision]
}
