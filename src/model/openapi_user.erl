-module(openapi_user).

-include("openapi.hrl").

-export([openapi_user/0]).

-export([openapi_user/1]).

-export_type([openapi_user/0]).

-type openapi_user() ::
  [ {'userId', binary() }
  | {'login', binary() }
  | {'firstName', binary() }
  | {'lastName', binary() }
  | {'email', binary() }
  | {'userActiveInStudy', boolean() }
  | {'roles', list(openapi_role:openapi_role()) }
  ].


openapi_user() ->
    openapi_user([]).

openapi_user(Fields) ->
  Default = [ {'userId', binary() }
            , {'login', binary() }
            , {'firstName', binary() }
            , {'lastName', binary() }
            , {'email', binary() }
            , {'userActiveInStudy', boolean() }
            , {'roles', list(openapi_role:openapi_role()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

