

#include "User.h"

using namespace Tiny;

User::User()
{
	userId = std::string();
	login = std::string();
	firstName = std::string();
	lastName = std::string();
	email = std::string();
	userActiveInStudy = bool(false);
	roles = std::list<Role>();
}

User::User(std::string jsonString)
{
	this->fromJson(jsonString);
}

User::~User()
{

}

void
User::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *userIdKey = "userId";

    if(object.has_key(userIdKey))
    {
        bourne::json value = object[userIdKey];



        jsonToValue(&userId, value, "std::string");


    }

    const char *loginKey = "login";

    if(object.has_key(loginKey))
    {
        bourne::json value = object[loginKey];



        jsonToValue(&login, value, "std::string");


    }

    const char *firstNameKey = "firstName";

    if(object.has_key(firstNameKey))
    {
        bourne::json value = object[firstNameKey];



        jsonToValue(&firstName, value, "std::string");


    }

    const char *lastNameKey = "lastName";

    if(object.has_key(lastNameKey))
    {
        bourne::json value = object[lastNameKey];



        jsonToValue(&lastName, value, "std::string");


    }

    const char *emailKey = "email";

    if(object.has_key(emailKey))
    {
        bourne::json value = object[emailKey];



        jsonToValue(&email, value, "std::string");


    }

    const char *userActiveInStudyKey = "userActiveInStudy";

    if(object.has_key(userActiveInStudyKey))
    {
        bourne::json value = object[userActiveInStudyKey];



        jsonToValue(&userActiveInStudy, value, "bool");


    }

    const char *rolesKey = "roles";

    if(object.has_key(rolesKey))
    {
        bourne::json value = object[rolesKey];


        std::list<Role> roles_list;
        Role element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            roles_list.push_back(element);
        }
        roles = roles_list;


    }


}

bourne::json
User::toJson()
{
    bourne::json object = bourne::json::object();





    object["userId"] = getUserId();






    object["login"] = getLogin();






    object["firstName"] = getFirstName();






    object["lastName"] = getLastName();






    object["email"] = getEmail();






    object["userActiveInStudy"] = isUserActiveInStudy();





    std::list<Role> roles_list = getRoles();
    bourne::json roles_arr = bourne::json::array();

    for(auto& var : roles_list)
    {
        Role obj = var;
        roles_arr.append(obj.toJson());
    }
    object["roles"] = roles_arr;




    return object;

}

std::string
User::getUserId()
{
	return userId;
}

void
User::setUserId(std::string  userId)
{
	this->userId = userId;
}

std::string
User::getLogin()
{
	return login;
}

void
User::setLogin(std::string  login)
{
	this->login = login;
}

std::string
User::getFirstName()
{
	return firstName;
}

void
User::setFirstName(std::string  firstName)
{
	this->firstName = firstName;
}

std::string
User::getLastName()
{
	return lastName;
}

void
User::setLastName(std::string  lastName)
{
	this->lastName = lastName;
}

std::string
User::getEmail()
{
	return email;
}

void
User::setEmail(std::string  email)
{
	this->email = email;
}

bool
User::isUserActiveInStudy()
{
	return userActiveInStudy;
}

void
User::setUserActiveInStudy(bool  userActiveInStudy)
{
	this->userActiveInStudy = userActiveInStudy;
}

std::list<Role>
User::getRoles()
{
	return roles;
}

void
User::setRoles(std::list <Role> roles)
{
	this->roles = roles;
}



