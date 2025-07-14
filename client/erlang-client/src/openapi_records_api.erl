-module(openapi_records_api).

-export([create_records/3, create_records/4,
         list_records/2, list_records/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc Add new record or update subject/record data
%% 
-spec create_records(ctx:ctx(), binary(), list()) -> {ok, openapi_record_job_status:openapi_record_job_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_records(Ctx, StudyKey, OpenapiComponentsSchemasRecordCreateRequestItemArray) ->
    create_records(Ctx, StudyKey, OpenapiComponentsSchemasRecordCreateRequestItemArray, #{}).

-spec create_records(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_record_job_status:openapi_record_job_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_records(Ctx, StudyKey, OpenapiComponentsSchemasRecordCreateRequestItemArray, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/studies/", StudyKey, "/records"],
    QS = [],
    Headers = [],
    Body1 = OpenapiComponentsSchemasRecordCreateRequestItemArray,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List records (eCRF instances) in a study
%% 
-spec list_records(ctx:ctx(), binary()) -> {ok, openapi_record_list:openapi_record_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_records(Ctx, StudyKey) ->
    list_records(Ctx, StudyKey, #{}).

-spec list_records(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_record_list:openapi_record_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_records(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/records"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter', 'recordDataFilter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


