-module(openapi_inline_object_2).

-include("openapi.hrl").

-export([openapi_inline_object_2/0]).

-export([openapi_inline_object_2/1]).

-export_type([openapi_inline_object_2/0]).

-type openapi_inline_object_2() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  ].


openapi_inline_object_2() ->
    openapi_inline_object_2([]).

openapi_inline_object_2(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

