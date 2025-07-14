package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Coding._

case class Coding (
  /* Unique study key */
  studyKey: Option[String],
/* Name of the site associated with the coded data */
  siteName: Option[String],
/* Site ID associated with the coded data */
  siteId: Option[Integer],
/* Subject ID associated with the coded data */
  subjectId: Option[Integer],
/* Subject key (display ID) associated with the coded data */
  subjectKey: Option[String],
/* Form ID where the coded data originates */
  formId: Option[Integer],
/* Name of the form where the coded data originates */
  formName: Option[String],
/* Form key where the coded data originates */
  formKey: Option[String],
/* Revision number of the coding entry */
  revision: Option[Integer],
/* Record ID associated with the coded data */
  recordId: Option[Integer],
/* Variable name (field) that was coded */
  variable: Option[String],
/* Original value entered that required coding */
  value: Option[String],
/* Mednet coding ID */
  codingId: Option[Integer],
/* Standardized code assigned (e.g., dictionary term) */
  code: Option[String],
/* Name of the user who performed the coding */
  codedBy: Option[String],
/* Reason for coding or any notes on changes */
  reason: Option[String],
/* Name of the dictionary used (e.g., MedDRA) */
  dictionaryName: Option[String],
/* Version of the dictionary used */
  dictionaryVersion: Option[String],
/* Date when the coding was performed */
  dateCoded: Option[String])

object Coding {
  import DateTimeCodecs._

  implicit val CodingCodecJson: CodecJson[Coding] = CodecJson.derive[Coding]
  implicit val CodingDecoder: EntityDecoder[Coding] = jsonOf[Coding]
  implicit val CodingEncoder: EntityEncoder[Coding] = jsonEncoderOf[Coding]
}
