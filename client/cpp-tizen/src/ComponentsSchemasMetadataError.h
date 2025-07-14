/*
 * Components_schemas_Metadata_error.h
 *
 * Error details if an error occurred
 */

#ifndef _Components_schemas_Metadata_error_H_
#define _Components_schemas_Metadata_error_H_


#include <string>
#include "AnyType.h"
#include <map>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Error details if an error occurred
 *
 *  \ingroup Models
 *
 */

class Components_schemas_Metadata_error : public Object {
public:
	/*! \brief Constructor.
	 */
	Components_schemas_Metadata_error();
	Components_schemas_Metadata_error(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Components_schemas_Metadata_error();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Error message describing the issue
	 */
	std::string getMessage();

	/*! \brief Set Error message describing the issue
	 */
	void setMessage(std::string  message);

private:
	std::string message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Components_schemas_Metadata_error_H_ */
