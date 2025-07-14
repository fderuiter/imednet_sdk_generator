

#include "Role.h"

using namespace Tiny;

Role::Role()
{
	dateCreated = std::list<int>();
	dateModified = std::list<int>();
	roleId = std::string();
	communityId = int(0);
	name = std::string();
	description = std::string();
	level = int(0);
	type = std::string();
	inactive = bool(false);
}

Role::Role(std::string jsonString)
{
	this->fromJson(jsonString);
}

Role::~Role()
{

}

void
Role::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dateCreatedKey = "dateCreated";

    if(object.has_key(dateCreatedKey))
    {
        bourne::json value = object[dateCreatedKey];


        std::list<int> dateCreated_list;
        int element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "int");


            dateCreated_list.push_back(element);
        }
        dateCreated = dateCreated_list;


    }

    const char *dateModifiedKey = "dateModified";

    if(object.has_key(dateModifiedKey))
    {
        bourne::json value = object[dateModifiedKey];


        std::list<int> dateModified_list;
        int element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "int");


            dateModified_list.push_back(element);
        }
        dateModified = dateModified_list;


    }

    const char *roleIdKey = "roleId";

    if(object.has_key(roleIdKey))
    {
        bourne::json value = object[roleIdKey];



        jsonToValue(&roleId, value, "std::string");


    }

    const char *communityIdKey = "communityId";

    if(object.has_key(communityIdKey))
    {
        bourne::json value = object[communityIdKey];



        jsonToValue(&communityId, value, "int");


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *levelKey = "level";

    if(object.has_key(levelKey))
    {
        bourne::json value = object[levelKey];



        jsonToValue(&level, value, "int");


    }

    const char *typeKey = "type";

    if(object.has_key(typeKey))
    {
        bourne::json value = object[typeKey];



        jsonToValue(&type, value, "std::string");


    }

    const char *inactiveKey = "inactive";

    if(object.has_key(inactiveKey))
    {
        bourne::json value = object[inactiveKey];



        jsonToValue(&inactive, value, "bool");


    }


}

bourne::json
Role::toJson()
{
    bourne::json object = bourne::json::object();




    std::list<int> dateCreated_list = getDateCreated();
    bourne::json dateCreated_arr = bourne::json::array();

    for(auto& var : dateCreated_list)
    {
        dateCreated_arr.append(var);
    }
    object["dateCreated"] = dateCreated_arr;








    std::list<int> dateModified_list = getDateModified();
    bourne::json dateModified_arr = bourne::json::array();

    for(auto& var : dateModified_list)
    {
        dateModified_arr.append(var);
    }
    object["dateModified"] = dateModified_arr;









    object["roleId"] = getRoleId();






    object["communityId"] = getCommunityId();






    object["name"] = getName();






    object["description"] = getDescription();






    object["level"] = getLevel();






    object["type"] = getType();






    object["inactive"] = isInactive();



    return object;

}

std::list<int>
Role::getDateCreated()
{
	return dateCreated;
}

void
Role::setDateCreated(std::list <int> dateCreated)
{
	this->dateCreated = dateCreated;
}

std::list<int>
Role::getDateModified()
{
	return dateModified;
}

void
Role::setDateModified(std::list <int> dateModified)
{
	this->dateModified = dateModified;
}

std::string
Role::getRoleId()
{
	return roleId;
}

void
Role::setRoleId(std::string  roleId)
{
	this->roleId = roleId;
}

int
Role::getCommunityId()
{
	return communityId;
}

void
Role::setCommunityId(int  communityId)
{
	this->communityId = communityId;
}

std::string
Role::getName()
{
	return name;
}

void
Role::setName(std::string  name)
{
	this->name = name;
}

std::string
Role::getDescription()
{
	return description;
}

void
Role::setDescription(std::string  description)
{
	this->description = description;
}

int
Role::getLevel()
{
	return level;
}

void
Role::setLevel(int  level)
{
	this->level = level;
}

std::string
Role::getType()
{
	return type;
}

void
Role::setType(std::string  type)
{
	this->type = type;
}

bool
Role::isInactive()
{
	return inactive;
}

void
Role::setInactive(bool  inactive)
{
	this->inactive = inactive;
}



