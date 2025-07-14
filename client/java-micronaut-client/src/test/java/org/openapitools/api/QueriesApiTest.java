package org.openapitools.api;

import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject5;
import org.openapitools.model.QueryList;
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
 * API tests for QueriesApi
 */
@MicronautTest
public class QueriesApiTest {

    @Inject
    QueriesApi api;

    
    /**
     * List data queries in a study
     */
    @Test
    @Disabled("Not Implemented")
    public void listQueriesTest() {
        // given
        String studyKey = "example";
        Integer page = 0;
        Integer size = 25;
        String sort = "example";
        String filter = "example";

        // when
        QueryList body = api.listQueries(studyKey, page, size, sort, filter).block();

        // then
        // TODO implement the listQueriesTest()
    }

    
}
