-module(openapi_query).

-export([encode/1]).

-export_type([openapi_query/0]).

-type openapi_query() ::
    #{ 'studyKey' => binary(),
       'subjectId' => integer(),
       'subjectOid' => binary(),
       'annotationType' => binary(),
       'annotationId' => integer(),
       'type' => binary(),
       'description' => binary(),
       'recordId' => integer(),
       'variable' => binary(),
       'subjectKey' => binary(),
       'dateCreated' => binary(),
       'dateModified' => binary(),
       'queryComments' => list()
     }.

encode(#{ 'studyKey' := StudyKey,
          'subjectId' := SubjectId,
          'subjectOid' := SubjectOid,
          'annotationType' := AnnotationType,
          'annotationId' := AnnotationId,
          'type' := Type,
          'description' := Description,
          'recordId' := RecordId,
          'variable' := Variable,
          'subjectKey' := SubjectKey,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified,
          'queryComments' := QueryComments
        }) ->
    #{ 'studyKey' => StudyKey,
       'subjectId' => SubjectId,
       'subjectOid' => SubjectOid,
       'annotationType' => AnnotationType,
       'annotationId' => AnnotationId,
       'type' => Type,
       'description' => Description,
       'recordId' => RecordId,
       'variable' => Variable,
       'subjectKey' => SubjectKey,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified,
       'queryComments' => QueryComments
     }.
