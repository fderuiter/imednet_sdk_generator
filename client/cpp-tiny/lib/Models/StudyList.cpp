

#include "StudyList.h"

using namespace Tiny;

StudyList::StudyList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Study>();
}

StudyList::StudyList(std::string jsonString)
{
	this->fromJson(jsonString);
}

StudyList::~StudyList()
{

}

void
StudyList::fromJson(std::string jsonObj)
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


        std::list<Study> data_list;
        Study element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
StudyList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Study> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Study obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
StudyList::getMetadata()
{
	return metadata;
}

void
StudyList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
StudyList::getPagination()
{
	return pagination;
}

void
StudyList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Study>
StudyList::getData()
{
	return data;
}

void
StudyList::setData(std::list <Study> data)
{
	this->data = data;
}



