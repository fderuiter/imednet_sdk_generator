-module(openapi_subject).

-include("openapi.hrl").

-export([openapi_subject/0]).

-export([openapi_subject/1]).

-export_type([openapi_subject/0]).

-type openapi_subject() ::
  [ {'studyKey', binary() }
  | {'subjectId', integer() }
  | {'subjectOid', binary() }
  | {'subjectKey', binary() }
  | {'subjectStatus', binary() }
  | {'siteId', integer() }
  | {'siteName', binary() }
  | {'deleted', boolean() }
  | {'enrollmentStartDate', binary() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  | {'keywords', list(openapi_keyword:openapi_keyword()) }
  ].


openapi_subject() ->
    openapi_subject([]).

openapi_subject(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'subjectId', integer() }
            , {'subjectOid', binary() }
            , {'subjectKey', binary() }
            , {'subjectStatus', binary() }
            , {'siteId', integer() }
            , {'siteName', binary() }
            , {'deleted', boolean() }
            , {'enrollmentStartDate', binary() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            , {'keywords', list(openapi_keyword:openapi_keyword()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

