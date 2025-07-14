-module(openapi_codings_api).

-export([list_codings/2, list_codings/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List coding activities in a study
%% 
-spec list_codings(ctx:ctx(), binary()) -> {ok, openapi_coding_list:openapi_coding_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_codings(Ctx, StudyKey) ->
    list_codings(Ctx, StudyKey, #{}).

-spec list_codings(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_coding_list:openapi_coding_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_codings(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/codings"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


