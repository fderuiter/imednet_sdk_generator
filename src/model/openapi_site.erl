-module(openapi_site).

-include("openapi.hrl").

-export([openapi_site/0]).

-export([openapi_site/1]).

-export_type([openapi_site/0]).

-type openapi_site() ::
  [ {'studyKey', binary() }
  | {'siteId', integer() }
  | {'siteName', binary() }
  | {'siteEnrollmentStatus', binary() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  ].


openapi_site() ->
    openapi_site([]).

openapi_site(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'siteId', integer() }
            , {'siteName', binary() }
            , {'siteEnrollmentStatus', binary() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

