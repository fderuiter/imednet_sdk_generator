-module(openapi_sort).

-export([encode/1]).

-export_type([openapi_sort/0]).

-type openapi_sort() ::
    #{ 'property' => binary(),
       'direction' => binary()
     }.

encode(#{ 'property' := Property,
          'direction' := Direction
        }) ->
    #{ 'property' => Property,
       'direction' => Direction
     }.
