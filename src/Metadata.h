/*
 * Metadata.h
 *
 * 
 */

#ifndef _Metadata_H_
#define _Metadata_H_


#include <string>
#include "Components_schemas_Metadata_error.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Metadata : public Object {
public:
	/*! \brief Constructor.
	 */
	Metadata();
	Metadata(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Metadata();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get HTTP status of the response (e.g., OK or ERROR)
	 */
	std::string getStatus();

	/*! \brief Set HTTP status of the response (e.g., OK or ERROR)
	 */
	void setStatus(std::string  status);
	/*! \brief Get HTTP method of the request
	 */
	std::string getMethod();

	/*! \brief Set HTTP method of the request
	 */
	void setMethod(std::string  method);
	/*! \brief Get Requested URI path
	 */
	std::string getPath();

	/*! \brief Set Requested URI path
	 */
	void setPath(std::string  path);
	/*! \brief Get Timestamp when response was generated
	 */
	std::string getTimestamp();

	/*! \brief Set Timestamp when response was generated
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	Components_schemas_Metadata_error getError();

	/*! \brief Set 
	 */
	void setError(Components_schemas_Metadata_error  error);

private:
	std::string status;
	std::string method;
	std::string path;
	std::string timestamp;
	Components_schemas_Metadata_error error;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Metadata_H_ */
