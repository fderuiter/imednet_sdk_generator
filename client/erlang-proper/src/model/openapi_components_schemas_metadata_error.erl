-module(openapi_components_schemas_metadata_error).

-include("openapi.hrl").

-export([openapi_components_schemas_metadata_error/0]).

-export([openapi_components_schemas_metadata_error/1]).

-export_type([openapi_components_schemas_metadata_error/0]).

-type openapi_components_schemas_metadata_error() ::
  [ {'message', binary() }
  ].


openapi_components_schemas_metadata_error() ->
    openapi_components_schemas_metadata_error([]).

openapi_components_schemas_metadata_error(Fields) ->
  Default = [ {'message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

