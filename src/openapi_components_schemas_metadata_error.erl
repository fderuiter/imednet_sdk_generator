-module(openapi_components_schemas_metadata_error).

-export([encode/1]).

-export_type([openapi_components_schemas_metadata_error/0]).

-type openapi_components_schemas_metadata_error() ::
    #{ 'message' => binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
