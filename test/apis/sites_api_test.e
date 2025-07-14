note
    description: "API tests for SITES_API"
    date: "$Date$"
    revision: "$Revision$"


class SITES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_sites
            -- List sites for a study
            --
            -- 
        local
            l_response: SITE_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_sites(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SITES_API
            -- Create an object instance of `SITES_API'.
        once
            create { SITES_API } Result
        end

end
