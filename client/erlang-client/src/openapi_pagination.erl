-module(openapi_pagination).

-export([encode/1]).

-export_type([openapi_pagination/0]).

-type openapi_pagination() ::
    #{ 'currentPage' => integer(),
       'size' => integer(),
       'totalPages' => integer(),
       'totalElements' => integer(),
       'sort' => list()
     }.

encode(#{ 'currentPage' := CurrentPage,
          'size' := Size,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'sort' := Sort
        }) ->
    #{ 'currentPage' => CurrentPage,
       'size' => Size,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'sort' => Sort
     }.
