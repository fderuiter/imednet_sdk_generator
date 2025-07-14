#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "RecordsManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


RecordsManager::RecordsManager()
{

}

RecordsManager::~RecordsManager()
{

}

static gboolean __RecordsManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __RecordsManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__RecordsManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool createRecordsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RecordJobStatus, Error, void* )
	= reinterpret_cast<void(*)(RecordJobStatus, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RecordJobStatus out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RecordJobStatus")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RecordJobStatus", "RecordJobStatus");
			json_node_free(pJson);

			if ("RecordJobStatus" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool createRecordsHelper(char * accessToken,
	std::string studyKey, std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem, 
	void(* handler)(RecordJobStatus, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;
	//TODO: Map Container
	if (isprimitive("Components_schemas_RecordCreateRequest_item")) {
		node = converttoJson(&componentsSchemasRecordCreateRequestItem, "Components_schemas_RecordCreateRequest_item", "array");
	} else {
		node = json_node_alloc();
		json_array = json_array_new();
		for (std::list
			<Components_schemas_RecordCreateRequest_item>::iterator bodyIter = componentsSchemasRecordCreateRequestItem.begin(); bodyIter != componentsSchemasRecordCreateRequestItem.end(); ++bodyIter) {
			Components_schemas_RecordCreateRequest_item itemAt = (*bodyIter);
			char *jsonStr =  itemAt.toJson();
			JsonNode *node_temp = json_from_string(jsonStr, NULL);
			g_free(static_cast<gpointer>(jsonStr));
			json_array_add_element(json_array, node_temp);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
	}
	




	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/studies/{studyKey}/records");
	int pos;

	string s_studyKey("{");
	s_studyKey.append("studyKey");
	s_studyKey.append("}");
	pos = url.find(s_studyKey);
	url.erase(pos, s_studyKey.length());
	url.insert(pos, stringify(&studyKey, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(RecordsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = createRecordsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (RecordsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), createRecordsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RecordsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RecordsManager::createRecordsAsync(char * accessToken,
	std::string studyKey, std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem, 
	void(* handler)(RecordJobStatus, Error, void* )
	, void* userData)
{
	return createRecordsHelper(accessToken,
	studyKey, componentsSchemasRecordCreateRequestItem, 
	handler, userData, true);
}

bool RecordsManager::createRecordsSync(char * accessToken,
	std::string studyKey, std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem, 
	void(* handler)(RecordJobStatus, Error, void* )
	, void* userData)
{
	return createRecordsHelper(accessToken,
	studyKey, componentsSchemasRecordCreateRequestItem, 
	handler, userData, false);
}

static bool listRecordsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RecordList, Error, void* )
	= reinterpret_cast<void(*)(RecordList, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RecordList out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RecordList")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RecordList", "RecordList");
			json_node_free(pJson);

			if ("RecordList" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool listRecordsHelper(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, std::string recordDataFilter, 
	void(* handler)(RecordList, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&page, "int");
	queryParams.insert(pair<string, string>("page", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("page");
	}


	itemAtq = stringify(&size, "int");
	queryParams.insert(pair<string, string>("size", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("size");
	}


	itemAtq = stringify(&sort, "std::string");
	queryParams.insert(pair<string, string>("sort", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("sort");
	}


	itemAtq = stringify(&filter, "std::string");
	queryParams.insert(pair<string, string>("filter", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter");
	}


	itemAtq = stringify(&recordDataFilter, "std::string");
	queryParams.insert(pair<string, string>("recordDataFilter", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("recordDataFilter");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/studies/{studyKey}/records");
	int pos;

	string s_studyKey("{");
	s_studyKey.append("studyKey");
	s_studyKey.append("}");
	pos = url.find(s_studyKey);
	url.erase(pos, s_studyKey.length());
	url.insert(pos, stringify(&studyKey, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(RecordsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = listRecordsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (RecordsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), listRecordsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RecordsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RecordsManager::listRecordsAsync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, std::string recordDataFilter, 
	void(* handler)(RecordList, Error, void* )
	, void* userData)
{
	return listRecordsHelper(accessToken,
	studyKey, page, size, sort, filter, recordDataFilter, 
	handler, userData, true);
}

bool RecordsManager::listRecordsSync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, std::string recordDataFilter, 
	void(* handler)(RecordList, Error, void* )
	, void* userData)
{
	return listRecordsHelper(accessToken,
	studyKey, page, size, sort, filter, recordDataFilter, 
	handler, userData, false);
}

