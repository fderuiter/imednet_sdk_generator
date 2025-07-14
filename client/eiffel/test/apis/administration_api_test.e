note
    description: "API tests for ADMINISTRATION_API"
    date: "$Date$"
    revision: "$Revision$"


class ADMINISTRATION_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_users
            -- List users and their roles in a study
            --
            -- 
        local
            l_response: USER_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_include_inactive: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_users(l_study_key, l_page, l_size, l_sort, l_include_inactive)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ADMINISTRATION_API
            -- Create an object instance of `ADMINISTRATION_API'.
        once
            create { ADMINISTRATION_API } Result
        end

end
