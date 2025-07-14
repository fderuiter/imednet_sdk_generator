@isTest
private class OASCodingsApiTest {
    /**
     * List coding activities in a study
     *
     * 
     */
    @isTest
    private static void listCodingsTest() {
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
        OASCodingsApi api;
        OASCodingList response;
        OASCodingList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCodingsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASCodingsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCodingList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCodingList.getExample();
        response = (OASCodingList) api.listCodings(params);
        System.assertEquals(expectedResponse, response);
    }
}