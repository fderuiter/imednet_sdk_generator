-module(openapi_intervals_api).

-export([list_intervals/2, list_intervals/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List intervals (visit definitions) in a study
%% 
-spec list_intervals(ctx:ctx(), binary()) -> {ok, openapi_interval_list:openapi_interval_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_intervals(Ctx, StudyKey) ->
    list_intervals(Ctx, StudyKey, #{}).

-spec list_intervals(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_interval_list:openapi_interval_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_intervals(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/intervals"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


