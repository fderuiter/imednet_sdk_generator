-module(openapi_record_job_status).

-export([encode/1]).

-export_type([openapi_record_job_status/0]).

-type openapi_record_job_status() ::
    #{ 'jobId' => binary(),
       'batchId' => binary(),
       'state' => binary()
     }.

encode(#{ 'jobId' := JobId,
          'batchId' := BatchId,
          'state' := State
        }) ->
    #{ 'jobId' => JobId,
       'batchId' => BatchId,
       'state' => State
     }.
