-module(openapi_coding).

-export([encode/1]).

-export_type([openapi_coding/0]).

-type openapi_coding() ::
    #{ 'studyKey' => binary(),
       'siteName' => binary(),
       'siteId' => integer(),
       'subjectId' => integer(),
       'subjectKey' => binary(),
       'formId' => integer(),
       'formName' => binary(),
       'formKey' => binary(),
       'revision' => integer(),
       'recordId' => integer(),
       'variable' => binary(),
       'value' => binary(),
       'codingId' => integer(),
       'code' => binary(),
       'codedBy' => binary(),
       'reason' => binary(),
       'dictionaryName' => binary(),
       'dictionaryVersion' => binary(),
       'dateCoded' => binary()
     }.

encode(#{ 'studyKey' := StudyKey,
          'siteName' := SiteName,
          'siteId' := SiteId,
          'subjectId' := SubjectId,
          'subjectKey' := SubjectKey,
          'formId' := FormId,
          'formName' := FormName,
          'formKey' := FormKey,
          'revision' := Revision,
          'recordId' := RecordId,
          'variable' := Variable,
          'value' := Value,
          'codingId' := CodingId,
          'code' := Code,
          'codedBy' := CodedBy,
          'reason' := Reason,
          'dictionaryName' := DictionaryName,
          'dictionaryVersion' := DictionaryVersion,
          'dateCoded' := DateCoded
        }) ->
    #{ 'studyKey' => StudyKey,
       'siteName' => SiteName,
       'siteId' => SiteId,
       'subjectId' => SubjectId,
       'subjectKey' => SubjectKey,
       'formId' => FormId,
       'formName' => FormName,
       'formKey' => FormKey,
       'revision' => Revision,
       'recordId' => RecordId,
       'variable' => Variable,
       'value' => Value,
       'codingId' => CodingId,
       'code' => Code,
       'codedBy' => CodedBy,
       'reason' => Reason,
       'dictionaryName' => DictionaryName,
       'dictionaryVersion' => DictionaryVersion,
       'dateCoded' => DateCoded
     }.
