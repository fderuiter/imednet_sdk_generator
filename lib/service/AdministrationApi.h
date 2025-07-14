#ifndef TINY_CPP_CLIENT_AdministrationApi_H_
#define TINY_CPP_CLIENT_AdministrationApi_H_


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
#include "UserList.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class AdministrationApi : public Service {
public:
    AdministrationApi() = default;

    virtual ~AdministrationApi() = default;

    /**
    * List users and their roles in a study.
    *
    * 
    * \param studyKey Study key identifying the study context for the request *Required*
    * \param page Page index to retrieve (0-based)
    * \param size Number of items to return per page (max 500)
    * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
    * \param includeInactive For user listing, whether to include inactive users
    */
    Response<
                UserList
        >
    listUsers(
            
            std::string studyKey
            , 
            
            int page
            , 
            
            int size
            , 
            
            std::string sort
            , 
            
            bool includeInactive
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_AdministrationApi_H_ */