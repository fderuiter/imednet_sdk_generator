
package org.openapitools.client.model


case class Pagination (
    /* Current index page returned */
    _currentPage: Option[Integer],
    /* Number of items per page returned */
    _size: Option[Integer],
    /* Total number of pages available */
    _totalPages: Option[Integer],
    /* Total number of elements (items) available */
    _totalElements: Option[Integer],
    _sort: Option[List[Sort]]
)
object Pagination {
    def toStringBody(var_currentPage: Object, var_size: Object, var_totalPages: Object, var_totalElements: Object, var_sort: Object) =
        s"""
        | {
        | "currentPage":$var_currentPage,"size":$var_size,"totalPages":$var_totalPages,"totalElements":$var_totalElements,"sort":$var_sort
        | }
        """.stripMargin
}
