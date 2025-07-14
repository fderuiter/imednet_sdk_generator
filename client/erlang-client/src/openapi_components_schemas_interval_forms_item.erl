-module(openapi_components_schemas_interval_forms_item).

-export([encode/1]).

-export_type([openapi_components_schemas_interval_forms_item/0]).

-type openapi_components_schemas_interval_forms_item() ::
    #{ 'formId' => integer(),
       'formKey' => binary(),
       'formName' => binary()
     }.

encode(#{ 'formId' := FormId,
          'formKey' := FormKey,
          'formName' := FormName
        }) ->
    #{ 'formId' => FormId,
       'formKey' => FormKey,
       'formName' => FormName
     }.
