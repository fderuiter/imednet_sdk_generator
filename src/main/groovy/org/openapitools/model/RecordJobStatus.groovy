package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class RecordJobStatus {
    /* Unique job identifier */
    String jobId
    /* Batch ID used to track the job (identical to jobId in most cases) */
    String batchId
    /* Current state of the job (e.g., created, completed) */
    String state
}
