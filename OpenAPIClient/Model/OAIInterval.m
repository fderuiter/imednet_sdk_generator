#import "OAIInterval.h"

@implementation OAIInterval

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"intervalId": @"intervalId", @"intervalName": @"intervalName", @"intervalDescription": @"intervalDescription", @"intervalSequence": @"intervalSequence", @"intervalGroupId": @"intervalGroupId", @"intervalGroupName": @"intervalGroupName", @"timeline": @"timeline", @"definedUsingInterval": @"definedUsingInterval", @"windowCalculationForm": @"windowCalculationForm", @"windowCalculationDate": @"windowCalculationDate", @"actualDateForm": @"actualDateForm", @"actualDate": @"actualDate", @"dueDateWillBeIn": @"dueDateWillBeIn", @"negativeSlack": @"negativeSlack", @"positiveSlack": @"positiveSlack", @"eproGracePeriod": @"eproGracePeriod", @"forms": @"forms", @"disabled": @"disabled", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"intervalId", @"intervalName", @"intervalDescription", @"intervalSequence", @"intervalGroupId", @"intervalGroupName", @"timeline", @"definedUsingInterval", @"windowCalculationForm", @"windowCalculationDate", @"actualDateForm", @"actualDate", @"dueDateWillBeIn", @"negativeSlack", @"positiveSlack", @"eproGracePeriod", @"forms", @"disabled", @"dateCreated", @"dateModified"];
  return [optionalProperties containsObject:propertyName];
}

@end
