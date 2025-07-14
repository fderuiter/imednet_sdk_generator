-module(openapi_inline_object_2).

-export([encode/1]).

-export_type([openapi_inline_object_2/0]).

-type openapi_inline_object_2() ::
    #{ 'metadata' => openapi_metadata:openapi_metadata()
     }.

encode(#{ 'metadata' := Metadata
        }) ->
    #{ 'metadata' => Metadata
     }.
