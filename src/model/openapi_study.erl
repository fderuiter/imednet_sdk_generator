-module(openapi_study).

-include("openapi.hrl").

-export([openapi_study/0]).

-export([openapi_study/1]).

-export_type([openapi_study/0]).

-type openapi_study() ::
  [ {'sponsorKey', binary() }
  | {'studyKey', binary() }
  | {'studyId', integer() }
  | {'studyName', binary() }
  | {'studyDescription', binary() }
  | {'studyType', binary() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  ].


openapi_study() ->
    openapi_study([]).

openapi_study(Fields) ->
  Default = [ {'sponsorKey', binary() }
            , {'studyKey', binary() }
            , {'studyId', integer() }
            , {'studyName', binary() }
            , {'studyDescription', binary() }
            , {'studyType', binary() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

