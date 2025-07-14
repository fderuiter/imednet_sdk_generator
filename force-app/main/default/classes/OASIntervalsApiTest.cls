@isTest
private class OASIntervalsApiTest {
    /**
     * List intervals (visit definitions) in a study
     *
     * 
     */
    @isTest
    private static void listIntervalsTest() {
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
        OASIntervalsApi api;
        OASIntervalList response;
        OASIntervalList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIntervalsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIntervalsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIntervalList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIntervalList.getExample();
        response = (OASIntervalList) api.listIntervals(params);
        System.assertEquals(expectedResponse, response);
    }
}