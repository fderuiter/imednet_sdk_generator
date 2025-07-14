

#include "IntervalList.h"

using namespace Tiny;

IntervalList::IntervalList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Interval>();
}

IntervalList::IntervalList(std::string jsonString)
{
	this->fromJson(jsonString);
}

IntervalList::~IntervalList()
{

}

void
IntervalList::fromJson(std::string jsonObj)
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


        std::list<Interval> data_list;
        Interval element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
IntervalList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Interval> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Interval obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
IntervalList::getMetadata()
{
	return metadata;
}

void
IntervalList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
IntervalList::getPagination()
{
	return pagination;
}

void
IntervalList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Interval>
IntervalList::getData()
{
	return data;
}

void
IntervalList::setData(std::list <Interval> data)
{
	this->data = data;
}



