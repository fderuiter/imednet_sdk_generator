

#include "SiteList.h"

using namespace Tiny;

SiteList::SiteList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Site>();
}

SiteList::SiteList(std::string jsonString)
{
	this->fromJson(jsonString);
}

SiteList::~SiteList()
{

}

void
SiteList::fromJson(std::string jsonObj)
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


        std::list<Site> data_list;
        Site element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
SiteList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Site> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Site obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
SiteList::getMetadata()
{
	return metadata;
}

void
SiteList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
SiteList::getPagination()
{
	return pagination;
}

void
SiteList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Site>
SiteList::getData()
{
	return data;
}

void
SiteList::setData(std::list <Site> data)
{
	this->data = data;
}



