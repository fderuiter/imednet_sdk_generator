package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QueryComment {
    /* Sequence number of the comment/action in the query history */
    Integer sequence
    /* Status of the query after this comment (e.g., Open, Closed) */
    String annotationStatus
    /* Username of the user who made the comment or action */
    String user
    /* Text of the comment */
    String comment
    /* Whether the query was marked closed at this step */
    Boolean closed
    /* Date of the comment or action */
    String date
}
