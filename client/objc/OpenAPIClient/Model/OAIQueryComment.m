#import "OAIQueryComment.h"

@implementation OAIQueryComment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sequence": @"sequence", @"annotationStatus": @"annotationStatus", @"user": @"user", @"comment": @"comment", @"closed": @"closed", @"date": @"date" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sequence", @"annotationStatus", @"user", @"comment", @"closed", @"date"];
  return [optionalProperties containsObject:propertyName];
}

@end
