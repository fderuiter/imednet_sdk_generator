@isTest
private class OASVariablesApiTest {
    /**
     * List variables (fields) in a study
     *
     * 
     */
    @isTest
    private static void listVariablesTest() {
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
        OASVariablesApi api;
        OASVariableList response;
        OASVariableList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVariablesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASVariablesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVariableList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVariableList.getExample();
        response = (OASVariableList) api.listVariables(params);
        System.assertEquals(expectedResponse, response);
    }
}