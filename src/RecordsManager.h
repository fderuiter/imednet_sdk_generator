#ifndef _RecordsManager_H_
#define _RecordsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Components_schemas_RecordCreateRequest_item.h"
#include "Inline_object.h"
#include "Inline_object_1.h"
#include "Inline_object_2.h"
#include "Inline_object_3.h"
#include "Inline_object_4.h"
#include "Inline_object_5.h"
#include "RecordJobStatus.h"
#include "RecordList.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Records Records
 * \ingroup Operations
 *  @{
 */
class RecordsManager {
public:
	RecordsManager();
	virtual ~RecordsManager();

/*! \brief Add new record or update subject/record data. *Synchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool createRecordsSync(char * accessToken,
	std::string studyKey, std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem, 
	void(* handler)(RecordJobStatus, Error, void* )
	, void* userData);

/*! \brief Add new record or update subject/record data. *Asynchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param componentsSchemasRecordCreateRequestItem An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool createRecordsAsync(char * accessToken,
	std::string studyKey, std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem, 
	void(* handler)(RecordJobStatus, Error, void* )
	, void* userData);


/*! \brief List records (eCRF instances) in a study. *Synchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param page Page index to retrieve (0-based)
 * \param size Number of items to return per page (max 500)
 * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
 * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
 * \param recordDataFilter Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool listRecordsSync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, std::string recordDataFilter, 
	void(* handler)(RecordList, Error, void* )
	, void* userData);

/*! \brief List records (eCRF instances) in a study. *Asynchronous*
 *
 * 
 * \param studyKey Study key identifying the study context for the request *Required*
 * \param page Page index to retrieve (0-based)
 * \param size Number of items to return per page (max 500)
 * \param sort Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
 * \param filter Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
 * \param recordDataFilter Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool listRecordsAsync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, std::string recordDataFilter, 
	void(* handler)(RecordList, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://edc.prod.imednetapi.com/api/v1/edc";
	}
};
/** @}*/

}
}
#endif /* RecordsManager_H_ */
