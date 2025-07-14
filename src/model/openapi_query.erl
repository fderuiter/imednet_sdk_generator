-module(openapi_query).

-include("openapi.hrl").

-export([openapi_query/0]).

-export([openapi_query/1]).

-export_type([openapi_query/0]).

-type openapi_query() ::
  [ {'studyKey', binary() }
  | {'subjectId', integer() }
  | {'subjectOid', binary() }
  | {'annotationType', binary() }
  | {'annotationId', integer() }
  | {'type', binary() }
  | {'description', binary() }
  | {'recordId', integer() }
  | {'variable', binary() }
  | {'subjectKey', binary() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  | {'queryComments', list(openapi_query_comment:openapi_query_comment()) }
  ].


openapi_query() ->
    openapi_query([]).

openapi_query(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'subjectId', integer() }
            , {'subjectOid', binary() }
            , {'annotationType', binary() }
            , {'annotationId', integer() }
            , {'type', binary() }
            , {'description', binary() }
            , {'recordId', integer() }
            , {'variable', binary() }
            , {'subjectKey', binary() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            , {'queryComments', list(openapi_query_comment:openapi_query_comment()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

