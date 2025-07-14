#ifndef _SubjectsManager_H_
#define _SubjectsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_5.h"
#include "SubjectList.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Subjects Subjects
 * \ingroup Operations
 *  @{
 */
class SubjectsManager {
public:
	SubjectsManager();
	virtual ~SubjectsManager();

/*! \brief List subjects in a study. *Synchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param page Page index to retrieve (0-based)
 * \param size Number of items to return per page (max 500)
 * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
 * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool listSubjectsSync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(SubjectList, Error, void* )
	, void* userData);

/*! \brief List subjects in a study. *Asynchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param page Page index to retrieve (0-based)
 * \param size Number of items to return per page (max 500)
 * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
 * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool listSubjectsAsync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(SubjectList, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://edc.prod.imednetapi.com/api/v1/edc";
	}
};
/** @}*/

}
}
#endif /* SubjectsManager_H_ */
