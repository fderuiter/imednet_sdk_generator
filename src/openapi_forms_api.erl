-module(openapi_forms_api).

-export([list_forms/2, list_forms/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List forms in a study
%% 
-spec list_forms(ctx:ctx(), binary()) -> {ok, openapi_form_list:openapi_form_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_forms(Ctx, StudyKey) ->
    list_forms(Ctx, StudyKey, #{}).

-spec list_forms(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_form_list:openapi_form_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_forms(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/forms"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


