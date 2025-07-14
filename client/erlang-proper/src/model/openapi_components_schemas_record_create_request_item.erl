-module(openapi_components_schemas_record_create_request_item).

-include("openapi.hrl").

-export([openapi_components_schemas_record_create_request_item/0]).

-export([openapi_components_schemas_record_create_request_item/1]).

-export_type([openapi_components_schemas_record_create_request_item/0]).

-type openapi_components_schemas_record_create_request_item() ::
  [ {'formKey', binary() }
  | {'formId', integer() }
  | {'siteName', binary() }
  | {'siteId', integer() }
  | {'subjectKey', binary() }
  | {'subjectId', integer() }
  | {'subjectOid', binary() }
  | {'intervalName', binary() }
  | {'intervalId', integer() }
  | {'recordId', integer() }
  | {'recordOid', binary() }
  | {'data', map() }
  ].


openapi_components_schemas_record_create_request_item() ->
    openapi_components_schemas_record_create_request_item([]).

openapi_components_schemas_record_create_request_item(Fields) ->
  Default = [ {'formKey', binary() }
            , {'formId', integer() }
            , {'siteName', binary() }
            , {'siteId', integer() }
            , {'subjectKey', binary() }
            , {'subjectId', integer() }
            , {'subjectOid', binary() }
            , {'intervalName', binary() }
            , {'intervalId', integer() }
            , {'recordId', integer() }
            , {'recordOid', binary() }
            , {'data', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

