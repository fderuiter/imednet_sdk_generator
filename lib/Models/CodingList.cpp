

#include "CodingList.h"

using namespace Tiny;

CodingList::CodingList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Coding>();
}

CodingList::CodingList(std::string jsonString)
{
	this->fromJson(jsonString);
}

CodingList::~CodingList()
{

}

void
CodingList::fromJson(std::string jsonObj)
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


        std::list<Coding> data_list;
        Coding element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
CodingList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Coding> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Coding obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
CodingList::getMetadata()
{
	return metadata;
}

void
CodingList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
CodingList::getPagination()
{
	return pagination;
}

void
CodingList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Coding>
CodingList::getData()
{
	return data;
}

void
CodingList::setData(std::list <Coding> data)
{
	this->data = data;
}



