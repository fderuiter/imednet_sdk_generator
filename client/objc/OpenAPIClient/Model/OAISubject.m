#import "OAISubject.h"

@implementation OAISubject

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"subjectId": @"subjectId", @"subjectOid": @"subjectOid", @"subjectKey": @"subjectKey", @"subjectStatus": @"subjectStatus", @"siteId": @"siteId", @"siteName": @"siteName", @"deleted": @"deleted", @"enrollmentStartDate": @"enrollmentStartDate", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified", @"keywords": @"keywords" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"subjectId", @"subjectOid", @"subjectKey", @"subjectStatus", @"siteId", @"siteName", @"deleted", @"enrollmentStartDate", @"dateCreated", @"dateModified", @"keywords"];
  return [optionalProperties containsObject:propertyName];
}

@end
