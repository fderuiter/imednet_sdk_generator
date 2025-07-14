
/*
 * Components_schemas_Metadata_error.h
 *
 * Error details if an error occurred
 */

#ifndef TINY_CPP_CLIENT_Components_schemas_Metadata_error_H_
#define TINY_CPP_CLIENT_Components_schemas_Metadata_error_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "AnyType.h"

namespace Tiny {


/*! \brief Error details if an error occurred
 *
 *  \ingroup Models
 *
 */

class Components_schemas_Metadata_error{
public:

    /*! \brief Constructor.
	 */
    Components_schemas_Metadata_error();
    Components_schemas_Metadata_error(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Components_schemas_Metadata_error();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Error message describing the issue
	 */
	std::string getMessage();

	/*! \brief Set Error message describing the issue
	 */
	void setMessage(std::string  message);


    private:
    std::string message{};
};
}

#endif /* TINY_CPP_CLIENT_Components_schemas_Metadata_error_H_ */
