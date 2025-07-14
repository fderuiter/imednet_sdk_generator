note
    description: "API tests for QUERIES_API"
    date: "$Date$"
    revision: "$Revision$"


class QUERIES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_queries
            -- List data queries in a study
            --
            -- 
        local
            l_response: QUERY_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_queries(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: QUERIES_API
            -- Create an object instance of `QUERIES_API'.
        once
            create { QUERIES_API } Result
        end

end
