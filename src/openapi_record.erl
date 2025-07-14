-module(openapi_record).

-export([encode/1]).

-export_type([openapi_record/0]).

-type openapi_record() ::
    #{ 'studyKey' => binary(),
       'intervalId' => integer(),
       'formId' => integer(),
       'formKey' => binary(),
       'siteId' => integer(),
       'recordId' => integer(),
       'recordOid' => binary(),
       'recordType' => binary(),
       'recordStatus' => binary(),
       'deleted' => boolean(),
       'dateCreated' => binary(),
       'dateModified' => binary(),
       'subjectId' => integer(),
       'subjectOid' => binary(),
       'subjectKey' => binary(),
       'visitId' => integer(),
       'parentRecordId' => integer(),
       'keywords' => list(),
       'recordData' => maps:map()
     }.

encode(#{ 'studyKey' := StudyKey,
          'intervalId' := IntervalId,
          'formId' := FormId,
          'formKey' := FormKey,
          'siteId' := SiteId,
          'recordId' := RecordId,
          'recordOid' := RecordOid,
          'recordType' := RecordType,
          'recordStatus' := RecordStatus,
          'deleted' := Deleted,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified,
          'subjectId' := SubjectId,
          'subjectOid' := SubjectOid,
          'subjectKey' := SubjectKey,
          'visitId' := VisitId,
          'parentRecordId' := ParentRecordId,
          'keywords' := Keywords,
          'recordData' := RecordData
        }) ->
    #{ 'studyKey' => StudyKey,
       'intervalId' => IntervalId,
       'formId' => FormId,
       'formKey' => FormKey,
       'siteId' => SiteId,
       'recordId' => RecordId,
       'recordOid' => RecordOid,
       'recordType' => RecordType,
       'recordStatus' => RecordStatus,
       'deleted' => Deleted,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified,
       'subjectId' => SubjectId,
       'subjectOid' => SubjectOid,
       'subjectKey' => SubjectKey,
       'visitId' => VisitId,
       'parentRecordId' => ParentRecordId,
       'keywords' => Keywords,
       'recordData' => RecordData
     }.
