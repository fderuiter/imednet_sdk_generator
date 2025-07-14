-module(openapi_variable).

-include("openapi.hrl").

-export([openapi_variable/0]).

-export([openapi_variable/1]).

-export_type([openapi_variable/0]).

-type openapi_variable() ::
  [ {'studyKey', binary() }
  | {'variableId', integer() }
  | {'variableType', binary() }
  | {'variableName', binary() }
  | {'sequence', integer() }
  | {'revision', integer() }
  | {'disabled', boolean() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  | {'formId', integer() }
  | {'variableOid', binary() }
  | {'deleted', boolean() }
  | {'formKey', binary() }
  | {'formName', binary() }
  | {'label', binary() }
  | {'blinded', boolean() }
  ].


openapi_variable() ->
    openapi_variable([]).

openapi_variable(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'variableId', integer() }
            , {'variableType', elements([<<"TEXT">>, <<"TEXTAREA">>, <<"RADIO">>, <<"CHECKBOX">>, <<"DROPDOWN">>, <<"DATE">>, <<"NUMBER">>]) }
            , {'variableName', binary() }
            , {'sequence', integer() }
            , {'revision', integer() }
            , {'disabled', boolean() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            , {'formId', integer() }
            , {'variableOid', binary() }
            , {'deleted', boolean() }
            , {'formKey', binary() }
            , {'formName', binary() }
            , {'label', binary() }
            , {'blinded', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

