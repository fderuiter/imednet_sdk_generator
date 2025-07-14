package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Sort;

@Canonical
class Pagination {
    /* Current index page returned */
    Integer currentPage
    /* Number of items per page returned */
    Integer size
    /* Total number of pages available */
    Integer totalPages
    /* Total number of elements (items) available */
    Integer totalElements
    
    List<Sort> sort = new ArrayList<>()
}
