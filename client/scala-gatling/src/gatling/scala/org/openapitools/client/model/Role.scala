
package org.openapitools.client.model


case class Role (
    /* Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond]) */
    _dateCreated: Option[List[Integer]],
    /* Timestamp when the role assignment was last modified */
    _dateModified: Option[List[Integer]],
    /* Unique role ID (UUID) */
    _roleId: Option[String],
    /* Community ID or level associated with the role */
    _communityId: Option[Integer],
    /* Name of the role */
    _name: Option[String],
    /* Description of the role */
    _description: Option[String],
    /* Role level or hierarchy */
    _level: Option[Integer],
    /* Role type/category */
    _type: Option[String],
    /* Whether the role is inactive */
    _inactive: Option[Boolean]
)
object Role {
    def toStringBody(var_dateCreated: Object, var_dateModified: Object, var_roleId: Object, var_communityId: Object, var_name: Object, var_description: Object, var_level: Object, var_type: Object, var_inactive: Object) =
        s"""
        | {
        | "dateCreated":$var_dateCreated,"dateModified":$var_dateModified,"roleId":$var_roleId,"communityId":$var_communityId,"name":$var_name,"description":$var_description,"level":$var_level,"type":$var_type,"inactive":$var_inactive
        | }
        """.stripMargin
}
