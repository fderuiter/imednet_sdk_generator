-module(openapi_visit_list).

-include("openapi.hrl").

-export([openapi_visit_list/0]).

-export([openapi_visit_list/1]).

-export_type([openapi_visit_list/0]).

-type openapi_visit_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_visit:openapi_visit()) }
  ].


openapi_visit_list() ->
    openapi_visit_list([]).

openapi_visit_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_visit:openapi_visit()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

