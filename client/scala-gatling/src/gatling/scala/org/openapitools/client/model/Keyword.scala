
package org.openapitools.client.model


case class Keyword (
    /* Name of the keyword */
    _keywordName: Option[String],
    /* Key of the keyword (short code) */
    _keywordKey: Option[String],
    /* Internal keyword ID */
    _keywordId: Option[Integer],
    /* Date when this keyword was added */
    _dateAdded: Option[String]
)
object Keyword {
    def toStringBody(var_keywordName: Object, var_keywordKey: Object, var_keywordId: Object, var_dateAdded: Object) =
        s"""
        | {
        | "keywordName":$var_keywordName,"keywordKey":$var_keywordKey,"keywordId":$var_keywordId,"dateAdded":$var_dateAdded
        | }
        """.stripMargin
}
