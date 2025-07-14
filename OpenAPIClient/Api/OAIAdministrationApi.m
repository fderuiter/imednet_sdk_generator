#import "OAIAdministrationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineObject.h"
#import "OAIInlineObject1.h"
#import "OAIInlineObject2.h"
#import "OAIInlineObject3.h"
#import "OAIInlineObject5.h"
#import "OAIUserList.h"


@interface OAIAdministrationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAdministrationApi

NSString* kOAIAdministrationApiErrorDomain = @"OAIAdministrationApiErrorDomain";
NSInteger kOAIAdministrationApiMissingParamErrorCode = 234513;

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
/// List users and their roles in a study
/// 
///  @param studyKey Study key identifying the study context for the request 
///
///  @param page Page index to retrieve (0-based) (optional, default to @0)
///
///  @param size Number of items to return per page (max 500) (optional, default to @25)
///
///  @param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
///
///  @param includeInactive For user listing, whether to include inactive users (optional, default to @(NO))
///
///  @returns OAIUserList*
///
-(NSURLSessionTask*) listUsersWithStudyKey: (NSString*) studyKey
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    includeInactive: (NSNumber*) includeInactive
    completionHandler: (void (^)(OAIUserList* output, NSError* error)) handler {
    // verify the required parameter 'studyKey' is set
    if (studyKey == nil) {
        NSParameterAssert(studyKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"studyKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAdministrationApiErrorDomain code:kOAIAdministrationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/{studyKey}/users"];

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
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIUserList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUserList*)data, error);
                                }
                            }];
}



@end
