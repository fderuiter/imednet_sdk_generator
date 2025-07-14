@isTest
private class OASJobsApiTest {
    /**
     * Retrieve job status by batch ID
     *
     * 
     */
    @isTest
    private static void getJobStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'studyKey' => 'null',
            'batchId' => 'null'
        };

        OASClient client;
        OASJobsApi api;
        OASJob response;
        OASJob expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASJobsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('securityKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJob.getExample();
        response = (OASJob) api.getJobStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}