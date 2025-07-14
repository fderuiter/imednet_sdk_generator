-module(openapi_query_comment).

-export([encode/1]).

-export_type([openapi_query_comment/0]).

-type openapi_query_comment() ::
    #{ 'sequence' => integer(),
       'annotationStatus' => binary(),
       'user' => binary(),
       'comment' => binary(),
       'closed' => boolean(),
       'date' => binary()
     }.

encode(#{ 'sequence' := Sequence,
          'annotationStatus' := AnnotationStatus,
          'user' := User,
          'comment' := Comment,
          'closed' := Closed,
          'date' := Date
        }) ->
    #{ 'sequence' => Sequence,
       'annotationStatus' => AnnotationStatus,
       'user' => User,
       'comment' => Comment,
       'closed' => Closed,
       'date' => Date
     }.
