-module(openapi_coding_list).

-include("openapi.hrl").

-export([openapi_coding_list/0]).

-export([openapi_coding_list/1]).

-export_type([openapi_coding_list/0]).

-type openapi_coding_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_coding:openapi_coding()) }
  ].


openapi_coding_list() ->
    openapi_coding_list([]).

openapi_coding_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_coding:openapi_coding()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

