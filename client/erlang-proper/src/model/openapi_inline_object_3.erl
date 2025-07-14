-module(openapi_inline_object_3).

-include("openapi.hrl").

-export([openapi_inline_object_3/0]).

-export([openapi_inline_object_3/1]).

-export_type([openapi_inline_object_3/0]).

-type openapi_inline_object_3() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  ].


openapi_inline_object_3() ->
    openapi_inline_object_3([]).

openapi_inline_object_3(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

