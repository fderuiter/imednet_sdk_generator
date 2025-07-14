-module(openapi_api).

-export([ list_visits/1
        ]).

-define(BASE_URL, "/api/v1/edc").

%% @doc List visits (subject visit instances) in a study
%% 
-spec list_visits(binary()) ->
  openapi_utils:response().
list_visits(StudyKey) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/studies/", StudyKey, "/visits"],
  QueryString = [<<"page=">>, Page, <<"&">>, <<"size=">>, Size, <<"&">>, <<"sort=">>, Sort, <<"&">>, <<"filter=">>, Filter, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

