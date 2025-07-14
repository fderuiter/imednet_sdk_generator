-module(openapi_record).

-include("openapi.hrl").

-export([openapi_record/0]).

-export([openapi_record/1]).

-export_type([openapi_record/0]).

-type openapi_record() ::
  [ {'studyKey', binary() }
  | {'intervalId', integer() }
  | {'formId', integer() }
  | {'formKey', binary() }
  | {'siteId', integer() }
  | {'recordId', integer() }
  | {'recordOid', binary() }
  | {'recordType', binary() }
  | {'recordStatus', binary() }
  | {'deleted', boolean() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  | {'subjectId', integer() }
  | {'subjectOid', binary() }
  | {'subjectKey', binary() }
  | {'visitId', integer() }
  | {'parentRecordId', integer() }
  | {'keywords', list(openapi_keyword:openapi_keyword()) }
  | {'recordData', map() }
  ].


openapi_record() ->
    openapi_record([]).

openapi_record(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'intervalId', integer() }
            , {'formId', integer() }
            , {'formKey', binary() }
            , {'siteId', integer() }
            , {'recordId', integer() }
            , {'recordOid', binary() }
            , {'recordType', binary() }
            , {'recordStatus', binary() }
            , {'deleted', boolean() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            , {'subjectId', integer() }
            , {'subjectOid', binary() }
            , {'subjectKey', binary() }
            , {'visitId', integer() }
            , {'parentRecordId', integer() }
            , {'keywords', list(openapi_keyword:openapi_keyword()) }
            , {'recordData', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

