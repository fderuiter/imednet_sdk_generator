@isTest
private class OASQueriesApiTest {
    /**
     * List data queries in a study
     *
     * 
     */
    @isTest
    private static void listQueriesTest() {
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
        OASQueriesApi api;
        OASQueryList response;
        OASQueryList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQueriesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASQueriesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQueryList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueryList.getExample();
        response = (OASQueryList) api.listQueries(params);
        System.assertEquals(expectedResponse, response);
    }
}