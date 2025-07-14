package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ComponentsSchemasIntervalFormsItem {
    /* Form ID scheduled in the interval */
    Integer formId
    /* Form key scheduled in the interval */
    String formKey
    /* Form name scheduled in the interval */
    String formName
}
