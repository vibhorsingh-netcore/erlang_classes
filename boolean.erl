% exercise 2.3

-module(boolean).
-compile(export_all).

test(true) ->
  true;
test(false) ->
  false;
test(_Other) ->
  {error, invalid_option}.

b_not(true) ->
  false;
b_not(false) ->
  true;
b_not(_Other) ->
  {error, invalid_option}.

b_and(true,true) ->
  true;
b_and(true,false) ->
  false;
b_and(false,true) ->
  false;
b_and(false,false) ->
  false;
b_and(_Other,_Other) ->
  {error, invalid_option}.

b_nand(true,true) ->
  b_not(b_and(true,true));
b_nand(true,false) ->
  b_not(b_and(true,false));
b_nand(false,true) ->
  b_not(b_and(false,true));
b_nand(false,false) ->
  b_not(b_and(false,false));
b_nand(_Other,_Other) ->
  {error, invalid_option}.
