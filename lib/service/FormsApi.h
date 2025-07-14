#ifndef TINY_CPP_CLIENT_FormsApi_H_
#define TINY_CPP_CLIENT_FormsApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "FormList.h"
#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_5.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class FormsApi : public Service {
public:
    FormsApi() = default;

    virtual ~FormsApi() = default;

    /**
    * List forms in a study.
    *
    * 
    * \param studyKey Study key identifying the study context for the request *Required*
    * \param page Page index to retrieve (0-based)
    * \param size Number of items to return per page (max 500)
    * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
    * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
    */
    Response<
                FormList
        >
    listForms(
            
            std::string studyKey
            , 
            
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

#endif /* TINY_CPP_CLIENT_FormsApi_H_ */