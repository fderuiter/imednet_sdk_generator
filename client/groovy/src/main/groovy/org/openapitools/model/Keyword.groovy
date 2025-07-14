package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Keyword {
    /* Name of the keyword */
    String keywordName
    /* Key of the keyword (short code) */
    String keywordKey
    /* Internal keyword ID */
    Integer keywordId
    /* Date when this keyword was added */
    String dateAdded
}
