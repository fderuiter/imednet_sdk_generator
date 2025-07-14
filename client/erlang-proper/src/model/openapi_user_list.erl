-module(openapi_user_list).

-include("openapi.hrl").

-export([openapi_user_list/0]).

-export([openapi_user_list/1]).

-export_type([openapi_user_list/0]).

-type openapi_user_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_user:openapi_user()) }
  ].


openapi_user_list() ->
    openapi_user_list([]).

openapi_user_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_user:openapi_user()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

