#import "OAIVariable.h"

@implementation OAIVariable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"variableId": @"variableId", @"variableType": @"variableType", @"variableName": @"variableName", @"sequence": @"sequence", @"revision": @"revision", @"disabled": @"disabled", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified", @"formId": @"formId", @"variableOid": @"variableOid", @"deleted": @"deleted", @"formKey": @"formKey", @"formName": @"formName", @"label": @"label", @"blinded": @"blinded" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"variableId", @"variableType", @"variableName", @"sequence", @"revision", @"disabled", @"dateCreated", @"dateModified", @"formId", @"variableOid", @"deleted", @"formKey", @"formName", @"label", @"blinded"];
  return [optionalProperties containsObject:propertyName];
}

@end
