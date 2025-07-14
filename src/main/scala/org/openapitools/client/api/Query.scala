package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Query._

case class Query (
  /* Unique study key */
  studyKey: Option[String],
/* Mednet subject ID associated with the query (if applicable) */
  subjectId: Option[Integer],
/* Client-assigned subject OID (if applicable) */
  subjectOid: Option[String],
/* Category/type of the query (e.g., subject, record, question) */
  annotationType: Option[String],
/* Unique system identifier for the query */
  annotationId: Option[Integer],
/* System text identifier for the query type/location (subject, record, question) */
  `type`: Option[String],
/* Description of the query (e.g., reason or context) */
  description: Option[String],
/* Record ID associated with the query (if applicable) */
  recordId: Option[Integer],
/* Variable name (field) associated with the query (if applicable) */
  variable: Option[String],
/* Subject display ID associated with the query (if applicable) */
  subjectKey: Option[String],
/* Date when the query was created */
  dateCreated: Option[String],
/* Date when the query was last modified */
  dateModified: Option[String],
/* History of comments/actions on the query */
  queryComments: Option[List[QueryComment]])

object Query {
  import DateTimeCodecs._

  implicit val QueryCodecJson: CodecJson[Query] = CodecJson.derive[Query]
  implicit val QueryDecoder: EntityDecoder[Query] = jsonOf[Query]
  implicit val QueryEncoder: EntityEncoder[Query] = jsonEncoderOf[Query]
}
