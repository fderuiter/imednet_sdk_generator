-module(openapi_site).

-export([encode/1]).

-export_type([openapi_site/0]).

-type openapi_site() ::
    #{ 'studyKey' => binary(),
       'siteId' => integer(),
       'siteName' => binary(),
       'siteEnrollmentStatus' => binary(),
       'dateCreated' => binary(),
       'dateModified' => binary()
     }.

encode(#{ 'studyKey' := StudyKey,
          'siteId' := SiteId,
          'siteName' := SiteName,
          'siteEnrollmentStatus' := SiteEnrollmentStatus,
          'dateCreated' := DateCreated,
          'dateModified' := DateModified
        }) ->
    #{ 'studyKey' => StudyKey,
       'siteId' => SiteId,
       'siteName' => SiteName,
       'siteEnrollmentStatus' => SiteEnrollmentStatus,
       'dateCreated' => DateCreated,
       'dateModified' => DateModified
     }.
