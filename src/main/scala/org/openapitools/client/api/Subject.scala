package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Subject._

case class Subject (
  /* Unique study key */
  studyKey: Option[String],
/* Mednet subject ID (internal numeric ID) */
  subjectId: Option[Integer],
/* Client-assigned subject object identifier (OID) */
  subjectOid: Option[String],
/* Protocol-assigned subject identifier (display ID) */
  subjectKey: Option[String],
/* Current status of the subject (e.g., Enrolled) */
  subjectStatus: Option[String],
/* Mednet site ID the subject is associated with */
  siteId: Option[Integer],
/* Name of the site the subject is associated with */
  siteName: Option[String],
/* Whether the subject is marked as deleted */
  deleted: Option[Boolean],
/* Subject’s enrollment start date */
  enrollmentStartDate: Option[String],
/* Date when this subject record was created */
  dateCreated: Option[String],
/* Date when this subject record was last modified */
  dateModified: Option[String],
/* List of keywords associated with the subject */
  keywords: Option[List[Keyword]])

object Subject {
  import DateTimeCodecs._

  implicit val SubjectCodecJson: CodecJson[Subject] = CodecJson.derive[Subject]
  implicit val SubjectDecoder: EntityDecoder[Subject] = jsonOf[Subject]
  implicit val SubjectEncoder: EntityEncoder[Subject] = jsonEncoderOf[Subject]
}
