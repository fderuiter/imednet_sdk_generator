#include "RecordsApi.h"

using namespace Tiny;



        Response<
            RecordJobStatus
        >
        RecordsApi::
        createRecords(
            
            std::string studyKey
            , 
            std::list<Components_schemas_RecordCreateRequest_item> componentsSchemasRecordCreateRequestItem
            
            
        )
        {
            std::string url = basepath + "/studies/{studyKey}/records"; //studyKey 


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_studyKey("{");
                s_studyKey.append("studyKey");
                s_studyKey.append("}");

                int pos = url.find(s_studyKey);

                url.erase(pos, s_studyKey.length());
                url.insert(pos, stringify(studyKey));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | componentsSchemasRecordCreateRequestItem


            bourne::json tmp_arr = bourne::json::array();
            for(auto& var : componentsSchemasRecordCreateRequestItem)
            {
                auto tmp = var.toJson();
                tmp_arr.append(tmp);

            }
            payload = tmp_arr.dump();


            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            RecordJobStatus obj(output_string);


            Response<RecordJobStatus> response(obj, httpCode);
            return response;
        }

        Response<
            RecordList
        >
        RecordsApi::
        listRecords(
            
            std::string studyKey
            , 
            
            int page
            , 
            
            int size
            , 
            
            std::string sort
            , 
            
            std::string filter
            , 
            
            std::string recordDataFilter
            
        )
        {
            std::string url = basepath + "/studies/{studyKey}/records"; //studyKey 


            // Headers  | 

            // Query    | page size sort filter recordDataFilter 
            addQueryParam("page",page);
            addQueryParam("size",size);
            addQueryParam("sort",sort);
            addQueryParam("filter",filter);
            addQueryParam("recordDataFilter",recordDataFilter);

            // Form     | 



                std::string s_studyKey("{");
                s_studyKey.append("studyKey");
                s_studyKey.append("}");

                int pos = url.find(s_studyKey);

                url.erase(pos, s_studyKey.length());
                url.insert(pos, stringify(studyKey));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            RecordList obj(output_string);


            Response<RecordList> response(obj, httpCode);
            return response;
        }



