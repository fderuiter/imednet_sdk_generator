#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Pagination.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Pagination::Pagination()
{
	//__init();
}

Pagination::~Pagination()
{
	//__cleanup();
}

void
Pagination::__init()
{
	//currentPage = int(0);
	//size = int(0);
	//totalPages = int(0);
	//totalElements = int(0);
	//new std::list()std::list> sort;
}

void
Pagination::__cleanup()
{
	//if(currentPage != NULL) {
	//
	//delete currentPage;
	//currentPage = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//if(totalPages != NULL) {
	//
	//delete totalPages;
	//totalPages = NULL;
	//}
	//if(totalElements != NULL) {
	//
	//delete totalElements;
	//totalElements = NULL;
	//}
	//if(sort != NULL) {
	//sort.RemoveAll(true);
	//delete sort;
	//sort = NULL;
	//}
	//
}

void
Pagination::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *currentPageKey = "currentPage";
	node = json_object_get_member(pJsonObject, currentPageKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&currentPage, node, "int", "");
		} else {
			
		}
	}
	const gchar *sizeKey = "size";
	node = json_object_get_member(pJsonObject, sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&size, node, "int", "");
		} else {
			
		}
	}
	const gchar *totalPagesKey = "totalPages";
	node = json_object_get_member(pJsonObject, totalPagesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalPages, node, "int", "");
		} else {
			
		}
	}
	const gchar *totalElementsKey = "totalElements";
	node = json_object_get_member(pJsonObject, totalElementsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&totalElements, node, "int", "");
		} else {
			
		}
	}
	const gchar *sortKey = "sort";
	node = json_object_get_member(pJsonObject, sortKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Sort> new_list;
			Sort inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Sort")) {
					jsonToValue(&inst, temp_json, "Sort", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sort = new_list;
		}
		
	}
}

Pagination::Pagination(char* json)
{
	this->fromJson(json);
}

char*
Pagination::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getCurrentPage();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *currentPageKey = "currentPage";
	json_object_set_member(pJsonObject, currentPageKey, node);
	if (isprimitive("int")) {
		int obj = getSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	if (isprimitive("int")) {
		int obj = getTotalPages();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalPagesKey = "totalPages";
	json_object_set_member(pJsonObject, totalPagesKey, node);
	if (isprimitive("int")) {
		int obj = getTotalElements();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *totalElementsKey = "totalElements";
	json_object_set_member(pJsonObject, totalElementsKey, node);
	if (isprimitive("Sort")) {
		list<Sort> new_list = static_cast<list <Sort> > (getSort());
		node = converttoJson(&new_list, "Sort", "array");
	} else {
		node = json_node_alloc();
		list<Sort> new_list = static_cast<list <Sort> > (getSort());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Sort>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Sort obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sortKey = "sort";
	json_object_set_member(pJsonObject, sortKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


