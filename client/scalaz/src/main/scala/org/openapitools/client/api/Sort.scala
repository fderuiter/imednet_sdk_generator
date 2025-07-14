package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Sort._

case class Sort (
  /* Name of the property by which the result is sorted */
  property: Option[String],
/* Sort direction (ASC or DESC) */
  direction: Option[Direction])

object Sort {
  import DateTimeCodecs._
  sealed trait Direction
  case object ASC extends Direction
  case object DESC extends Direction

  object Direction {
    def toDirection(s: String): Option[Direction] = s match {
      case "ASC" => Some(ASC)
      case "DESC" => Some(DESC)
      case _ => None
    }

    def fromDirection(x: Direction): String = x match {
      case ASC => "ASC"
      case DESC => "DESC"
    }
  }

  implicit val DirectionEnumEncoder: EncodeJson[Direction] =
    EncodeJson[Direction](is => StringEncodeJson(Direction.fromDirection(is)))

  implicit val DirectionEnumDecoder: DecodeJson[Direction] =
    DecodeJson.optionDecoder[Direction](n => n.string.flatMap(jStr => Direction.toDirection(jStr)), "Direction failed to de-serialize")

  implicit val SortCodecJson: CodecJson[Sort] = CodecJson.derive[Sort]
  implicit val SortDecoder: EntityDecoder[Sort] = jsonOf[Sort]
  implicit val SortEncoder: EntityEncoder[Sort] = jsonEncoderOf[Sort]
}
