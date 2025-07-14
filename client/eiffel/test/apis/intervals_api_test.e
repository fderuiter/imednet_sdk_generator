note
    description: "API tests for INTERVALS_API"
    date: "$Date$"
    revision: "$Revision$"


class INTERVALS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_intervals
            -- List intervals (visit definitions) in a study
            --
            -- 
        local
            l_response: INTERVAL_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_intervals(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: INTERVALS_API
            -- Create an object instance of `INTERVALS_API'.
        once
            create { INTERVALS_API } Result
        end

end
