-module(openapi_inline_object_5).

-include("openapi.hrl").

-export([openapi_inline_object_5/0]).

-export([openapi_inline_object_5/1]).

-export_type([openapi_inline_object_5/0]).

-type openapi_inline_object_5() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  ].


openapi_inline_object_5() ->
    openapi_inline_object_5([]).

openapi_inline_object_5(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

