

#include "RecordRevisionList.h"

using namespace Tiny;

RecordRevisionList::RecordRevisionList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<RecordRevision>();
}

RecordRevisionList::RecordRevisionList(std::string jsonString)
{
	this->fromJson(jsonString);
}

RecordRevisionList::~RecordRevisionList()
{

}

void
RecordRevisionList::fromJson(std::string jsonObj)
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


        std::list<RecordRevision> data_list;
        RecordRevision element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
RecordRevisionList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<RecordRevision> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        RecordRevision obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
RecordRevisionList::getMetadata()
{
	return metadata;
}

void
RecordRevisionList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
RecordRevisionList::getPagination()
{
	return pagination;
}

void
RecordRevisionList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<RecordRevision>
RecordRevisionList::getData()
{
	return data;
}

void
RecordRevisionList::setData(std::list <RecordRevision> data)
{
	this->data = data;
}



