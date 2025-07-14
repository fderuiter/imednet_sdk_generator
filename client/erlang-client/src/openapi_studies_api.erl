-module(openapi_studies_api).

-export([list_studies/1, list_studies/2]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List studies accessible by API key
%% 
-spec list_studies(ctx:ctx()) -> {ok, openapi_study_list:openapi_study_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_studies(Ctx) ->
    list_studies(Ctx, #{}).

-spec list_studies(ctx:ctx(), maps:map()) -> {ok, openapi_study_list:openapi_study_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_studies(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


