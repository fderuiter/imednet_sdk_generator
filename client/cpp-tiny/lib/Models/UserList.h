
/*
 * UserList.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_UserList_H_
#define TINY_CPP_CLIENT_UserList_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Metadata.h"
#include "Pagination.h"
#include "User.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class UserList{
public:

    /*! \brief Constructor.
	 */
    UserList();
    UserList(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~UserList();


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
	std::list<User> getData();

	/*! \brief Set 
	 */
	void setData(std::list <User> data);


    private:
    Metadata metadata;
    Pagination pagination;
    std::list<User> data;
};
}

#endif /* TINY_CPP_CLIENT_UserList_H_ */
