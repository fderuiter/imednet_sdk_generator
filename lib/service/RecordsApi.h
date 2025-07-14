#ifndef TINY_CPP_CLIENT_RecordsApi_H_
#define TINY_CPP_CLIENT_RecordsApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "Components_schemas_RecordCreateRequest_item.h"
#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_4.h"
#include "Inline_object_5.h"
#include "RecordJobStatus.h"
#include "RecordList.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class RecordsApi : public Service {
public:
    RecordsApi() = default;

    virtual ~RecordsApi() = default;

    /**
    * Add new record or update subject/record data.
    *
    * 
    * \param studyKey Study key identifying the study context for the request *Required*
    * \param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). *Required*
    */
    Response<
                RecordJobStatus
        >
    createRecords(
            
            std::string studyKey
            , 
            std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem
            
            
    );
    /**
    * List records (eCRF instances) in a study.
    *
    * 
    * \param studyKey Study key identifying the study context for the request *Required*
    * \param page Page index to retrieve (0-based)
    * \param size Number of items to return per page (max 500)
    * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
    * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
    * \param recordDataFilter Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
    */
    Response<
                RecordList
        >
    listRecords(
            
            std::string studyKey
            , 
            
            int page
            , 
            
            int size
            , 
            
            std::string sort
            , 
            
            std::string filter
            , 
            
            std::string recordDataFilter
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_RecordsApi_H_ */