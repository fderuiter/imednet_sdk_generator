-module(openapi_administration_api).

-export([list_users/2, list_users/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List users and their roles in a study
%% 
-spec list_users(ctx:ctx(), binary()) -> {ok, openapi_user_list:openapi_user_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_users(Ctx, StudyKey) ->
    list_users(Ctx, StudyKey, #{}).

-spec list_users(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_user_list:openapi_user_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_users(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/users"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'includeInactive'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


