package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QueryComment._

case class QueryComment (
  /* Sequence number of the comment/action in the query history */
  sequence: Option[Integer],
/* Status of the query after this comment (e.g., Open, Closed) */
  annotationStatus: Option[String],
/* Username of the user who made the comment or action */
  user: Option[String],
/* Text of the comment */
  comment: Option[String],
/* Whether the query was marked closed at this step */
  closed: Option[Boolean],
/* Date of the comment or action */
  date: Option[String])

object QueryComment {
  import DateTimeCodecs._

  implicit val QueryCommentCodecJson: CodecJson[QueryComment] = CodecJson.derive[QueryComment]
  implicit val QueryCommentDecoder: EntityDecoder[QueryComment] = jsonOf[QueryComment]
  implicit val QueryCommentEncoder: EntityEncoder[QueryComment] = jsonEncoderOf[QueryComment]
}
