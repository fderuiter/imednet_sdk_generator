

#include "Pagination.h"

using namespace Tiny;

Pagination::Pagination()
{
	currentPage = int(0);
	size = int(0);
	totalPages = int(0);
	totalElements = int(0);
	sort = std::list<Sort>();
}

Pagination::Pagination(std::string jsonString)
{
	this->fromJson(jsonString);
}

Pagination::~Pagination()
{

}

void
Pagination::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *currentPageKey = "currentPage";

    if(object.has_key(currentPageKey))
    {
        bourne::json value = object[currentPageKey];



        jsonToValue(&currentPage, value, "int");


    }

    const char *sizeKey = "size";

    if(object.has_key(sizeKey))
    {
        bourne::json value = object[sizeKey];



        jsonToValue(&size, value, "int");


    }

    const char *totalPagesKey = "totalPages";

    if(object.has_key(totalPagesKey))
    {
        bourne::json value = object[totalPagesKey];



        jsonToValue(&totalPages, value, "int");


    }

    const char *totalElementsKey = "totalElements";

    if(object.has_key(totalElementsKey))
    {
        bourne::json value = object[totalElementsKey];



        jsonToValue(&totalElements, value, "int");


    }

    const char *sortKey = "sort";

    if(object.has_key(sortKey))
    {
        bourne::json value = object[sortKey];


        std::list<Sort> sort_list;
        Sort element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            sort_list.push_back(element);
        }
        sort = sort_list;


    }


}

bourne::json
Pagination::toJson()
{
    bourne::json object = bourne::json::object();





    object["currentPage"] = getCurrentPage();






    object["size"] = getSize();






    object["totalPages"] = getTotalPages();






    object["totalElements"] = getTotalElements();





    std::list<Sort> sort_list = getSort();
    bourne::json sort_arr = bourne::json::array();

    for(auto& var : sort_list)
    {
        Sort obj = var;
        sort_arr.append(obj.toJson());
    }
    object["sort"] = sort_arr;




    return object;

}

int
Pagination::getCurrentPage()
{
	return currentPage;
}

void
Pagination::setCurrentPage(int  currentPage)
{
	this->currentPage = currentPage;
}

int
Pagination::getSize()
{
	return size;
}

void
Pagination::setSize(int  size)
{
	this->size = size;
}

int
Pagination::getTotalPages()
{
	return totalPages;
}

void
Pagination::setTotalPages(int  totalPages)
{
	this->totalPages = totalPages;
}

int
Pagination::getTotalElements()
{
	return totalElements;
}

void
Pagination::setTotalElements(int  totalElements)
{
	this->totalElements = totalElements;
}

std::list<Sort>
Pagination::getSort()
{
	return sort;
}

void
Pagination::setSort(std::list <Sort> sort)
{
	this->sort = sort;
}



