note
    description: "API tests for CODINGS_API"
    date: "$Date$"
    revision: "$Revision$"


class CODINGS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_codings
            -- List coding activities in a study
            --
            -- 
        local
            l_response: CODING_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_codings(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CODINGS_API
            -- Create an object instance of `CODINGS_API'.
        once
            create { CODINGS_API } Result
        end

end
