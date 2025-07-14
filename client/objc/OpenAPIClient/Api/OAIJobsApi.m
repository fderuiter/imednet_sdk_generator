#import "OAIJobsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineObject.h"
#import "OAIInlineObject1.h"
#import "OAIInlineObject2.h"
#import "OAIInlineObject3.h"
#import "OAIInlineObject5.h"
#import "OAIJob.h"


@interface OAIJobsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIJobsApi

NSString* kOAIJobsApiErrorDomain = @"OAIJobsApiErrorDomain";
NSInteger kOAIJobsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Retrieve job status by batch ID
/// 
///  @param studyKey Study key identifying the study context for the request 
///
///  @param batchId Batch ID of the job to retrieve 
///
///  @returns OAIJob*
///
-(NSURLSessionTask*) getJobStatusWithStudyKey: (NSString*) studyKey
    batchId: (NSString*) batchId
    completionHandler: (void (^)(OAIJob* output, NSError* error)) handler {
    // verify the required parameter 'studyKey' is set
    if (studyKey == nil) {
        NSParameterAssert(studyKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"studyKey"] };
            NSError* error = [NSError errorWithDomain:kOAIJobsApiErrorDomain code:kOAIJobsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'batchId' is set
    if (batchId == nil) {
        NSParameterAssert(batchId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"batchId"] };
            NSError* error = [NSError errorWithDomain:kOAIJobsApiErrorDomain code:kOAIJobsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/{studyKey}/jobs/{batchId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (studyKey != nil) {
        pathParams[@"studyKey"] = studyKey;
    }
    if (batchId != nil) {
        pathParams[@"batchId"] = batchId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyAuth", @"securityKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIJob*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIJob*)data, error);
                                }
                            }];
}



@end
