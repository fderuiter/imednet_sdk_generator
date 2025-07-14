package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Job {
    /* Unique job identifier */
    String jobId
    /* Batch ID associated with the job (useful for linking with record creation requests) */
    String batchId
    /* State of the job (e.g., completed, pending) */
    String state
    /* Timestamp when the job was created */
    String dateCreated
    /* Timestamp when the job started processing */
    String dateStarted
    /* Timestamp when the job finished processing */
    String dateFinished
}
