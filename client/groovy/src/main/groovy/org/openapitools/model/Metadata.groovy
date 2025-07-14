package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ComponentsSchemasMetadataError;

@Canonical
class Metadata {
    /* HTTP status of the response (e.g., OK or ERROR) */
    String status
    /* HTTP method of the request */
    String method
    /* Requested URI path */
    String path
    /* Timestamp when response was generated */
    Date timestamp
    
    ComponentsSchemasMetadataError error
}
