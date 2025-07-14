-module(openapi_study).

-export([encode/1]).

-export_type([openapi_study/0]).

-type openapi_study() ::
    #{ 'sponsorKey' => binary(),
       'studyKey' => binary(),
       'studyId' => integer(),
       'studyName' => binary(),
       'studyDescription' => binary(),
       'studyType' => binary(),
       'dateCreated' => binary(),
       'dateModified' => binary()
     }.

encode(#{ 'sponsorKey' := SponsorKey,
          'studyKey' := StudyKey,
          'studyId' := StudyId,
          'studyName' := StudyName,
          'studyDescription' := StudyDescription,
          'studyType' := StudyType,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified
        }) ->
    #{ 'sponsorKey' => SponsorKey,
       'studyKey' => StudyKey,
       'studyId' => StudyId,
       'studyName' => StudyName,
       'studyDescription' => StudyDescription,
       'studyType' => StudyType,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified
     }.
