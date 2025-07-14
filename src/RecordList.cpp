#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RecordList.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RecordList::RecordList()
{
	//__init();
}

RecordList::~RecordList()
{
	//__cleanup();
}

void
RecordList::__init()
{
	//metadata = new Metadata();
	//pagination = new Pagination();
	//new std::list()std::list> data;
}

void
RecordList::__cleanup()
{
	//if(metadata != NULL) {
	//
	//delete metadata;
	//metadata = NULL;
	//}
	//if(pagination != NULL) {
	//
	//delete pagination;
	//pagination = NULL;
	//}
	//if(data != NULL) {
	//data.RemoveAll(true);
	//delete data;
	//data = NULL;
	//}
	//
}

void
RecordList::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *metadataKey = "metadata";
	node = json_object_get_member(pJsonObject, metadataKey);
	if (node !=NULL) {
	

		if (isprimitive("Metadata")) {
			jsonToValue(&metadata, node, "Metadata", "Metadata");
		} else {
			
			Metadata* obj = static_cast<Metadata*> (&metadata);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *paginationKey = "pagination";
	node = json_object_get_member(pJsonObject, paginationKey);
	if (node !=NULL) {
	

		if (isprimitive("Pagination")) {
			jsonToValue(&pagination, node, "Pagination", "Pagination");
		} else {
			
			Pagination* obj = static_cast<Pagination*> (&pagination);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Record> new_list;
			Record inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Record")) {
					jsonToValue(&inst, temp_json, "Record", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			data = new_list;
		}
		
	}
}

RecordList::RecordList(char* json)
{
	this->fromJson(json);
}

char*
RecordList::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Metadata")) {
		Metadata obj = getMetadata();
		node = converttoJson(&obj, "Metadata", "");
	}
	else {
		
		Metadata obj = static_cast<Metadata> (getMetadata());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *metadataKey = "metadata";
	json_object_set_member(pJsonObject, metadataKey, node);
	if (isprimitive("Pagination")) {
		Pagination obj = getPagination();
		node = converttoJson(&obj, "Pagination", "");
	}
	else {
		
		Pagination obj = static_cast<Pagination> (getPagination());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *paginationKey = "pagination";
	json_object_set_member(pJsonObject, paginationKey, node);
	if (isprimitive("Record")) {
		list<Record> new_list = static_cast<list <Record> > (getData());
		node = converttoJson(&new_list, "Record", "array");
	} else {
		node = json_node_alloc();
		list<Record> new_list = static_cast<list <Record> > (getData());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Record>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Record obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


