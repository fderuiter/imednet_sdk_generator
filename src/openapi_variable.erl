-module(openapi_variable).

-export([encode/1]).

-export_type([openapi_variable/0]).

-type openapi_variable() ::
    #{ 'studyKey' => binary(),
       'variableId' => integer(),
       'variableType' => binary(),
       'variableName' => binary(),
       'sequence' => integer(),
       'revision' => integer(),
       'disabled' => boolean(),
       'dateCreated' => binary(),
       'dateModified' => binary(),
       'formId' => integer(),
       'variableOid' => binary(),
       'deleted' => boolean(),
       'formKey' => binary(),
       'formName' => binary(),
       'label' => binary(),
       'blinded' => boolean()
     }.

encode(#{ 'studyKey' := StudyKey,
          'variableId' := VariableId,
          'variableType' := VariableType,
          'variableName' := VariableName,
          'sequence' := Sequence,
          'revision' := Revision,
          'disabled' := Disabled,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified,
          'formId' := FormId,
          'variableOid' := VariableOid,
          'deleted' := Deleted,
          'formKey' := FormKey,
          'formName' := FormName,
          'label' := Label,
          'blinded' := Blinded
        }) ->
    #{ 'studyKey' => StudyKey,
       'variableId' => VariableId,
       'variableType' => VariableType,
       'variableName' => VariableName,
       'sequence' => Sequence,
       'revision' => Revision,
       'disabled' => Disabled,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified,
       'formId' => FormId,
       'variableOid' => VariableOid,
       'deleted' => Deleted,
       'formKey' => FormKey,
       'formName' => FormName,
       'label' => Label,
       'blinded' => Blinded
     }.
