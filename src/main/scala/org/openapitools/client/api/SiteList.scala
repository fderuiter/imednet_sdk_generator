package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SiteList._

case class SiteList (
  metadata: Option[Metadata],
pagination: Option[Pagination],
data: Option[List[Site]])

object SiteList {
  import DateTimeCodecs._

  implicit val SiteListCodecJson: CodecJson[SiteList] = CodecJson.derive[SiteList]
  implicit val SiteListDecoder: EntityDecoder[SiteList] = jsonOf[SiteList]
  implicit val SiteListEncoder: EntityEncoder[SiteList] = jsonEncoderOf[SiteList]
}
