-module(openapi_components_schemas_record_create_request_item).

-export([encode/1]).

-export_type([openapi_components_schemas_record_create_request_item/0]).

-type openapi_components_schemas_record_create_request_item() ::
    #{ 'formKey' := binary(),
       'formId' => integer(),
       'siteName' => binary(),
       'siteId' => integer(),
       'subjectKey' => binary(),
       'subjectId' => integer(),
       'subjectOid' => binary(),
       'intervalName' => binary(),
       'intervalId' => integer(),
       'recordId' => integer(),
       'recordOid' => binary(),
       'data' := maps:map()
     }.

encode(#{ 'formKey' := FormKey,
          'formId' := FormId,
          'siteName' := SiteName,
          'siteId' := SiteId,
          'subjectKey' := SubjectKey,
          'subjectId' := SubjectId,
          'subjectOid' := SubjectOid,
          'intervalName' := IntervalName,
          'intervalId' := IntervalId,
          'recordId' := RecordId,
          'recordOid' := RecordOid,
          'data' := Data
        }) ->
    #{ 'formKey' => FormKey,
       'formId' => FormId,
       'siteName' => SiteName,
       'siteId' => SiteId,
       'subjectKey' => SubjectKey,
       'subjectId' => SubjectId,
       'subjectOid' => SubjectOid,
       'intervalName' => IntervalName,
       'intervalId' => IntervalId,
       'recordId' => RecordId,
       'recordOid' => RecordOid,
       'data' => Data
     }.
