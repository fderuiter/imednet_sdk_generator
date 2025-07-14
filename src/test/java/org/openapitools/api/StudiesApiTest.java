package org.openapitools.api;

import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject5;
import org.openapitools.model.StudyList;
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
 * API tests for StudiesApi
 */
@MicronautTest
public class StudiesApiTest {

    @Inject
    StudiesApi api;

    
    /**
     * List studies accessible by API key
     */
    @Test
    @Disabled("Not Implemented")
    public void listStudiesTest() {
        // given
        Integer page = 0;
        Integer size = 25;
        String sort = "example";
        String filter = "example";

        // when
        StudyList body = api.listStudies(page, size, sort, filter).block();

        // then
        // TODO implement the listStudiesTest()
    }

    
}
