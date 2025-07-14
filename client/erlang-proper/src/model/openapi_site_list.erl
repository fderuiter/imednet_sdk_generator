-module(openapi_site_list).

-include("openapi.hrl").

-export([openapi_site_list/0]).

-export([openapi_site_list/1]).

-export_type([openapi_site_list/0]).

-type openapi_site_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_site:openapi_site()) }
  ].


openapi_site_list() ->
    openapi_site_list([]).

openapi_site_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_site:openapi_site()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

