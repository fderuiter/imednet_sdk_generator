package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Form._

case class Form (
  /* Unique study key */
  studyKey: Option[String],
/* Mednet Form ID */
  formId: Option[Integer],
/* User-defined form key */
  formKey: Option[String],
/* Name of the form (eCRF) */
  formName: Option[String],
/* Type of the form (e.g., Subject or Site) */
  formType: Option[String],
/* Number of modifications (revisions) of the form metadata */
  revision: Option[Integer],
/* Whether the form has an embedded log */
  embeddedLog: Option[Boolean],
/* Whether the form enforces record ownership */
  enforceOwnership: Option[Boolean],
/* Whether the form requires a user agreement */
  userAgreement: Option[Boolean],
/* Whether the form is marked as a subject record report */
  subjectRecordReport: Option[Boolean],
/* Whether the form is included in unscheduled visits */
  unscheduledVisit: Option[Boolean],
/* Whether the form is included in Other Forms category */
  otherForms: Option[Boolean],
/* Whether the form is an ePRO (electronic patient reported outcome) form */
  eproForm: Option[Boolean],
/* Whether the form allows copying of data */
  allowCopy: Option[Boolean],
/* Whether the form is soft-deleted (disabled) */
  disabled: Option[Boolean],
/* Date when this form was created */
  dateCreated: Option[String],
/* Date when this form was last modified */
  dateModified: Option[String])

object Form {
  import DateTimeCodecs._

  implicit val FormCodecJson: CodecJson[Form] = CodecJson.derive[Form]
  implicit val FormDecoder: EntityDecoder[Form] = jsonOf[Form]
  implicit val FormEncoder: EntityEncoder[Form] = jsonEncoderOf[Form]
}
