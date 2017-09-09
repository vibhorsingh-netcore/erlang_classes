% this is my demo erl program

-module(demo).
-export([area/1]).

%-compile(export_all). % will export all functions
-import(math,[sqrt/1]).

area({square,Side}) ->
  Side * Side;
area(_Other) ->
  {error, invalid_given}.
