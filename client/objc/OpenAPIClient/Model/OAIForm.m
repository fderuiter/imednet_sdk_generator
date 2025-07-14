#import "OAIForm.h"

@implementation OAIForm

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"formId": @"formId", @"formKey": @"formKey", @"formName": @"formName", @"formType": @"formType", @"revision": @"revision", @"embeddedLog": @"embeddedLog", @"enforceOwnership": @"enforceOwnership", @"userAgreement": @"userAgreement", @"subjectRecordReport": @"subjectRecordReport", @"unscheduledVisit": @"unscheduledVisit", @"otherForms": @"otherForms", @"eproForm": @"eproForm", @"allowCopy": @"allowCopy", @"disabled": @"disabled", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"formId", @"formKey", @"formName", @"formType", @"revision", @"embeddedLog", @"enforceOwnership", @"userAgreement", @"subjectRecordReport", @"unscheduledVisit", @"otherForms", @"eproForm", @"allowCopy", @"disabled", @"dateCreated", @"dateModified"];
  return [optionalProperties containsObject:propertyName];
}

@end
