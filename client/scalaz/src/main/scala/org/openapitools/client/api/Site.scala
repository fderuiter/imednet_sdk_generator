package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Site._

case class Site (
  /* Unique study key */
  studyKey: Option[String],
/* Unique site ID */
  siteId: Option[Integer],
/* Name of the site */
  siteName: Option[String],
/* Enrollment status of the site */
  siteEnrollmentStatus: Option[String],
/* Date when this site was created */
  dateCreated: Option[String],
/* Date when this site was last modified */
  dateModified: Option[String])

object Site {
  import DateTimeCodecs._

  implicit val SiteCodecJson: CodecJson[Site] = CodecJson.derive[Site]
  implicit val SiteDecoder: EntityDecoder[Site] = jsonOf[Site]
  implicit val SiteEncoder: EntityEncoder[Site] = jsonEncoderOf[Site]
}
