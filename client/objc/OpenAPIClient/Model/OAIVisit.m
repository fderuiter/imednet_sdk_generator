#import "OAIVisit.h"

@implementation OAIVisit

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"visitId": @"visitId", @"intervalId": @"intervalId", @"intervalName": @"intervalName", @"subjectId": @"subjectId", @"subjectKey": @"subjectKey", @"startDate": @"startDate", @"endDate": @"endDate", @"dueDate": @"dueDate", @"visitDate": @"visitDate", @"visitDateForm": @"visitDateForm", @"visitDateQuestion": @"visitDateQuestion", @"deleted": @"deleted", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"visitId", @"intervalId", @"intervalName", @"subjectId", @"subjectKey", @"startDate", @"endDate", @"dueDate", @"visitDate", @"visitDateForm", @"visitDateQuestion", @"deleted", @"dateCreated", @"dateModified"];
  return [optionalProperties containsObject:propertyName];
}

@end
