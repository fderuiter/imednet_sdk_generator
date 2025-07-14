#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "IntervalsManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


IntervalsManager::IntervalsManager()
{

}

IntervalsManager::~IntervalsManager()
{

}

static gboolean __IntervalsManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __IntervalsManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__IntervalsManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool listIntervalsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(IntervalList, Error, void* )
	= reinterpret_cast<void(*)(IntervalList, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	IntervalList out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("IntervalList")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "IntervalList", "IntervalList");
			json_node_free(pJson);

			if ("IntervalList" == "std::string") {
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

static bool listIntervalsHelper(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(IntervalList, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/studies/{studyKey}/intervals");
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
		NetClient::easycurl(IntervalsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = listIntervalsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (IntervalsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), listIntervalsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __IntervalsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool IntervalsManager::listIntervalsAsync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(IntervalList, Error, void* )
	, void* userData)
{
	return listIntervalsHelper(accessToken,
	studyKey, page, size, sort, filter, 
	handler, userData, true);
}

bool IntervalsManager::listIntervalsSync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(IntervalList, Error, void* )
	, void* userData)
{
	return listIntervalsHelper(accessToken,
	studyKey, page, size, sort, filter, 
	handler, userData, false);
}

