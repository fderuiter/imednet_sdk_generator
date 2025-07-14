#include "JobsApi.h"

using namespace Tiny;



        Response<
            Job
        >
        JobsApi::
        getJobStatus(
            
            std::string studyKey
            , 
            
            std::string batchId
            
        )
        {
            std::string url = basepath + "/studies/{studyKey}/jobs/{batchId}"; //studyKey batchId 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_studyKey("{");
                s_studyKey.append("studyKey");
                s_studyKey.append("}");

                int pos = url.find(s_studyKey);

                url.erase(pos, s_studyKey.length());
                url.insert(pos, stringify(studyKey));
                std::string s_batchId("{");
                s_batchId.append("batchId");
                s_batchId.append("}");

                int pos = url.find(s_batchId);

                url.erase(pos, s_batchId.length());
                url.insert(pos, stringify(batchId));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Job obj(output_string);


            Response<Job> response(obj, httpCode);
            return response;
        }



