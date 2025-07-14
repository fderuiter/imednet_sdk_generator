package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Sort {
    /* Name of the property by which the result is sorted */
    String property

    enum DirectionEnum {
    
        ASC("ASC"),
        
        DESC("DESC")
    
        private final String value
    
        DirectionEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    /* Sort direction (ASC or DESC) */
    DirectionEnum direction
}
