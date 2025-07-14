-module(openapi_coding).

-include("openapi.hrl").

-export([openapi_coding/0]).

-export([openapi_coding/1]).

-export_type([openapi_coding/0]).

-type openapi_coding() ::
  [ {'studyKey', binary() }
  | {'siteName', binary() }
  | {'siteId', integer() }
  | {'subjectId', integer() }
  | {'subjectKey', binary() }
  | {'formId', integer() }
  | {'formName', binary() }
  | {'formKey', binary() }
  | {'revision', integer() }
  | {'recordId', integer() }
  | {'variable', binary() }
  | {'value', binary() }
  | {'codingId', integer() }
  | {'code', binary() }
  | {'codedBy', binary() }
  | {'reason', binary() }
  | {'dictionaryName', binary() }
  | {'dictionaryVersion', binary() }
  | {'dateCoded', binary() }
  ].


openapi_coding() ->
    openapi_coding([]).

openapi_coding(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'siteName', binary() }
            , {'siteId', integer() }
            , {'subjectId', integer() }
            , {'subjectKey', binary() }
            , {'formId', integer() }
            , {'formName', binary() }
            , {'formKey', binary() }
            , {'revision', integer() }
            , {'recordId', integer() }
            , {'variable', binary() }
            , {'value', binary() }
            , {'codingId', integer() }
            , {'code', binary() }
            , {'codedBy', binary() }
            , {'reason', binary() }
            , {'dictionaryName', binary() }
            , {'dictionaryVersion', binary() }
            , {'dateCoded', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

