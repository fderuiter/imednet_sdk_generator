

#include "VisitList.h"

using namespace Tiny;

VisitList::VisitList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Visit>();
}

VisitList::VisitList(std::string jsonString)
{
	this->fromJson(jsonString);
}

VisitList::~VisitList()
{

}

void
VisitList::fromJson(std::string jsonObj)
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


        std::list<Visit> data_list;
        Visit element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
VisitList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Visit> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Visit obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
VisitList::getMetadata()
{
	return metadata;
}

void
VisitList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
VisitList::getPagination()
{
	return pagination;
}

void
VisitList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Visit>
VisitList::getData()
{
	return data;
}

void
VisitList::setData(std::list <Visit> data)
{
	this->data = data;
}



