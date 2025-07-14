#import "OAIRecord.h"

@implementation OAIRecord

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"intervalId": @"intervalId", @"formId": @"formId", @"formKey": @"formKey", @"siteId": @"siteId", @"recordId": @"recordId", @"recordOid": @"recordOid", @"recordType": @"recordType", @"recordStatus": @"recordStatus", @"deleted": @"deleted", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified", @"subjectId": @"subjectId", @"subjectOid": @"subjectOid", @"subjectKey": @"subjectKey", @"visitId": @"visitId", @"parentRecordId": @"parentRecordId", @"keywords": @"keywords", @"recordData": @"recordData" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"intervalId", @"formId", @"formKey", @"siteId", @"recordId", @"recordOid", @"recordType", @"recordStatus", @"deleted", @"dateCreated", @"dateModified", @"subjectId", @"subjectOid", @"subjectKey", @"visitId", @"parentRecordId", @"keywords", @"recordData"];
  return [optionalProperties containsObject:propertyName];
}

@end
