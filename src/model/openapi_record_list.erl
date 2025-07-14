-module(openapi_record_list).

-include("openapi.hrl").

-export([openapi_record_list/0]).

-export([openapi_record_list/1]).

-export_type([openapi_record_list/0]).

-type openapi_record_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_record:openapi_record()) }
  ].


openapi_record_list() ->
    openapi_record_list([]).

openapi_record_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_record:openapi_record()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

