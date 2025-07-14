public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://edc.prod.imednetapi.com/api/v1/edc';
        calloutName = 'Mednet_EDC_API';
        authentications.put('apiKeyAuth', new OAS.ApiKeyHeaderAuth('x-api-key'));
        authentications.put('securityKeyAuth', new OAS.ApiKeyHeaderAuth('x-imn-security-key'));
    }
}
