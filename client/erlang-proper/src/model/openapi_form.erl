-module(openapi_form).

-include("openapi.hrl").

-export([openapi_form/0]).

-export([openapi_form/1]).

-export_type([openapi_form/0]).

-type openapi_form() ::
  [ {'studyKey', binary() }
  | {'formId', integer() }
  | {'formKey', binary() }
  | {'formName', binary() }
  | {'formType', binary() }
  | {'revision', integer() }
  | {'embeddedLog', boolean() }
  | {'enforceOwnership', boolean() }
  | {'userAgreement', boolean() }
  | {'subjectRecordReport', boolean() }
  | {'unscheduledVisit', boolean() }
  | {'otherForms', boolean() }
  | {'eproForm', boolean() }
  | {'allowCopy', boolean() }
  | {'disabled', boolean() }
  | {'dateCreated', binary() }
  | {'dateModified', binary() }
  ].


openapi_form() ->
    openapi_form([]).

openapi_form(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'formId', integer() }
            , {'formKey', binary() }
            , {'formName', binary() }
            , {'formType', binary() }
            , {'revision', integer() }
            , {'embeddedLog', boolean() }
            , {'enforceOwnership', boolean() }
            , {'userAgreement', boolean() }
            , {'subjectRecordReport', boolean() }
            , {'unscheduledVisit', boolean() }
            , {'otherForms', boolean() }
            , {'eproForm', boolean() }
            , {'allowCopy', boolean() }
            , {'disabled', boolean() }
            , {'dateCreated', binary() }
            , {'dateModified', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

