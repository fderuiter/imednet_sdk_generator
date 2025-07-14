package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.QueryComment;

@Canonical
class Query {
    /* Unique study key */
    String studyKey
    /* Mednet subject ID associated with the query (if applicable) */
    Integer subjectId
    /* Client-assigned subject OID (if applicable) */
    String subjectOid
    /* Category/type of the query (e.g., subject, record, question) */
    String annotationType
    /* Unique system identifier for the query */
    Integer annotationId
    /* System text identifier for the query type/location (subject, record, question) */
    String type
    /* Description of the query (e.g., reason or context) */
    String description
    /* Record ID associated with the query (if applicable) */
    Integer recordId
    /* Variable name (field) associated with the query (if applicable) */
    String variable
    /* Subject display ID associated with the query (if applicable) */
    String subjectKey
    /* Date when the query was created */
    String dateCreated
    /* Date when the query was last modified */
    String dateModified
    /* History of comments/actions on the query */
    List<QueryComment> queryComments = new ArrayList<>()
}
