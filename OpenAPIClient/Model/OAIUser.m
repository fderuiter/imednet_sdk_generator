#import "OAIUser.h"

@implementation OAIUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"userId", @"login": @"login", @"firstName": @"firstName", @"lastName": @"lastName", @"email": @"email", @"userActiveInStudy": @"userActiveInStudy", @"roles": @"roles" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"login", @"firstName", @"lastName", @"email", @"userActiveInStudy", @"roles"];
  return [optionalProperties containsObject:propertyName];
}

@end
