#include "VariablesApi.h"

using namespace Tiny;



        Response<
            VariableList
        >
        VariablesApi::
        listVariables(
            
            std::string studyKey
            , 
            
            int page
            , 
            
            int size
            , 
            
            std::string sort
            , 
            
            std::string filter
            
        )
        {
            std::string url = basepath + "/studies/{studyKey}/variables"; //studyKey 


            // Headers  | 

            // Query    | page size sort filter 
            addQueryParam("page",page);
            addQueryParam("size",size);
            addQueryParam("sort",sort);
            addQueryParam("filter",filter);

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




            VariableList obj(output_string);


            Response<VariableList> response(obj, httpCode);
            return response;
        }



