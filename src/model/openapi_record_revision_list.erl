-module(openapi_record_revision_list).

-include("openapi.hrl").

-export([openapi_record_revision_list/0]).

-export([openapi_record_revision_list/1]).

-export_type([openapi_record_revision_list/0]).

-type openapi_record_revision_list() ::
  [ {'metadata', openapi_metadata:openapi_metadata() }
  | {'pagination', openapi_pagination:openapi_pagination() }
  | {'data', list(openapi_record_revision:openapi_record_revision()) }
  ].


openapi_record_revision_list() ->
    openapi_record_revision_list([]).

openapi_record_revision_list(Fields) ->
  Default = [ {'metadata', openapi_metadata:openapi_metadata() }
            , {'pagination', openapi_pagination:openapi_pagination() }
            , {'data', list(openapi_record_revision:openapi_record_revision()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

