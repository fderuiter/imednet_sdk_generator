
/*
 * Pagination.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Pagination_H_
#define TINY_CPP_CLIENT_Pagination_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Sort.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Pagination{
public:

    /*! \brief Constructor.
	 */
    Pagination();
    Pagination(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Pagination();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    int currentPage{};
    int size{};
    int totalPages{};
    int totalElements{};
    std::list<Sort> sort;
};
}

#endif /* TINY_CPP_CLIENT_Pagination_H_ */
