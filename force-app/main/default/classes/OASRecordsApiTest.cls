@isTest
private class OASRecordsApiTest {
    /**
     * Add new record or update subject/record data
     *
     * 
     */
    @isTest
    private static void createRecordsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'studyKey' => 'null',
            'oaSComponentsSchemasRecordCreateRequ' => new List<OASComponentsSchemasRecordCreateRequ>{OASComponentsSchemasRecordCreateRequ.getExample()}
        };

        OASClient client;
        OASRecordsApi api;
        OASRecordJobStatus response;
        OASRecordJobStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRecordsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASRecordsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordJobStatus.getExample();
        response = (OASRecordJobStatus) api.createRecords(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List records (eCRF instances) in a study
     *
     * 
     */
    @isTest
    private static void listRecordsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'studyKey' => 'null',
            'page' => 0,
            'size' => 25,
            'r_sort' => 'null',
            'filter' => 'null',
            'recordDataFilter' => 'null'
        };

        OASClient client;
        OASRecordsApi api;
        OASRecordList response;
        OASRecordList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRecordsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASRecordsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordList.getExample();
        response = (OASRecordList) api.listRecords(params);
        System.assertEquals(expectedResponse, response);
    }
}