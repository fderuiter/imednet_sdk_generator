-module(openapi_form_list).

-include("openapi.hrl").

-export([openapi_form_list/0]).

-export([openapi_form_list/1]).

-export_type([openapi_form_list/0]).

-type openapi_form_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_form:openapi_form()) }
  ].


openapi_form_list() ->
    openapi_form_list([]).

openapi_form_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_form:openapi_form()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

