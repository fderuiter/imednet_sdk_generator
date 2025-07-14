@isTest
private class OASVisitsApiTest {
    /**
     * List visits (subject visit instances) in a study
     *
     * 
     */
    @isTest
    private static void listVisitsTest() {
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
        OASVisitsApi api;
        OASVisitList response;
        OASVisitList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVisitsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASVisitsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVisitList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVisitList.getExample();
        response = (OASVisitList) api.listVisits(params);
        System.assertEquals(expectedResponse, response);
    }
}