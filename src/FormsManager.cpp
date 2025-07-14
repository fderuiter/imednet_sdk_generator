#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "FormsManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


FormsManager::FormsManager()
{

}

FormsManager::~FormsManager()
{

}

static gboolean __FormsManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __FormsManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__FormsManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool listFormsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(FormList, Error, void* )
	= reinterpret_cast<void(*)(FormList, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	FormList out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("FormList")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "FormList", "FormList");
			json_node_free(pJson);

			if ("FormList" == "std::string") {
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

static bool listFormsHelper(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(FormList, Error, void* )
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

	string url("/studies/{studyKey}/forms");
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
		NetClient::easycurl(FormsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = listFormsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (FormsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), listFormsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FormsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FormsManager::listFormsAsync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(FormList, Error, void* )
	, void* userData)
{
	return listFormsHelper(accessToken,
	studyKey, page, size, sort, filter, 
	handler, userData, true);
}

bool FormsManager::listFormsSync(char * accessToken,
	std::string studyKey, int page, int size, std::string sort, std::string filter, 
	void(* handler)(FormList, Error, void* )
	, void* userData)
{
	return listFormsHelper(accessToken,
	studyKey, page, size, sort, filter, 
	handler, userData, false);
}

