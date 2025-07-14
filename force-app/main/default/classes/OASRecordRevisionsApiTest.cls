@isTest
private class OASRecordRevisionsApiTest {
    /**
     * List record revisions (audit trail entries) in a study
     *
     * 
     */
    @isTest
    private static void listRecordRevisionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'studyKey' => 'null',
            'page' => 0,
            'size' => 25,
            'r_sort' => 'null',
            'filter' => 'null'
        };

        OASClient client;
        OASRecordRevisionsApi api;
        OASRecordRevisionList response;
        OASRecordRevisionList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRecordRevisionsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASRecordRevisionsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecordRevisionList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecordRevisionList.getExample();
        response = (OASRecordRevisionList) api.listRecordRevisions(params);
        System.assertEquals(expectedResponse, response);
    }
}