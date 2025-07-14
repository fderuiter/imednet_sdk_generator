-module(openapi_visit).

-include("openapi.hrl").

-export([openapi_visit/0]).

-export([openapi_visit/1]).

-export_type([openapi_visit/0]).

-type openapi_visit() ::
  [ {'studyKey', binary() }
  | {'visitId', integer() }
  | {'intervalId', integer() }
  | {'intervalName', binary() }
  | {'subjectId', integer() }
  | {'subjectKey', binary() }
  | {'startDate', binary() }
  | {'endDate', binary() }
  | {'dueDate', binary() }
  | {'visitDate', binary() }
  | {'visitDateForm', binary() }
  | {'visitDateQuestion', binary() }
  | {'deleted', boolean() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  ].


openapi_visit() ->
    openapi_visit([]).

openapi_visit(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'visitId', integer() }
            , {'intervalId', integer() }
            , {'intervalName', binary() }
            , {'subjectId', integer() }
            , {'subjectKey', binary() }
            , {'startDate', binary() }
            , {'endDate', binary() }
            , {'dueDate', binary() }
            , {'visitDate', binary() }
            , {'visitDateForm', binary() }
            , {'visitDateQuestion', binary() }
            , {'deleted', boolean() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

