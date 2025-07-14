
/*
 * Inline_object.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Inline_object_H_
#define TINY_CPP_CLIENT_Inline_object_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Inline_object{
public:

    /*! \brief Constructor.
	 */
    Inline_object();
    Inline_object(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Inline_object();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	Metadata getMetadata();

	/*! \brief Set 
	 */
	void setMetadata(Metadata  metadata);


    private:
    Metadata metadata;
};
}

#endif /* TINY_CPP_CLIENT_Inline_object_H_ */
