#import "OAIComponentsSchemasRecordCreateRequestItem.h"

@implementation OAIComponentsSchemasRecordCreateRequestItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"formKey": @"formKey", @"formId": @"formId", @"siteName": @"siteName", @"siteId": @"siteId", @"subjectKey": @"subjectKey", @"subjectId": @"subjectId", @"subjectOid": @"subjectOid", @"intervalName": @"intervalName", @"intervalId": @"intervalId", @"recordId": @"recordId", @"recordOid": @"recordOid", @"data": @"data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"formId", @"siteName", @"siteId", @"subjectKey", @"subjectId", @"subjectOid", @"intervalName", @"intervalId", @"recordId", @"recordOid", ];
  return [optionalProperties containsObject:propertyName];
}

@end
