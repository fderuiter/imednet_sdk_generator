-module(openapi_pagination).

-include("openapi.hrl").

-export([openapi_pagination/0]).

-export([openapi_pagination/1]).

-export_type([openapi_pagination/0]).

-type openapi_pagination() ::
  [ {'currentPage', integer() }
  | {'size', integer() }
  | {'totalPages', integer() }
  | {'totalElements', integer() }
  | {'sort', list(openapi_sort:openapi_sort()) }
  ].


openapi_pagination() ->
    openapi_pagination([]).

openapi_pagination(Fields) ->
  Default = [ {'currentPage', integer() }
            , {'size', integer() }
            , {'totalPages', integer() }
            , {'totalElements', integer() }
            , {'sort', list(openapi_sort:openapi_sort()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

