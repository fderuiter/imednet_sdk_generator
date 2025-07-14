note
    description: "API tests for VISITS_API"
    date: "$Date$"
    revision: "$Revision$"


class VISITS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_visits
            -- List visits (subject visit instances) in a study
            --
            -- 
        local
            l_response: VISIT_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_visits(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: VISITS_API
            -- Create an object instance of `VISITS_API'.
        once
            create { VISITS_API } Result
        end

end
