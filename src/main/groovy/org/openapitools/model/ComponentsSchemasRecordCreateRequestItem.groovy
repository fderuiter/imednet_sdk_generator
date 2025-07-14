package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;

@Canonical
class ComponentsSchemasRecordCreateRequestItem {
    /* Form key identifying the eCRF to create or update */
    String formKey
    /* Form ID identifying the eCRF to create or update (alternative to formKey) */
    Integer formId
    /* Name of the site where the record should be created (for new subject registration) */
    String siteName
    /* Site ID for the record (alternative to siteName) */
    Integer siteId
    /* Subject identifier (display ID) for which to create or update the record */
    String subjectKey
    /* Subject ID for which to create or update the record (alternative to subjectKey) */
    Integer subjectId
    /* Subject OID for which to create or update the record (alternative to subjectKey) */
    String subjectOid
    /* Name of the interval (visit) for a scheduled record update */
    String intervalName
    /* Interval ID for a scheduled record update (alternative to intervalName) */
    Integer intervalId
    /* Record ID for updating an existing unscheduled record (if applicable) */
    Integer recordId
    /* Record OID for updating an existing unscheduled record (if applicable) */
    String recordOid
    /* Key-value pairs of field names and values for the record data */
    Map<String, Object> data = new HashMap<>()
}
