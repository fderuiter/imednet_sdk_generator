/*
 * Role.h
 *
 * 
 */

#ifndef _Role_H_
#define _Role_H_


#include <string>
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

class Role : public Object {
public:
	/*! \brief Constructor.
	 */
	Role();
	Role(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Role();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	bool getInactive();

	/*! \brief Set Whether the role is inactive
	 */
	void setInactive(bool  inactive);

private:
	std::list <int>dateCreated;
	std::list <int>dateModified;
	std::string roleId;
	int communityId;
	std::string name;
	std::string description;
	int level;
	std::string type;
	bool inactive;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Role_H_ */
