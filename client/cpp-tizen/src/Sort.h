/*
 * Sort.h
 *
 * 
 */

#ifndef _Sort_H_
#define _Sort_H_


#include <string>
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

class Sort : public Object {
public:
	/*! \brief Constructor.
	 */
	Sort();
	Sort(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sort();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string property;
	std::string direction;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sort_H_ */
