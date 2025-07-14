-module(openapi_query_comment).

-include("openapi.hrl").

-export([openapi_query_comment/0]).

-export([openapi_query_comment/1]).

-export_type([openapi_query_comment/0]).

-type openapi_query_comment() ::
  [ {'sequence', integer() }
  | {'annotationStatus', binary() }
  | {'user', binary() }
  | {'comment', binary() }
  | {'closed', boolean() }
  | {'date', binary() }
  ].


openapi_query_comment() ->
    openapi_query_comment([]).

openapi_query_comment(Fields) ->
  Default = [ {'sequence', integer() }
            , {'annotationStatus', binary() }
            , {'user', binary() }
            , {'comment', binary() }
            , {'closed', boolean() }
            , {'date', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

