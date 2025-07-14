package org.openapitools.api;

import org.openapitools.model.FormList;
import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject5;
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
 * API tests for FormsApi
 */
@MicronautTest
public class FormsApiTest {

    @Inject
    FormsApi api;

    
    /**
     * List forms in a study
     */
    @Test
    @Disabled("Not Implemented")
    public void listFormsTest() {
        // given
        String studyKey = "example";
        Integer page = 0;
        Integer size = 25;
        String sort = "example";
        String filter = "example";

        // when
        FormList body = api.listForms(studyKey, page, size, sort, filter).block();

        // then
        // TODO implement the listFormsTest()
    }

    
}
