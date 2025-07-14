#include "StudiesApi.h"

using namespace Tiny;



        Response<
            StudyList
        >
        StudiesApi::
        listStudies(
            
            int page
            , 
            
            int size
            , 
            
            std::string sort
            , 
            
            std::string filter
            
        )
        {
            std::string url = basepath + "/studies"; //


            // Headers  | 

            // Query    | page size sort filter 
            addQueryParam("page",page);
            addQueryParam("size",size);
            addQueryParam("sort",sort);
            addQueryParam("filter",filter);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            StudyList obj(output_string);


            Response<StudyList> response(obj, httpCode);
            return response;
        }



