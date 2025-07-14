-module(openapi_inline_object).

-export([encode/1]).

-export_type([openapi_inline_object/0]).

-type openapi_inline_object() ::
    #{ 'metadata' => openapi_metadata:openapi_metadata()
     }.

encode(#{ 'metadata' := Metadata
        }) ->
    #{ 'metadata' => Metadata
     }.
