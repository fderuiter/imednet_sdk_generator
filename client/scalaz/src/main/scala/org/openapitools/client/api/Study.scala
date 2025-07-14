package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Study._

case class Study (
  /* Sponsor key that this study belongs to */
  sponsorKey: Option[String],
/* Unique study key */
  studyKey: Option[String],
/* Mednet study ID (internal numeric identifier) */
  studyId: Option[Integer],
/* Name of the study */
  studyName: Option[String],
/* Description of the study */
  studyDescription: Option[String],
/* Type of study (e.g., STUDY) */
  studyType: Option[String],
/* Date when the study record was created */
  dateCreated: Option[String],
/* Date when the study record was last modified */
  dateModified: Option[String])

object Study {
  import DateTimeCodecs._

  implicit val StudyCodecJson: CodecJson[Study] = CodecJson.derive[Study]
  implicit val StudyDecoder: EntityDecoder[Study] = jsonOf[Study]
  implicit val StudyEncoder: EntityEncoder[Study] = jsonEncoderOf[Study]
}
