-module(openapi_subject_list).

-export([encode/1]).

-export_type([openapi_subject_list/0]).

-type openapi_subject_list() ::
    #{ 'metadata' => openapi_metadata:openapi_metadata(),
       'pagination' => openapi_pagination:openapi_pagination(),
       'data' => list()
     }.

encode(#{ 'metadata' := Metadata,
          'pagination' := Pagination,
          'data' := Data
        }) ->
    #{ 'metadata' => Metadata,
       'pagination' => Pagination,
       'data' => Data
     }.
