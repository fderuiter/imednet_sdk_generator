
/*
 * SiteList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SiteList_H_
#define TINY_CPP_CLIENT_SiteList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"
#include "Pagination.h"
#include "Site.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SiteList{
public:

    /*! \brief Constructor.
	 */
    SiteList();
    SiteList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SiteList();


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
	std::list<Site> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Site> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<Site> data;
};
}

#endif /* TINY_CPP_CLIENT_SiteList_H_ */
