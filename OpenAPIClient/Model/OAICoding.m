#import "OAICoding.h"

@implementation OAICoding

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"siteName": @"siteName", @"siteId": @"siteId", @"subjectId": @"subjectId", @"subjectKey": @"subjectKey", @"formId": @"formId", @"formName": @"formName", @"formKey": @"formKey", @"revision": @"revision", @"recordId": @"recordId", @"variable": @"variable", @"value": @"value", @"codingId": @"codingId", @"code": @"code", @"codedBy": @"codedBy", @"reason": @"reason", @"dictionaryName": @"dictionaryName", @"dictionaryVersion": @"dictionaryVersion", @"dateCoded": @"dateCoded" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"siteName", @"siteId", @"subjectId", @"subjectKey", @"formId", @"formName", @"formKey", @"revision", @"recordId", @"variable", @"value", @"codingId", @"code", @"codedBy", @"reason", @"dictionaryName", @"dictionaryVersion", @"dateCoded"];
  return [optionalProperties containsObject:propertyName];
}

@end
