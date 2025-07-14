-module(openapi_components_schemas_interval_forms_item).

-include("openapi.hrl").

-export([openapi_components_schemas_interval_forms_item/0]).

-export([openapi_components_schemas_interval_forms_item/1]).

-export_type([openapi_components_schemas_interval_forms_item/0]).

-type openapi_components_schemas_interval_forms_item() ::
  [ {'formId', integer() }
  | {'formKey', binary() }
  | {'formName', binary() }
  ].


openapi_components_schemas_interval_forms_item() ->
    openapi_components_schemas_interval_forms_item([]).

openapi_components_schemas_interval_forms_item(Fields) ->
  Default = [ {'formId', integer() }
            , {'formKey', binary() }
            , {'formName', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

