

#include "SubjectList.h"

using namespace Tiny;

SubjectList::SubjectList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Subject>();
}

SubjectList::SubjectList(std::string jsonString)
{
	this->fromJson(jsonString);
}

SubjectList::~SubjectList()
{

}

void
SubjectList::fromJson(std::string jsonObj)
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


        std::list<Subject> data_list;
        Subject element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
SubjectList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Subject> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Subject obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
SubjectList::getMetadata()
{
	return metadata;
}

void
SubjectList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
SubjectList::getPagination()
{
	return pagination;
}

void
SubjectList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Subject>
SubjectList::getData()
{
	return data;
}

void
SubjectList::setData(std::list <Subject> data)
{
	this->data = data;
}



