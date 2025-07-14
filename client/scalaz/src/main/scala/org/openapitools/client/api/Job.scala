package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Job._

case class Job (
  /* Unique job identifier */
  jobId: Option[String],
/* Batch ID associated with the job (useful for linking with record creation requests) */
  batchId: Option[String],
/* State of the job (e.g., completed, pending) */
  state: Option[String],
/* Timestamp when the job was created */
  dateCreated: Option[String],
/* Timestamp when the job started processing */
  dateStarted: Option[String],
/* Timestamp when the job finished processing */
  dateFinished: Option[String])

object Job {
  import DateTimeCodecs._

  implicit val JobCodecJson: CodecJson[Job] = CodecJson.derive[Job]
  implicit val JobDecoder: EntityDecoder[Job] = jsonOf[Job]
  implicit val JobEncoder: EntityEncoder[Job] = jsonEncoderOf[Job]
}
