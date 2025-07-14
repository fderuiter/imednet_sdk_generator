@isTest
private class OASSitesApiTest {
    /**
     * List sites for a study
     *
     * 
     */
    @isTest
    private static void listSitesTest() {
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
        OASSitesApi api;
        OASSiteList response;
        OASSiteList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSitesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASSitesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSiteList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSiteList.getExample();
        response = (OASSiteList) api.listSites(params);
        System.assertEquals(expectedResponse, response);
    }
}