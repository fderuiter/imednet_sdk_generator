
package org.openapitools.client.model


case class User (
    /* Unique user ID (UUID) */
    _userId: Option[String],
    /* User login name */
    _login: Option[String],
    /* User first name */
    _firstName: Option[String],
    /* User last name */
    _lastName: Option[String],
    /* User email address */
    _email: Option[String],
    /* Whether the user is active in the given study */
    _userActiveInStudy: Option[Boolean],
    /* Roles that the user has in the study */
    _roles: Option[List[Role]]
)
object User {
    def toStringBody(var_userId: Object, var_login: Object, var_firstName: Object, var_lastName: Object, var_email: Object, var_userActiveInStudy: Object, var_roles: Object) =
        s"""
        | {
        | "userId":$var_userId,"login":$var_login,"firstName":$var_firstName,"lastName":$var_lastName,"email":$var_email,"userActiveInStudy":$var_userActiveInStudy,"roles":$var_roles
        | }
        """.stripMargin
}
