#ifndef TINY_CPP_CLIENT_StudiesApi_H_
#define TINY_CPP_CLIENT_StudiesApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_5.h"
#include "StudyList.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class StudiesApi : public Service {
public:
    StudiesApi() = default;

    virtual ~StudiesApi() = default;

    /**
    * List studies accessible by API key.
    *
    * 
    * \param page Page index to retrieve (0-based)
    * \param size Number of items to return per page (max 500)
    * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
    * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
    */
    Response<
                StudyList
        >
    listStudies(
            
            int page
            , 
            
            int size
            , 
            
            std::string sort
            , 
            
            std::string filter
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_StudiesApi_H_ */