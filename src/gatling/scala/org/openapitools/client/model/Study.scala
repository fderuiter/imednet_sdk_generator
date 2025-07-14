
package org.openapitools.client.model


case class Study (
    /* Sponsor key that this study belongs to */
    _sponsorKey: Option[String],
    /* Unique study key */
    _studyKey: Option[String],
    /* Mednet study ID (internal numeric identifier) */
    _studyId: Option[Integer],
    /* Name of the study */
    _studyName: Option[String],
    /* Description of the study */
    _studyDescription: Option[String],
    /* Type of study (e.g., STUDY) */
    _studyType: Option[String],
    /* Date when the study record was created */
    _dateCreated: Option[String],
    /* Date when the study record was last modified */
    _dateModified: Option[String]
)
object Study {
    def toStringBody(var_sponsorKey: Object, var_studyKey: Object, var_studyId: Object, var_studyName: Object, var_studyDescription: Object, var_studyType: Object, var_dateCreated: Object, var_dateModified: Object) =
        s"""
        | {
        | "sponsorKey":$var_sponsorKey,"studyKey":$var_studyKey,"studyId":$var_studyId,"studyName":$var_studyName,"studyDescription":$var_studyDescription,"studyType":$var_studyType,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified
        | }
        """.stripMargin
}
