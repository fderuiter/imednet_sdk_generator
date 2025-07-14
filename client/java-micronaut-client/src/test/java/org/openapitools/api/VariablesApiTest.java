package org.openapitools.api;

import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject5;
import org.openapitools.model.VariableList;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import jakarta.inject.Inject;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.HashSet;

/**
 * API tests for VariablesApi
 */
@MicronautTest
public class VariablesApiTest {

    @Inject
    VariablesApi api;

    
    /**
     * List variables (fields) in a study
     */
    @Test
    @Disabled("Not Implemented")
    public void listVariablesTest() {
        // given
        String studyKey = "example";
        Integer page = 0;
        Integer size = 25;
        String sort = "example";
        String filter = "example";

        // when
        VariableList body = api.listVariables(studyKey, page, size, sort, filter).block();

        // then
        // TODO implement the listVariablesTest()
    }

    
}
