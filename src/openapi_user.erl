-module(openapi_user).

-export([encode/1]).

-export_type([openapi_user/0]).

-type openapi_user() ::
    #{ 'userId' => binary(),
       'login' => binary(),
       'firstName' => binary(),
       'lastName' => binary(),
       'email' => binary(),
       'userActiveInStudy' => boolean(),
       'roles' => list()
     }.

encode(#{ 'userId' := UserId,
          'login' := Login,
          'firstName' := FirstName,
          'lastName' := LastName,
          'email' := Email,
          'userActiveInStudy' := UserActiveInStudy,
          'roles' := Roles
        }) ->
    #{ 'userId' => UserId,
       'login' => Login,
       'firstName' => FirstName,
       'lastName' => LastName,
       'email' => Email,
       'userActiveInStudy' => UserActiveInStudy,
       'roles' => Roles
     }.
