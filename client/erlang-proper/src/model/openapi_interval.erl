-module(openapi_interval).

-include("openapi.hrl").

-export([openapi_interval/0]).

-export([openapi_interval/1]).

-export_type([openapi_interval/0]).

-type openapi_interval() ::
  [ {'studyKey', binary() }
  | {'intervalId', integer() }
  | {'intervalName', binary() }
  | {'intervalDescription', binary() }
  | {'intervalSequence', integer() }
  | {'intervalGroupId', integer() }
  | {'intervalGroupName', binary() }
  | {'timeline', binary() }
  | {'definedUsingInterval', binary() }
  | {'windowCalculationForm', binary() }
  | {'windowCalculationDate', binary() }
  | {'actualDateForm', binary() }
  | {'actualDate', binary() }
  | {'dueDateWillBeIn', integer() }
  | {'negativeSlack', integer() }
  | {'positiveSlack', integer() }
  | {'eproGracePeriod', integer() }
  | {'forms', list(openapi_components_schemas_interval_forms_item:openapi_components_schemas_interval_forms_item()) }
  | {'disabled', boolean() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  ].


openapi_interval() ->
    openapi_interval([]).

openapi_interval(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'intervalId', integer() }
            , {'intervalName', binary() }
            , {'intervalDescription', binary() }
            , {'intervalSequence', integer() }
            , {'intervalGroupId', integer() }
            , {'intervalGroupName', binary() }
            , {'timeline', binary() }
            , {'definedUsingInterval', binary() }
            , {'windowCalculationForm', binary() }
            , {'windowCalculationDate', binary() }
            , {'actualDateForm', binary() }
            , {'actualDate', binary() }
            , {'dueDateWillBeIn', integer() }
            , {'negativeSlack', integer() }
            , {'positiveSlack', integer() }
            , {'eproGracePeriod', integer() }
            , {'forms', list(openapi_components_schemas_interval_forms_item:openapi_components_schemas_interval_forms_item()) }
            , {'disabled', boolean() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

