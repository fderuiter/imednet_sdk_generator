#ifndef _AdministrationManager_H_
#define _AdministrationManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_5.h"
#include "UserList.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Administration Administration
 * \ingroup Operations
 *  @{
 */
class AdministrationManager {
public:
	AdministrationManager();
	virtual ~AdministrationManager();

/*! \brief List users and their roles in a study. *Synchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param page Page index to retrieve (0-based)
 * \param size Number of items to return per page (max 500)
 * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
 * \param includeInactive For user listing, whether to include inactive users
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool listUsersSync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, bool includeInactive, 
	void(* handler)(UserList, Error, void* )
	, void* userData);

/*! \brief List users and their roles in a study. *Asynchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param page Page index to retrieve (0-based)
 * \param size Number of items to return per page (max 500)
 * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
 * \param includeInactive For user listing, whether to include inactive users
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool listUsersAsync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, bool includeInactive, 
	void(* handler)(UserList, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://edc.prod.imednetapi.com/api/v1/edc";
	}
};
/** @}*/

}
}
#endif /* AdministrationManager_H_ */
