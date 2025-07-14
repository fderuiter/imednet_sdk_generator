package org.openapitools.api;

import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject5;
import org.openapitools.model.Job;
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
 * API tests for JobsApi
 */
@MicronautTest
public class JobsApiTest {

    @Inject
    JobsApi api;

    
    /**
     * Retrieve job status by batch ID
     */
    @Test
    @Disabled("Not Implemented")
    public void getJobStatusTest() {
        // given
        String studyKey = "example";
        String batchId = "example";

        // when
        Job body = api.getJobStatus(studyKey, batchId).block();

        // then
        // TODO implement the getJobStatusTest()
    }

    
}
