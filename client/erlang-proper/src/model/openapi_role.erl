-module(openapi_role).

-include("openapi.hrl").

-export([openapi_role/0]).

-export([openapi_role/1]).

-export_type([openapi_role/0]).

-type openapi_role() ::
  [ {'dateCreated', list(integer()) }
  | {'dateModified', list(integer()) }
  | {'roleId', binary() }
  | {'communityId', integer() }
  | {'name', binary() }
  | {'description', binary() }
  | {'level', integer() }
  | {'type', binary() }
  | {'inactive', boolean() }
  ].


openapi_role() ->
    openapi_role([]).

openapi_role(Fields) ->
  Default = [ {'dateCreated', list(integer()) }
            , {'dateModified', list(integer()) }
            , {'roleId', binary() }
            , {'communityId', integer() }
            , {'name', binary() }
            , {'description', binary() }
            , {'level', integer() }
            , {'type', binary() }
            , {'inactive', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

