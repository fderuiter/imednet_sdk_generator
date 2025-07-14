-module(openapi_interval).

-export([encode/1]).

-export_type([openapi_interval/0]).

-type openapi_interval() ::
    #{ 'studyKey' => binary(),
       'intervalId' => integer(),
       'intervalName' => binary(),
       'intervalDescription' => binary(),
       'intervalSequence' => integer(),
       'intervalGroupId' => integer(),
       'intervalGroupName' => binary(),
       'timeline' => binary(),
       'definedUsingInterval' => binary(),
       'windowCalculationForm' => binary(),
       'windowCalculationDate' => binary(),
       'actualDateForm' => binary(),
       'actualDate' => binary(),
       'dueDateWillBeIn' => integer(),
       'negativeSlack' => integer(),
       'positiveSlack' => integer(),
       'eproGracePeriod' => integer(),
       'forms' => list(),
       'disabled' => boolean(),
       'dateCreated' => binary(),
       'dateModified' => binary()
     }.

encode(#{ 'studyKey' := StudyKey,
          'intervalId' := IntervalId,
          'intervalName' := IntervalName,
          'intervalDescription' := IntervalDescription,
          'intervalSequence' := IntervalSequence,
          'intervalGroupId' := IntervalGroupId,
          'intervalGroupName' := IntervalGroupName,
          'timeline' := Timeline,
          'definedUsingInterval' := DefinedUsingInterval,
          'windowCalculationForm' := WindowCalculationForm,
          'windowCalculationDate' := WindowCalculationDate,
          'actualDateForm' := ActualDateForm,
          'actualDate' := ActualDate,
          'dueDateWillBeIn' := DueDateWillBeIn,
          'negativeSlack' := NegativeSlack,
          'positiveSlack' := PositiveSlack,
          'eproGracePeriod' := EproGracePeriod,
          'forms' := Forms,
          'disabled' := Disabled,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified
        }) ->
    #{ 'studyKey' => StudyKey,
       'intervalId' => IntervalId,
       'intervalName' => IntervalName,
       'intervalDescription' => IntervalDescription,
       'intervalSequence' => IntervalSequence,
       'intervalGroupId' => IntervalGroupId,
       'intervalGroupName' => IntervalGroupName,
       'timeline' => Timeline,
       'definedUsingInterval' => DefinedUsingInterval,
       'windowCalculationForm' => WindowCalculationForm,
       'windowCalculationDate' => WindowCalculationDate,
       'actualDateForm' => ActualDateForm,
       'actualDate' => ActualDate,
       'dueDateWillBeIn' => DueDateWillBeIn,
       'negativeSlack' => NegativeSlack,
       'positiveSlack' => PositiveSlack,
       'eproGracePeriod' => EproGracePeriod,
       'forms' => Forms,
       'disabled' => Disabled,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified
     }.
