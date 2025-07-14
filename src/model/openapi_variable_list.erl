-module(openapi_variable_list).

-include("openapi.hrl").

-export([openapi_variable_list/0]).

-export([openapi_variable_list/1]).

-export_type([openapi_variable_list/0]).

-type openapi_variable_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_variable:openapi_variable()) }
  ].


openapi_variable_list() ->
    openapi_variable_list([]).

openapi_variable_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_variable:openapi_variable()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

