
/*
 * Metadata.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Metadata_H_
#define TINY_CPP_CLIENT_Metadata_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Components_schemas_Metadata_error.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Metadata{
public:

    /*! \brief Constructor.
	 */
    Metadata();
    Metadata(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Metadata();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::string status{};
    std::string method{};
    std::string path{};
    std::string timestamp{};
    Components_schemas_Metadata_error error;
};
}

#endif /* TINY_CPP_CLIENT_Metadata_H_ */
