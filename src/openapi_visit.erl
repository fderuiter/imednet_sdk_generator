-module(openapi_visit).

-export([encode/1]).

-export_type([openapi_visit/0]).

-type openapi_visit() ::
    #{ 'studyKey' => binary(),
       'visitId' => integer(),
       'intervalId' => integer(),
       'intervalName' => binary(),
       'subjectId' => integer(),
       'subjectKey' => binary(),
       'startDate' => binary(),
       'endDate' => binary(),
       'dueDate' => binary(),
       'visitDate' => binary(),
       'visitDateForm' => binary(),
       'visitDateQuestion' => binary(),
       'deleted' => boolean(),
       'dateCreated' => binary(),
       'dateModified' => binary()
     }.

encode(#{ 'studyKey' := StudyKey,
          'visitId' := VisitId,
          'intervalId' := IntervalId,
          'intervalName' := IntervalName,
          'subjectId' := SubjectId,
          'subjectKey' := SubjectKey,
          'startDate' := StartDate,
          'endDate' := EndDate,
          'dueDate' := DueDate,
          'visitDate' := VisitDate,
          'visitDateForm' := VisitDateForm,
          'visitDateQuestion' := VisitDateQuestion,
          'deleted' := Deleted,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified
        }) ->
    #{ 'studyKey' => StudyKey,
       'visitId' => VisitId,
       'intervalId' => IntervalId,
       'intervalName' => IntervalName,
       'subjectId' => SubjectId,
       'subjectKey' => SubjectKey,
       'startDate' => StartDate,
       'endDate' => EndDate,
       'dueDate' => DueDate,
       'visitDate' => VisitDate,
       'visitDateForm' => VisitDateForm,
       'visitDateQuestion' => VisitDateQuestion,
       'deleted' => Deleted,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified
     }.
