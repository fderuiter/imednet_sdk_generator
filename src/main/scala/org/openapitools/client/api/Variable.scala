package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Variable._

case class Variable (
  /* Unique study key */
  studyKey: Option[String],
/* Mednet variable ID */
  variableId: Option[Integer],
/* Type of the variable (field type), e.g., RADIO, TEXT, etc. */
  variableType: Option[VariableType],
/* Name of the variable (question text or label) */
  variableName: Option[String],
/* Sequence of the variable on the form */
  sequence: Option[Integer],
/* Number of modifications of the variable (via form metadata revisions) */
  revision: Option[Integer],
/* Whether the variable is marked as disabled (deleted) */
  disabled: Option[Boolean],
/* Date when this variable was created */
  dateCreated: Option[String],
/* Date when this variable was last modified */
  dateModified: Option[String],
/* ID of the form that this variable belongs to */
  formId: Option[Integer],
/* Client-assigned variable OID */
  variableOid: Option[String],
/* Whether the variable is marked as deleted */
  deleted: Option[Boolean],
/* Form key of the form that this variable belongs to */
  formKey: Option[String],
/* Name of the form that this variable belongs to */
  formName: Option[String],
/* User-defined identifier (field name) for the variable */
  label: Option[String],
/* Whether the variable is flagged as blinded (hidden in certain contexts) */
  blinded: Option[Boolean])

object Variable {
  import DateTimeCodecs._
  sealed trait VariableType
  case object TEXT extends VariableType
  case object TEXTAREA extends VariableType
  case object RADIO extends VariableType
  case object CHECKBOX extends VariableType
  case object DROPDOWN extends VariableType
  case object DATE extends VariableType
  case object NUMBER extends VariableType

  object VariableType {
    def toVariableType(s: String): Option[VariableType] = s match {
      case "TEXT" => Some(TEXT)
      case "TEXTAREA" => Some(TEXTAREA)
      case "RADIO" => Some(RADIO)
      case "CHECKBOX" => Some(CHECKBOX)
      case "DROPDOWN" => Some(DROPDOWN)
      case "DATE" => Some(DATE)
      case "NUMBER" => Some(NUMBER)
      case _ => None
    }

    def fromVariableType(x: VariableType): String = x match {
      case TEXT => "TEXT"
      case TEXTAREA => "TEXTAREA"
      case RADIO => "RADIO"
      case CHECKBOX => "CHECKBOX"
      case DROPDOWN => "DROPDOWN"
      case DATE => "DATE"
      case NUMBER => "NUMBER"
    }
  }

  implicit val VariableTypeEnumEncoder: EncodeJson[VariableType] =
    EncodeJson[VariableType](is => StringEncodeJson(VariableType.fromVariableType(is)))

  implicit val VariableTypeEnumDecoder: DecodeJson[VariableType] =
    DecodeJson.optionDecoder[VariableType](n => n.string.flatMap(jStr => VariableType.toVariableType(jStr)), "VariableType failed to de-serialize")

  implicit val VariableCodecJson: CodecJson[Variable] = CodecJson.derive[Variable]
  implicit val VariableDecoder: EntityDecoder[Variable] = jsonOf[Variable]
  implicit val VariableEncoder: EntityEncoder[Variable] = jsonEncoderOf[Variable]
}
