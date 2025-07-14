-module(openapi_sort).

-include("openapi.hrl").

-export([openapi_sort/0]).

-export([openapi_sort/1]).

-export_type([openapi_sort/0]).

-type openapi_sort() ::
  [ {'property', binary() }
  | {'direction', binary() }
  ].


openapi_sort() ->
    openapi_sort([]).

openapi_sort(Fields) ->
  Default = [ {'property', binary() }
            , {'direction', elements([<<"ASC">>, <<"DESC">>]) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

