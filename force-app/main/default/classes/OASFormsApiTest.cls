@isTest
private class OASFormsApiTest {
    /**
     * List forms in a study
     *
     * 
     */
    @isTest
    private static void listFormsTest() {
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
        OASFormsApi api;
        OASFormList response;
        OASFormList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFormsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFormsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASFormList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFormList.getExample();
        response = (OASFormList) api.listForms(params);
        System.assertEquals(expectedResponse, response);
    }
}