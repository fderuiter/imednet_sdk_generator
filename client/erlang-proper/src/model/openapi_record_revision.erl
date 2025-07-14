-module(openapi_record_revision).

-include("openapi.hrl").

-export([openapi_record_revision/0]).

-export([openapi_record_revision/1]).

-export_type([openapi_record_revision/0]).

-type openapi_record_revision() ::
  [ {'studyKey', binary() }
  | {'recordRevisionId', integer() }
  | {'recordId', integer() }
  | {'recordOid', binary() }
  | {'recordRevision', integer() }
  | {'dataRevision', integer() }
  | {'recordStatus', binary() }
  | {'subjectId', integer() }
  | {'subjectOid', binary() }
  | {'subjectKey', binary() }
  | {'siteId', integer() }
  | {'formKey', binary() }
  | {'intervalId', integer() }
  | {'role', binary() }
  | {'user', binary() }
  | {'reasonForChange', binary() }
  | {'deleted', boolean() }
  | {'dateCreated', binary() }
  ].


openapi_record_revision() ->
    openapi_record_revision([]).

openapi_record_revision(Fields) ->
  Default = [ {'studyKey', binary() }
            , {'recordRevisionId', integer() }
            , {'recordId', integer() }
            , {'recordOid', binary() }
            , {'recordRevision', integer() }
            , {'dataRevision', integer() }
            , {'recordStatus', binary() }
            , {'subjectId', integer() }
            , {'subjectOid', binary() }
            , {'subjectKey', binary() }
            , {'siteId', integer() }
            , {'formKey', binary() }
            , {'intervalId', integer() }
            , {'role', binary() }
            , {'user', binary() }
            , {'reasonForChange', binary() }
            , {'deleted', boolean() }
            , {'dateCreated', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

