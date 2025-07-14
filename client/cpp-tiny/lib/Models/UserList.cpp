

#include "UserList.h"

using namespace Tiny;

UserList::UserList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<User>();
}

UserList::UserList(std::string jsonString)
{
	this->fromJson(jsonString);
}

UserList::~UserList()
{

}

void
UserList::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *metadataKey = "metadata";

    if(object.has_key(metadataKey))
    {
        bourne::json value = object[metadataKey];




        Metadata* obj = &metadata;
		obj->fromJson(value.dump());

    }

    const char *paginationKey = "pagination";

    if(object.has_key(paginationKey))
    {
        bourne::json value = object[paginationKey];




        Pagination* obj = &pagination;
		obj->fromJson(value.dump());

    }

    const char *dataKey = "data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];


        std::list<User> data_list;
        User element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
UserList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<User> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        User obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
UserList::getMetadata()
{
	return metadata;
}

void
UserList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
UserList::getPagination()
{
	return pagination;
}

void
UserList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<User>
UserList::getData()
{
	return data;
}

void
UserList::setData(std::list <User> data)
{
	this->data = data;
}



