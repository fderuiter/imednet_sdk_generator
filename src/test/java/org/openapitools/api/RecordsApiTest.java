package org.openapitools.api;

import org.openapitools.model.ComponentsSchemasRecordCreateRequestItem;
import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject4;
import org.openapitools.model.InlineObject5;
import org.openapitools.model.RecordJobStatus;
import org.openapitools.model.RecordList;
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
 * API tests for RecordsApi
 */
@MicronautTest
public class RecordsApiTest {

    @Inject
    RecordsApi api;

    
    /**
     * Add new record or update subject/record data
     */
    @Test
    @Disabled("Not Implemented")
    public void createRecordsTest() {
        // given
        String studyKey = "example";
        List<@Valid ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem = Arrays.asList();

        // when
        RecordJobStatus body = api.createRecords(studyKey, componentsSchemasRecordCreateRequestItem).block();

        // then
        // TODO implement the createRecordsTest()
    }

    
    /**
     * List records (eCRF instances) in a study
     */
    @Test
    @Disabled("Not Implemented")
    public void listRecordsTest() {
        // given
        String studyKey = "example";
        Integer page = 0;
        Integer size = 25;
        String sort = "example";
        String filter = "example";
        String recordDataFilter = "example";

        // when
        RecordList body = api.listRecords(studyKey, page, size, sort, filter, recordDataFilter).block();

        // then
        // TODO implement the listRecordsTest()
    }

    
}
