#import "OAIQuery.h"

@implementation OAIQuery

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"studyKey": @"studyKey", @"subjectId": @"subjectId", @"subjectOid": @"subjectOid", @"annotationType": @"annotationType", @"annotationId": @"annotationId", @"type": @"type", @"_description": @"description", @"recordId": @"recordId", @"variable": @"variable", @"subjectKey": @"subjectKey", @"dateCreated": @"dateCreated", @"dateModified": @"dateModified", @"queryComments": @"queryComments" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"studyKey", @"subjectId", @"subjectOid", @"annotationType", @"annotationId", @"type", @"_description", @"recordId", @"variable", @"subjectKey", @"dateCreated", @"dateModified", @"queryComments"];
  return [optionalProperties containsObject:propertyName];
}

@end
