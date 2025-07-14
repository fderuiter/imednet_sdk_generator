
/*
 * Role.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Role_H_
#define TINY_CPP_CLIENT_Role_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Role{
public:

    /*! \brief Constructor.
	 */
    Role();
    Role(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Role();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
	 */
	std::list<int> getDateCreated();

	/*! \brief Set Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
	 */
	void setDateCreated(std::list <int> dateCreated);
	/*! \brief Get Timestamp when the role assignment was last modified
	 */
	std::list<int> getDateModified();

	/*! \brief Set Timestamp when the role assignment was last modified
	 */
	void setDateModified(std::list <int> dateModified);
	/*! \brief Get Unique role ID (UUID)
	 */
	std::string getRoleId();

	/*! \brief Set Unique role ID (UUID)
	 */
	void setRoleId(std::string  roleId);
	/*! \brief Get Community ID or level associated with the role
	 */
	int getCommunityId();

	/*! \brief Set Community ID or level associated with the role
	 */
	void setCommunityId(int  communityId);
	/*! \brief Get Name of the role
	 */
	std::string getName();

	/*! \brief Set Name of the role
	 */
	void setName(std::string  name);
	/*! \brief Get Description of the role
	 */
	std::string getDescription();

	/*! \brief Set Description of the role
	 */
	void setDescription(std::string  description);
	/*! \brief Get Role level or hierarchy
	 */
	int getLevel();

	/*! \brief Set Role level or hierarchy
	 */
	void setLevel(int  level);
	/*! \brief Get Role type/category
	 */
	std::string getType();

	/*! \brief Set Role type/category
	 */
	void setType(std::string  type);
	/*! \brief Get Whether the role is inactive
	 */
	bool isInactive();

	/*! \brief Set Whether the role is inactive
	 */
	void setInactive(bool  inactive);


    private:
    std::list<int> dateCreated;
    std::list<int> dateModified;
    std::string roleId{};
    int communityId{};
    std::string name{};
    std::string description{};
    int level{};
    std::string type{};
    bool inactive{};
};
}

#endif /* TINY_CPP_CLIENT_Role_H_ */
