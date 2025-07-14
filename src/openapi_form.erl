-module(openapi_form).

-export([encode/1]).

-export_type([openapi_form/0]).

-type openapi_form() ::
    #{ 'studyKey' => binary(),
       'formId' => integer(),
       'formKey' => binary(),
       'formName' => binary(),
       'formType' => binary(),
       'revision' => integer(),
       'embeddedLog' => boolean(),
       'enforceOwnership' => boolean(),
       'userAgreement' => boolean(),
       'subjectRecordReport' => boolean(),
       'unscheduledVisit' => boolean(),
       'otherForms' => boolean(),
       'eproForm' => boolean(),
       'allowCopy' => boolean(),
       'disabled' => boolean(),
       'dateCreated' => binary(),
       'dateModified' => binary()
     }.

encode(#{ 'studyKey' := StudyKey,
          'formId' := FormId,
          'formKey' := FormKey,
          'formName' := FormName,
          'formType' := FormType,
          'revision' := Revision,
          'embeddedLog' := EmbeddedLog,
          'enforceOwnership' := EnforceOwnership,
          'userAgreement' := UserAgreement,
          'subjectRecordReport' := SubjectRecordReport,
          'unscheduledVisit' := UnscheduledVisit,
          'otherForms' := OtherForms,
          'eproForm' := EproForm,
          'allowCopy' := AllowCopy,
          'disabled' := Disabled,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified
        }) ->
    #{ 'studyKey' => StudyKey,
       'formId' => FormId,
       'formKey' => FormKey,
       'formName' => FormName,
       'formType' => FormType,
       'revision' => Revision,
       'embeddedLog' => EmbeddedLog,
       'enforceOwnership' => EnforceOwnership,
       'userAgreement' => UserAgreement,
       'subjectRecordReport' => SubjectRecordReport,
       'unscheduledVisit' => UnscheduledVisit,
       'otherForms' => OtherForms,
       'eproForm' => EproForm,
       'allowCopy' => AllowCopy,
       'disabled' => Disabled,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified
     }.
