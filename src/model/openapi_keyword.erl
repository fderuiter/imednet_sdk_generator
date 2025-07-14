-module(openapi_keyword).

-include("openapi.hrl").

-export([openapi_keyword/0]).

-export([openapi_keyword/1]).

-export_type([openapi_keyword/0]).

-type openapi_keyword() ::
  [ {'keywordName', binary() }
  | {'keywordKey', binary() }
  | {'keywordId', integer() }
  | {'dateAdded', binary() }
  ].


openapi_keyword() ->
    openapi_keyword([]).

openapi_keyword(Fields) ->
  Default = [ {'keywordName', binary() }
            , {'keywordKey', binary() }
            , {'keywordId', integer() }
            , {'dateAdded', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

