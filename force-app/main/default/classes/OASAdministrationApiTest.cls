@isTest
private class OASAdministrationApiTest {
    /**
     * List users and their roles in a study
     *
     * 
     */
    @isTest
    private static void listUsersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'studyKey' => 'null',
            'page' => 0,
            'size' => 25,
            'r_sort' => 'null',
            'includeInactive' => ''
        };

        OASClient client;
        OASAdministrationApi api;
        OASUserList response;
        OASUserList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAdministrationApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASAdministrationApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASUserList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserList.getExample();
        response = (OASUserList) api.listUsers(params);
        System.assertEquals(expectedResponse, response);
    }
}