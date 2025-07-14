package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Visit._

case class Visit (
  /* Unique study key */
  studyKey: Option[String],
/* Unique system identifier for the subject visit instance */
  visitId: Option[Integer],
/* Unique system identifier of the interval definition for this visit */
  intervalId: Option[Integer],
/* Name of the interval (visit) for this visit instance */
  intervalName: Option[String],
/* Mednet subject ID of the subject */
  subjectId: Option[Integer],
/* Protocol-assigned subject identifier */
  subjectKey: Option[String],
/* Start date of the visit window (in YYYY-MM-DD format) */
  startDate: Option[String],
/* End date of the visit window (in YYYY-MM-DD format) */
  endDate: Option[String],
/* Due date of the visit (in YYYY-MM-DD format), if applicable */
  dueDate: Option[String],
/* Actual date the visit took place (in YYYY-MM-DD format) */
  visitDate: Option[String],
/* Name of the form used to capture the actual visit date */
  visitDateForm: Option[String],
/* Variable name of the field capturing the actual visit date */
  visitDateQuestion: Option[String],
/* Whether the visit instance is marked as deleted */
  deleted: Option[Boolean],
/* Date when this visit record was created */
  dateCreated: Option[String],
/* Date when this visit record was last modified */
  dateModified: Option[String])

object Visit {
  import DateTimeCodecs._

  implicit val VisitCodecJson: CodecJson[Visit] = CodecJson.derive[Visit]
  implicit val VisitDecoder: EntityDecoder[Visit] = jsonOf[Visit]
  implicit val VisitEncoder: EntityEncoder[Visit] = jsonEncoderOf[Visit]
}
