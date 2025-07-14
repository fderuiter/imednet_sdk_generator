
/*
 * IntervalList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_IntervalList_H_
#define TINY_CPP_CLIENT_IntervalList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Interval.h"
#include "Metadata.h"
#include "Pagination.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class IntervalList{
public:

    /*! \brief Constructor.
	 */
    IntervalList();
    IntervalList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~IntervalList();


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
    std::list<Interval> data;
};
}

#endif /* TINY_CPP_CLIENT_IntervalList_H_ */
