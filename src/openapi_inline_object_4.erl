-module(openapi_inline_object_4).

-export([encode/1]).

-export_type([openapi_inline_object_4/0]).

-type openapi_inline_object_4() ::
    #{ 'metadata' => openapi_metadata:openapi_metadata()
     }.

encode(#{ 'metadata' := Metadata
        }) ->
    #{ 'metadata' => Metadata
     }.
