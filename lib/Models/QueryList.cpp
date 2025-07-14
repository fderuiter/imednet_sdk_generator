

#include "QueryList.h"

using namespace Tiny;

QueryList::QueryList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Query>();
}

QueryList::QueryList(std::string jsonString)
{
	this->fromJson(jsonString);
}

QueryList::~QueryList()
{

}

void
QueryList::fromJson(std::string jsonObj)
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


        std::list<Query> data_list;
        Query element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
QueryList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Query> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Query obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
QueryList::getMetadata()
{
	return metadata;
}

void
QueryList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
QueryList::getPagination()
{
	return pagination;
}

void
QueryList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Query>
QueryList::getData()
{
	return data;
}

void
QueryList::setData(std::list <Query> data)
{
	this->data = data;
}



