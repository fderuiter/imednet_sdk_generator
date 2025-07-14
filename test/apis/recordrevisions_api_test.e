note
    description: "API tests for RECORDREVISIONS_API"
    date: "$Date$"
    revision: "$Revision$"


class RECORDREVISIONS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_record_revisions
            -- List record revisions (audit trail entries) in a study
            --
            -- 
        local
            l_response: RECORD_REVISION_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_record_revisions(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: RECORDREVISIONS_API
            -- Create an object instance of `RECORDREVISIONS_API'.
        once
            create { RECORDREVISIONS_API } Result
        end

end
