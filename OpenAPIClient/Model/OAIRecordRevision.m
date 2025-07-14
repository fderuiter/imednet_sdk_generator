#import "OAIRecordRevision.h"

@implementation OAIRecordRevision

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"recordRevisionId": @"recordRevisionId", @"recordId": @"recordId", @"recordOid": @"recordOid", @"recordRevision": @"recordRevision", @"dataRevision": @"dataRevision", @"recordStatus": @"recordStatus", @"subjectId": @"subjectId", @"subjectOid": @"subjectOid", @"subjectKey": @"subjectKey", @"siteId": @"siteId", @"formKey": @"formKey", @"intervalId": @"intervalId", @"role": @"role", @"user": @"user", @"reasonForChange": @"reasonForChange", @"deleted": @"deleted", @"dateCreated": @"dateCreated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"recordRevisionId", @"recordId", @"recordOid", @"recordRevision", @"dataRevision", @"recordStatus", @"subjectId", @"subjectOid", @"subjectKey", @"siteId", @"formKey", @"intervalId", @"role", @"user", @"reasonForChange", @"deleted", @"dateCreated"];
  return [optionalProperties containsObject:propertyName];
}

@end
