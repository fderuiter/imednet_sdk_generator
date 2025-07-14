package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Interval._

case class Interval (
  /* Unique study key */
  studyKey: Option[String],
/* Unique system identifier for the interval (visit definition) */
  intervalId: Option[Integer],
/* Name of the interval (visit) as defined in the study */
  intervalName: Option[String],
/* Description of the interval (visit) */
  intervalDescription: Option[String],
/* Sequence number of the interval in the schedule */
  intervalSequence: Option[Integer],
/* Identifier for the interval group (if intervals are grouped) */
  intervalGroupId: Option[Integer],
/* Name of the interval group */
  intervalGroupName: Option[String],
/* Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) */
  timeline: Option[String],
/* Baseline interval used for calculating this interval’s dates */
  definedUsingInterval: Option[String],
/* Baseline form (name) from which the calculation date is taken */
  windowCalculationForm: Option[String],
/* Baseline field (variable name) from which the calculation date is taken */
  windowCalculationDate: Option[String],
/* Form used to capture the actual date for this interval */
  actualDateForm: Option[String],
/* Field (variable name) used to capture the actual date for this interval */
  actualDate: Option[String],
/* Number of days from the calculation date when the interval is due */
  dueDateWillBeIn: Option[Integer],
/* Number of days before the due date that are allowed (negative window) */
  negativeSlack: Option[Integer],
/* Number of days after the due date that are allowed (positive window) */
  positiveSlack: Option[Integer],
/* Number of days of grace period for ePRO completion after due date */
  eproGracePeriod: Option[Integer],
/* List of forms that are scheduled in this interval */
  forms: Option[List[ComponentsSchemasIntervalFormsItem]],
/* Whether the interval is soft-deleted (disabled) */
  disabled: Option[Boolean],
/* Date when this interval was created */
  dateCreated: Option[String],
/* Date when this interval was last modified */
  dateModified: Option[String])

object Interval {
  import DateTimeCodecs._

  implicit val IntervalCodecJson: CodecJson[Interval] = CodecJson.derive[Interval]
  implicit val IntervalDecoder: EntityDecoder[Interval] = jsonOf[Interval]
  implicit val IntervalEncoder: EntityEncoder[Interval] = jsonEncoderOf[Interval]
}
