#import "OAIRecordsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIComponentsSchemasRecordCreateRequestItem.h"
#import "OAIInlineObject.h"
#import "OAIInlineObject1.h"
#import "OAIInlineObject2.h"
#import "OAIInlineObject3.h"
#import "OAIInlineObject4.h"
#import "OAIInlineObject5.h"
#import "OAIRecordJobStatus.h"
#import "OAIRecordList.h"


@interface OAIRecordsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRecordsApi

NSString* kOAIRecordsApiErrorDomain = @"OAIRecordsApiErrorDomain";
NSInteger kOAIRecordsApiMissingParamErrorCode = 234513;

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
/// Add new record or update subject/record data
/// 
///  @param studyKey Study key identifying the study context for the request 
///
///  @param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). 
///
///  @returns OAIRecordJobStatus*
///
-(NSURLSessionTask*) createRecordsWithStudyKey: (NSString*) studyKey
    componentsSchemasRecordCreateRequestItem: (NSArray<OAIComponentsSchemasRecordCreateRequestItem>*) componentsSchemasRecordCreateRequestItem
    completionHandler: (void (^)(OAIRecordJobStatus* output, NSError* error)) handler {
    // verify the required parameter 'studyKey' is set
    if (studyKey == nil) {
        NSParameterAssert(studyKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"studyKey"] };
            NSError* error = [NSError errorWithDomain:kOAIRecordsApiErrorDomain code:kOAIRecordsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'componentsSchemasRecordCreateRequestItem' is set
    if (componentsSchemasRecordCreateRequestItem == nil) {
        NSParameterAssert(componentsSchemasRecordCreateRequestItem);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"componentsSchemasRecordCreateRequestItem"] };
            NSError* error = [NSError errorWithDomain:kOAIRecordsApiErrorDomain code:kOAIRecordsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/{studyKey}/records"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (studyKey != nil) {
        pathParams[@"studyKey"] = studyKey;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyAuth", @"securityKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = componentsSchemasRecordCreateRequestItem;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIRecordJobStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRecordJobStatus*)data, error);
                                }
                            }];
}

///
/// List records (eCRF instances) in a study
/// 
///  @param studyKey Study key identifying the study context for the request 
///
///  @param page Page index to retrieve (0-based) (optional, default to @0)
///
///  @param size Number of items to return per page (max 500) (optional, default to @25)
///
///  @param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
///
///  @param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). (optional)
///
///  @param recordDataFilter Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR). (optional)
///
///  @returns OAIRecordList*
///
-(NSURLSessionTask*) listRecordsWithStudyKey: (NSString*) studyKey
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    filter: (NSString*) filter
    recordDataFilter: (NSString*) recordDataFilter
    completionHandler: (void (^)(OAIRecordList* output, NSError* error)) handler {
    // verify the required parameter 'studyKey' is set
    if (studyKey == nil) {
        NSParameterAssert(studyKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"studyKey"] };
            NSError* error = [NSError errorWithDomain:kOAIRecordsApiErrorDomain code:kOAIRecordsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/{studyKey}/records"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (studyKey != nil) {
        pathParams[@"studyKey"] = studyKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (recordDataFilter != nil) {
        queryParams[@"recordDataFilter"] = recordDataFilter;
    }
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
                              responseType: @"OAIRecordList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRecordList*)data, error);
                                }
                            }];
}



@end
