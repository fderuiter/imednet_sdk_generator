-module(openapi_subject_list).

-include("openapi.hrl").

-export([openapi_subject_list/0]).

-export([openapi_subject_list/1]).

-export_type([openapi_subject_list/0]).

-type openapi_subject_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_subject:openapi_subject()) }
  ].


openapi_subject_list() ->
    openapi_subject_list([]).

openapi_subject_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_subject:openapi_subject()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

