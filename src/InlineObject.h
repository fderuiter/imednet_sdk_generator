/*
 * Inline_object.h
 *
 * 
 */

#ifndef _Inline_object_H_
#define _Inline_object_H_


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

class Inline_object : public Object {
public:
	/*! \brief Constructor.
	 */
	Inline_object();
	Inline_object(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Inline_object();

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

#endif /* _Inline_object_H_ */
