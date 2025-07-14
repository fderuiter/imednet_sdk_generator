package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Pagination._

case class Pagination (
  /* Current index page returned */
  currentPage: Option[Integer],
/* Number of items per page returned */
  size: Option[Integer],
/* Total number of pages available */
  totalPages: Option[Integer],
/* Total number of elements (items) available */
  totalElements: Option[Integer],
sort: Option[List[Sort]])

object Pagination {
  import DateTimeCodecs._

  implicit val PaginationCodecJson: CodecJson[Pagination] = CodecJson.derive[Pagination]
  implicit val PaginationDecoder: EntityDecoder[Pagination] = jsonOf[Pagination]
  implicit val PaginationEncoder: EntityEncoder[Pagination] = jsonEncoderOf[Pagination]
}
