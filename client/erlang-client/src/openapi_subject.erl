-module(openapi_subject).

-export([encode/1]).

-export_type([openapi_subject/0]).

-type openapi_subject() ::
    #{ 'studyKey' => binary(),
       'subjectId' => integer(),
       'subjectOid' => binary(),
       'subjectKey' => binary(),
       'subjectStatus' => binary(),
       'siteId' => integer(),
       'siteName' => binary(),
       'deleted' => boolean(),
       'enrollmentStartDate' => binary(),
       'dateCreated' => binary(),
       'dateModified' => binary(),
       'keywords' => list()
     }.

encode(#{ 'studyKey' := StudyKey,
          'subjectId' := SubjectId,
          'subjectOid' := SubjectOid,
          'subjectKey' := SubjectKey,
          'subjectStatus' := SubjectStatus,
          'siteId' := SiteId,
          'siteName' := SiteName,
          'deleted' := Deleted,
          'enrollmentStartDate' := EnrollmentStartDate,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified,
          'keywords' := Keywords
        }) ->
    #{ 'studyKey' => StudyKey,
       'subjectId' => SubjectId,
       'subjectOid' => SubjectOid,
       'subjectKey' => SubjectKey,
       'subjectStatus' => SubjectStatus,
       'siteId' => SiteId,
       'siteName' => SiteName,
       'deleted' => Deleted,
       'enrollmentStartDate' => EnrollmentStartDate,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified,
       'keywords' => Keywords
     }.
