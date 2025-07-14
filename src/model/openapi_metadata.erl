-module(openapi_metadata).

-include("openapi.hrl").

-export([openapi_metadata/0]).

-export([openapi_metadata/1]).

-export_type([openapi_metadata/0]).

-type openapi_metadata() ::
  [ {'status', binary() }
  | {'method', binary() }
  | {'path', binary() }
  | {'timestamp', datetime() }
  | {'error', openapi_components_schemas_metadata_error:openapi_components_schemas_metadata_error() }
  ].


openapi_metadata() ->
    openapi_metadata([]).

openapi_metadata(Fields) ->
  Default = [ {'status', binary() }
            , {'method', binary() }
            , {'path', binary() }
            , {'timestamp', datetime() }
            , {'error', openapi_components_schemas_metadata_error:openapi_components_schemas_metadata_error() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

