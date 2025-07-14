/*
 * Inline_object_2.h
 *
 * 
 */

#ifndef _Inline_object_2_H_
#define _Inline_object_2_H_


#include <string>
#include "Metadata.h"
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

class Inline_object_2 : public Object {
public:
	/*! \brief Constructor.
	 */
	Inline_object_2();
	Inline_object_2(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Inline_object_2();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Metadata getMetadata();

	/*! \brief Set 
	 */
	void setMetadata(Metadata  metadata);

private:
	Metadata metadata;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Inline_object_2_H_ */
