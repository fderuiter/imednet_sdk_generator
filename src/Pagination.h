/*
 * Pagination.h
 *
 * 
 */

#ifndef _Pagination_H_
#define _Pagination_H_


#include <string>
#include "Sort.h"
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

class Pagination : public Object {
public:
	/*! \brief Constructor.
	 */
	Pagination();
	Pagination(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Pagination();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Current index page returned
	 */
	int getCurrentPage();

	/*! \brief Set Current index page returned
	 */
	void setCurrentPage(int  currentPage);
	/*! \brief Get Number of items per page returned
	 */
	int getSize();

	/*! \brief Set Number of items per page returned
	 */
	void setSize(int  size);
	/*! \brief Get Total number of pages available
	 */
	int getTotalPages();

	/*! \brief Set Total number of pages available
	 */
	void setTotalPages(int  totalPages);
	/*! \brief Get Total number of elements (items) available
	 */
	int getTotalElements();

	/*! \brief Set Total number of elements (items) available
	 */
	void setTotalElements(int  totalElements);
	/*! \brief Get 
	 */
	std::list<Sort> getSort();

	/*! \brief Set 
	 */
	void setSort(std::list <Sort> sort);

private:
	int currentPage;
	int size;
	int totalPages;
	int totalElements;
	std::list <Sort>sort;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Pagination_H_ */
