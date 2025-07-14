/*
 * VisitList.h
 *
 * 
 */

#ifndef _VisitList_H_
#define _VisitList_H_


#include <string>
#include "Metadata.h"
#include "Pagination.h"
#include "Visit.h"
#include <list>
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

class VisitList : public Object {
public:
	/*! \brief Constructor.
	 */
	VisitList();
	VisitList(char* str);

	/*! \brief Destructor.
	 */
	virtual ~VisitList();

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
	/*! \brief Get 
	 */
	Pagination getPagination();

	/*! \brief Set 
	 */
	void setPagination(Pagination  pagination);
	/*! \brief Get 
	 */
	std::list<Visit> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Visit> data);

private:
	Metadata metadata;
	Pagination pagination;
	std::list <Visit>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _VisitList_H_ */
