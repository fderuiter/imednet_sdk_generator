
package org.openapitools.client.model


case class Site (
    /* Unique study key */
    _studyKey: Option[String],
    /* Unique site ID */
    _siteId: Option[Integer],
    /* Name of the site */
    _siteName: Option[String],
    /* Enrollment status of the site */
    _siteEnrollmentStatus: Option[String],
    /* Date when this site was created */
    _dateCreated: Option[String],
    /* Date when this site was last modified */
    _dateModified: Option[String]
)
object Site {
    def toStringBody(var_studyKey: Object, var_siteId: Object, var_siteName: Object, var_siteEnrollmentStatus: Object, var_dateCreated: Object, var_dateModified: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"siteId":$var_siteId,"siteName":$var_siteName,"siteEnrollmentStatus":$var_siteEnrollmentStatus,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified
        | }
        """.stripMargin
}
