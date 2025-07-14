-module(openapi_job).

-export([encode/1]).

-export_type([openapi_job/0]).

-type openapi_job() ::
    #{ 'jobId' => binary(),
       'batchId' => binary(),
       'state' => binary(),
       'dateCreated' => binary(),
       'dateStarted' => binary(),
       'dateFinished' => binary()
     }.

encode(#{ 'jobId' := JobId,
          'batchId' := BatchId,
          'state' := State,
          'dateCreated' := DateCreated,
          'dateStarted' := DateStarted,
          'dateFinished' := DateFinished
        }) ->
    #{ 'jobId' => JobId,
       'batchId' => BatchId,
       'state' => State,
       'dateCreated' => DateCreated,
       'dateStarted' => DateStarted,
       'dateFinished' => DateFinished
     }.
