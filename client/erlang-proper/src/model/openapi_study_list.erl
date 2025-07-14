-module(openapi_study_list).

-include("openapi.hrl").

-export([openapi_study_list/0]).

-export([openapi_study_list/1]).

-export_type([openapi_study_list/0]).

-type openapi_study_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_study:openapi_study()) }
  ].


openapi_study_list() ->
    openapi_study_list([]).

openapi_study_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_study:openapi_study()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

