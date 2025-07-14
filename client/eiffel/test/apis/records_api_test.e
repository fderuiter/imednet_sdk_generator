note
    description: "API tests for RECORDS_API"
    date: "$Date$"
    revision: "$Revision$"


class RECORDS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_create_records
            -- Add new record or update subject/record data
            --
            -- 
        local
            l_response: RECORD_JOB_STATUS
            l_study_key: STRING_32
            l_components_schemas__record_create_request_item: LIST [COMPONENTS_SCHEMAS_RECORD_CREATE_REQUEST_ITEM]
        do
            -- TODO: Initialize required params.
            -- l_study_key
            -- create {ARRAYED_LIST [COMPONENTS_SCHEMAS_RECORD_CREATE_REQUEST_ITEM]} l_components_schemas__record_create_request_item.make (2)

            -- l_response := api.create_records(l_study_key, l_components_schemas__record_create_request_item)
            assert ("not_implemented", False)
        end

    test_list_records
            -- List records (eCRF instances) in a study
            --
            -- 
        local
            l_response: RECORD_LIST
            l_study_key: STRING_32
            l_page: INTEGER_32
            l_size: INTEGER_32
            l_sort: STRING_32
            l_filter: STRING_32
            l_record_data_filter: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_study_key

            -- l_response := api.list_records(l_study_key, l_page, l_size, l_sort, l_filter, l_record_data_filter)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: RECORDS_API
            -- Create an object instance of `RECORDS_API'.
        once
            create { RECORDS_API } Result
        end

end
