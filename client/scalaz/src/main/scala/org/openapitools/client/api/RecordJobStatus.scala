package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RecordJobStatus._

case class RecordJobStatus (
  /* Unique job identifier */
  jobId: Option[String],
/* Batch ID used to track the job (identical to jobId in most cases) */
  batchId: Option[String],
/* Current state of the job (e.g., created, completed) */
  state: Option[String])

object RecordJobStatus {
  import DateTimeCodecs._

  implicit val RecordJobStatusCodecJson: CodecJson[RecordJobStatus] = CodecJson.derive[RecordJobStatus]
  implicit val RecordJobStatusDecoder: EntityDecoder[RecordJobStatus] = jsonOf[RecordJobStatus]
  implicit val RecordJobStatusEncoder: EntityEncoder[RecordJobStatus] = jsonEncoderOf[RecordJobStatus]
}
