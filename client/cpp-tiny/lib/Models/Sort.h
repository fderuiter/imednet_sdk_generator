
/*
 * Sort.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Sort_H_
#define TINY_CPP_CLIENT_Sort_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Sort{
public:

    /*! \brief Constructor.
	 */
    Sort();
    Sort(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Sort();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Name of the property by which the result is sorted
	 */
	std::string getProperty();

	/*! \brief Set Name of the property by which the result is sorted
	 */
	void setProperty(std::string  property);
	/*! \brief Get Sort direction (ASC or DESC)
	 */
	std::string getDirection();

	/*! \brief Set Sort direction (ASC or DESC)
	 */
	void setDirection(std::string  direction);


    private:
    std::string property{};
    std::string direction{};
};
}

#endif /* TINY_CPP_CLIENT_Sort_H_ */
