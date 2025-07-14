/*
 * IntervalList.h
 *
 * 
 */

#ifndef _IntervalList_H_
#define _IntervalList_H_


#include <string>
#include "Interval.h"
#include "Metadata.h"
#include "Pagination.h"
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

class IntervalList : public Object {
public:
	/*! \brief Constructor.
	 */
	IntervalList();
	IntervalList(char* str);

	/*! \brief Destructor.
	 */
	virtual ~IntervalList();

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
	std::list<Interval> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Interval> data);

private:
	Metadata metadata;
	Pagination pagination;
	std::list <Interval>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _IntervalList_H_ */
