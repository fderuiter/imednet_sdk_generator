-module(openapi_interval_list).

-include("openapi.hrl").

-export([openapi_interval_list/0]).

-export([openapi_interval_list/1]).

-export_type([openapi_interval_list/0]).

-type openapi_interval_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_interval:openapi_interval()) }
  ].


openapi_interval_list() ->
    openapi_interval_list([]).

openapi_interval_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_interval:openapi_interval()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

