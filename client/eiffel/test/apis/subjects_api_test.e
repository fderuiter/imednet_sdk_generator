note
    description: "API tests for SUBJECTS_API"
    date: "$Date$"
    revision: "$Revision$"


class SUBJECTS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_list_subjects
            -- List subjects in a study
            --
            -- 
        local
            l_response: SUBJECT_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_subjects(l_study_key, l_page, l_size, l_sort, l_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SUBJECTS_API
            -- Create an object instance of `SUBJECTS_API'.
        once
            create { SUBJECTS_API } Result
        end

end
