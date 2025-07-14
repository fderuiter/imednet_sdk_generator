-module(openapi_record_job_status).

-include("openapi.hrl").

-export([openapi_record_job_status/0]).

-export([openapi_record_job_status/1]).

-export_type([openapi_record_job_status/0]).

-type openapi_record_job_status() ::
  [ {'jobId', binary() }
  | {'batchId', binary() }
  | {'state', binary() }
  ].


openapi_record_job_status() ->
    openapi_record_job_status([]).

openapi_record_job_status(Fields) ->
  Default = [ {'jobId', binary() }
            , {'batchId', binary() }
            , {'state', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

