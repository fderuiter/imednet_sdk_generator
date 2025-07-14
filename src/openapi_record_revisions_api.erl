-module(openapi_record_revisions_api).

-export([list_record_revisions/2, list_record_revisions/3]).

-define(BASE_URL, <<"/api/v1/edc">>).

%% @doc List record revisions (audit trail entries) in a study
%% 
-spec list_record_revisions(ctx:ctx(), binary()) -> {ok, openapi_record_revision_list:openapi_record_revision_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_record_revisions(Ctx, StudyKey) ->
    list_record_revisions(Ctx, StudyKey, #{}).

-spec list_record_revisions(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_record_revision_list:openapi_record_revision_list(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_record_revisions(Ctx, StudyKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/studies/", StudyKey, "/recordRevisions"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'size', 'sort', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


