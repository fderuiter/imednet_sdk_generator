

#include "RecordList.h"

using namespace Tiny;

RecordList::RecordList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Record>();
}

RecordList::RecordList(std::string jsonString)
{
	this->fromJson(jsonString);
}

RecordList::~RecordList()
{

}

void
RecordList::fromJson(std::string jsonObj)
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


        std::list<Record> data_list;
        Record element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
RecordList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Record> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Record obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
RecordList::getMetadata()
{
	return metadata;
}

void
RecordList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
RecordList::getPagination()
{
	return pagination;
}

void
RecordList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Record>
RecordList::getData()
{
	return data;
}

void
RecordList::setData(std::list <Record> data)
{
	this->data = data;
}



