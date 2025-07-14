note
    description: "API tests for JOBS_API"
    date: "$Date$"
    revision: "$Revision$"


class JOBS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_job_status
            -- Retrieve job status by batch ID
            --
            -- 
        local
            l_response: JOB
            l_study_key: STRING_32
            l_batch_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key
            -- l_batch_id

            -- l_response := api.job_status(l_study_key, l_batch_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: JOBS_API
            -- Create an object instance of `JOBS_API'.
        once
            create { JOBS_API } Result
        end

end
