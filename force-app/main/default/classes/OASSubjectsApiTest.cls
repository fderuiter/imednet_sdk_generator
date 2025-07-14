@isTest
private class OASSubjectsApiTest {
    /**
     * List subjects in a study
     *
     * 
     */
    @isTest
    private static void listSubjectsTest() {
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
        OASSubjectsApi api;
        OASSubjectList response;
        OASSubjectList expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSubjectsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASSubjectsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubjectList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubjectList.getExample();
        response = (OASSubjectList) api.listSubjects(params);
        System.assertEquals(expectedResponse, response);
    }
}