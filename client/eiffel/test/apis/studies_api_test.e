note
    description: "API tests for STUDIES_API"
    date: "$Date$"
    revision: "$Revision$"


class STUDIES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_studies
            -- List studies accessible by API key
            --
            -- 
        local
            l_response: STUDY_LIST
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.list_studies(l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: STUDIES_API
            -- Create an object instance of `STUDIES_API'.
        once
            create { STUDIES_API } Result
        end

end
