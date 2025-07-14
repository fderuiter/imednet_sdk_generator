-module(openapi_sites_api).

-export([list_sites/2, list_sites/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List sites for a study
%% 
-spec list_sites(ctx:ctx(), binary()) -> {ok, openapi_site_list:openapi_site_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_sites(Ctx, StudyKey) ->
    list_sites(Ctx, StudyKey, #{}).

-spec list_sites(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_site_list:openapi_site_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_sites(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/sites"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


