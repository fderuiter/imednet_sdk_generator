-module(openapi_inline_object_4).

-include("openapi.hrl").

-export([openapi_inline_object_4/0]).

-export([openapi_inline_object_4/1]).

-export_type([openapi_inline_object_4/0]).

-type openapi_inline_object_4() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  ].


openapi_inline_object_4() ->
    openapi_inline_object_4([]).

openapi_inline_object_4(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

