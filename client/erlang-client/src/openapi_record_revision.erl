-module(openapi_record_revision).

-export([encode/1]).

-export_type([openapi_record_revision/0]).

-type openapi_record_revision() ::
    #{ 'studyKey' => binary(),
       'recordRevisionId' => integer(),
       'recordId' => integer(),
       'recordOid' => binary(),
       'recordRevision' => integer(),
       'dataRevision' => integer(),
       'recordStatus' => binary(),
       'subjectId' => integer(),
       'subjectOid' => binary(),
       'subjectKey' => binary(),
       'siteId' => integer(),
       'formKey' => binary(),
       'intervalId' => integer(),
       'role' => binary(),
       'user' => binary(),
       'reasonForChange' => binary(),
       'deleted' => boolean(),
       'dateCreated' => binary()
     }.

encode(#{ 'studyKey' := StudyKey,
          'recordRevisionId' := RecordRevisionId,
          'recordId' := RecordId,
          'recordOid' := RecordOid,
          'recordRevision' := RecordRevision,
          'dataRevision' := DataRevision,
          'recordStatus' := RecordStatus,
          'subjectId' := SubjectId,
          'subjectOid' := SubjectOid,
          'subjectKey' := SubjectKey,
          'siteId' := SiteId,
          'formKey' := FormKey,
          'intervalId' := IntervalId,
          'role' := Role,
          'user' := User,
          'reasonForChange' := ReasonForChange,
          'deleted' := Deleted,
          'dateCreated' := DateCreated
        }) ->
    #{ 'studyKey' => StudyKey,
       'recordRevisionId' => RecordRevisionId,
       'recordId' => RecordId,
       'recordOid' => RecordOid,
       'recordRevision' => RecordRevision,
       'dataRevision' => DataRevision,
       'recordStatus' => RecordStatus,
       'subjectId' => SubjectId,
       'subjectOid' => SubjectOid,
       'subjectKey' => SubjectKey,
       'siteId' => SiteId,
       'formKey' => FormKey,
       'intervalId' => IntervalId,
       'role' => Role,
       'user' => User,
       'reasonForChange' => ReasonForChange,
       'deleted' => Deleted,
       'dateCreated' => DateCreated
     }.
