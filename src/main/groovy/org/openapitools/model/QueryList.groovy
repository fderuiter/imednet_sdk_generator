package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Metadata;
import org.openapitools.model.Pagination;
import org.openapitools.model.Query;

@Canonical
class QueryList {
    
    Metadata metadata
    
    Pagination pagination
    
    List<Query> data = new ArrayList<>()
}
