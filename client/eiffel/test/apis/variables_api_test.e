note
    description: "API tests for VARIABLES_API"
    date: "$Date$"
    revision: "$Revision$"


class VARIABLES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_variables
            -- List variables (fields) in a study
            --
            -- 
        local
            l_response: VARIABLE_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_variables(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: VARIABLES_API
            -- Create an object instance of `VARIABLES_API'.
        once
            create { VARIABLES_API } Result
        end

end
