-module(openapi_keyword).

-export([encode/1]).

-export_type([openapi_keyword/0]).

-type openapi_keyword() ::
    #{ 'keywordName' => binary(),
       'keywordKey' => binary(),
       'keywordId' => integer(),
       'dateAdded' => binary()
     }.

encode(#{ 'keywordName' := KeywordName,
          'keywordKey' := KeywordKey,
          'keywordId' := KeywordId,
          'dateAdded' := DateAdded
        }) ->
    #{ 'keywordName' => KeywordName,
       'keywordKey' => KeywordKey,
       'keywordId' => KeywordId,
       'dateAdded' => DateAdded
     }.
