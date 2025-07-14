-module(openapi_metadata).

-export([encode/1]).

-export_type([openapi_metadata/0]).

-type openapi_metadata() ::
    #{ 'status' => binary(),
       'method' => binary(),
       'path' => binary(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'error' => openapi_components_schemas_metadata_error:openapi_components_schemas_metadata_error()
     }.

encode(#{ 'status' := Status,
          'method' := Method,
          'path' := Path,
          'timestamp' := Timestamp,
          'error' := Error
        }) ->
    #{ 'status' => Status,
       'method' => Method,
       'path' => Path,
       'timestamp' => Timestamp,
       'error' => Error
     }.
