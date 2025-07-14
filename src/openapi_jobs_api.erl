-module(openapi_jobs_api).

-export([get_job_status/3, get_job_status/4]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc Retrieve job status by batch ID
%% 
-spec get_job_status(ctx:ctx(), binary(), binary()) -> {ok, openapi_job:openapi_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_status(Ctx, StudyKey, BatchId) ->
    get_job_status(Ctx, StudyKey, BatchId, #{}).

-spec get_job_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_job:openapi_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_status(Ctx, StudyKey, BatchId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/jobs/", BatchId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


