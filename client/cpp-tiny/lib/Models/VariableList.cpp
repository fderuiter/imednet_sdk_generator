

#include "VariableList.h"

using namespace Tiny;

VariableList::VariableList()
{
	metadata = Metadata();
	pagination = Pagination();
	data = std::list<Variable>();
}

VariableList::VariableList(std::string jsonString)
{
	this->fromJson(jsonString);
}

VariableList::~VariableList()
{

}

void
VariableList::fromJson(std::string jsonObj)
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


        std::list<Variable> data_list;
        Variable element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }


}

bourne::json
VariableList::toJson()
{
    bourne::json object = bourne::json::object();






	object["metadata"] = getMetadata().toJson();






	object["pagination"] = getPagination().toJson();




    std::list<Variable> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        Variable obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;




    return object;

}

Metadata
VariableList::getMetadata()
{
	return metadata;
}

void
VariableList::setMetadata(Metadata  metadata)
{
	this->metadata = metadata;
}

Pagination
VariableList::getPagination()
{
	return pagination;
}

void
VariableList::setPagination(Pagination  pagination)
{
	this->pagination = pagination;
}

std::list<Variable>
VariableList::getData()
{
	return data;
}

void
VariableList::setData(std::list <Variable> data)
{
	this->data = data;
}



