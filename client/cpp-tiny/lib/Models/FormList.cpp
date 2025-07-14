

#include "FormList.h"

using namespace Tiny;

FormList::FormList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Form>();
}

FormList::FormList(std::string jsonString)
{
	this->fromJson(jsonString);
}

FormList::~FormList()
{

}

void
FormList::fromJson(std::string jsonObj)
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


        std::list<Form> data_list;
        Form element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
FormList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Form> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Form obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
FormList::getMetadata()
{
	return metadata;
}

void
FormList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
FormList::getPagination()
{
	return pagination;
}

void
FormList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Form>
FormList::getData()
{
	return data;
}

void
FormList::setData(std::list <Form> data)
{
	this->data = data;
}



