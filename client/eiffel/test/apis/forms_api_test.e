note
    description: "API tests for FORMS_API"
    date: "$Date$"
    revision: "$Revision$"


class FORMS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_forms
            -- List forms in a study
            --
            -- 
        local
            l_response: FORM_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_forms(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: FORMS_API
            -- Create an object instance of `FORMS_API'.
        once
            create { FORMS_API } Result
        end

end
