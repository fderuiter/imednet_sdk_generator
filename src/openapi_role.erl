-module(openapi_role).

-export([encode/1]).

-export_type([openapi_role/0]).

-type openapi_role() ::
    #{ 'dateCreated' => list(),
       'dateModified' => list(),
       'roleId' => binary(),
       'communityId' => integer(),
       'name' => binary(),
       'description' => binary(),
       'level' => integer(),
       'type' => binary(),
       'inactive' => boolean()
     }.

encode(#{ 'dateCreated' := DateCreated,
          'dateModified' := DateModified,
          'roleId' := RoleId,
          'communityId' := CommunityId,
          'name' := Name,
          'description' := Description,
          'level' := Level,
          'type' := Type,
          'inactive' := Inactive
        }) ->
    #{ 'dateCreated' => DateCreated,
       'dateModified' => DateModified,
       'roleId' => RoleId,
       'communityId' => CommunityId,
       'name' => Name,
       'description' => Description,
       'level' => Level,
       'type' => Type,
       'inactive' => Inactive
     }.
