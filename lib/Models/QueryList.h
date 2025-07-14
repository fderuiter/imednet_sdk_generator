
/*
 * QueryList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_QueryList_H_
#define TINY_CPP_CLIENT_QueryList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"
#include "Pagination.h"
#include "Query.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class QueryList{
public:

    /*! \brief Constructor.
	 */
    QueryList();
    QueryList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~QueryList();


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
	std::list<Query> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Query> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<Query> data;
};
}

#endif /* TINY_CPP_CLIENT_QueryList_H_ */
