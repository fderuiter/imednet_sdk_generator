-module(openapi_job).

-include("openapi.hrl").

-export([openapi_job/0]).

-export([openapi_job/1]).

-export_type([openapi_job/0]).

-type openapi_job() ::
  [ {'jobId', binary() }
  | {'batchId', binary() }
  | {'state', binary() }
  | {'dateCreated', binary() }
  | {'dateStarted', binary() }
  | {'dateFinished', binary() }
  ].


openapi_job() ->
    openapi_job([]).

openapi_job(Fields) ->
  Default = [ {'jobId', binary() }
            , {'batchId', binary() }
            , {'state', binary() }
            , {'dateCreated', binary() }
            , {'dateStarted', binary() }
            , {'dateFinished', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

