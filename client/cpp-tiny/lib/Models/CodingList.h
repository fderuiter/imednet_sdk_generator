
/*
 * CodingList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_CodingList_H_
#define TINY_CPP_CLIENT_CodingList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Coding.h"
#include "Metadata.h"
#include "Pagination.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CodingList{
public:

    /*! \brief Constructor.
	 */
    CodingList();
    CodingList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~CodingList();


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
	std::list<Coding> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Coding> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<Coding> data;
};
}

#endif /* TINY_CPP_CLIENT_CodingList_H_ */
