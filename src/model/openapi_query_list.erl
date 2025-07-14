-module(openapi_query_list).

-include("openapi.hrl").

-export([openapi_query_list/0]).

-export([openapi_query_list/1]).

-export_type([openapi_query_list/0]).

-type openapi_query_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_query:openapi_query()) }
  ].


openapi_query_list() ->
    openapi_query_list([]).

openapi_query_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_query:openapi_query()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

