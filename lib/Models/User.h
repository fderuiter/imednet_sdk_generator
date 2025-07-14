
/*
 * User.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_User_H_
#define TINY_CPP_CLIENT_User_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Role.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class User{
public:

    /*! \brief Constructor.
	 */
    User();
    User(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~User();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Unique user ID (UUID)
	 */
	std::string getUserId();

	/*! \brief Set Unique user ID (UUID)
	 */
	void setUserId(std::string  userId);
	/*! \brief Get User login name
	 */
	std::string getLogin();

	/*! \brief Set User login name
	 */
	void setLogin(std::string  login);
	/*! \brief Get User first name
	 */
	std::string getFirstName();

	/*! \brief Set User first name
	 */
	void setFirstName(std::string  firstName);
	/*! \brief Get User last name
	 */
	std::string getLastName();

	/*! \brief Set User last name
	 */
	void setLastName(std::string  lastName);
	/*! \brief Get User email address
	 */
	std::string getEmail();

	/*! \brief Set User email address
	 */
	void setEmail(std::string  email);
	/*! \brief Get Whether the user is active in the given study
	 */
	bool isUserActiveInStudy();

	/*! \brief Set Whether the user is active in the given study
	 */
	void setUserActiveInStudy(bool  userActiveInStudy);
	/*! \brief Get Roles that the user has in the study
	 */
	std::list<Role> getRoles();

	/*! \brief Set Roles that the user has in the study
	 */
	void setRoles(std::list <Role> roles);


    private:
    std::string userId{};
    std::string login{};
    std::string firstName{};
    std::string lastName{};
    std::string email{};
    bool userActiveInStudy{};
    std::list<Role> roles;
};
}

#endif /* TINY_CPP_CLIENT_User_H_ */
