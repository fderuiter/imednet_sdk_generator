
/*
 * VisitList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_VisitList_H_
#define TINY_CPP_CLIENT_VisitList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"
#include "Pagination.h"
#include "Visit.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class VisitList{
public:

    /*! \brief Constructor.
	 */
    VisitList();
    VisitList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~VisitList();


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
	std::list<Visit> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Visit> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<Visit> data;
};
}

#endif /* TINY_CPP_CLIENT_VisitList_H_ */
