%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:41
%%%-------------------------------------------------------------------
-module(filter).
-author("dan").

%% API
-export([filter1/2,filter2/2,filter3/2]).

filter1(_, []) ->[];
filter1(F, [X|Xs])->
  case F(X) of
    true -> [X|filter1(F,Xs)];
    false -> filter1(F,Xs)
  end.

filter2(_,[]) -> [];
filter2(F, [X|Xs]) ->
  Result = F(X),
  if
    Result -> [x|filter2(F, Xs)] ;
    true -> filter2(F, Xs)
  end.

filter3(F, Xs) -> [X || X<- Xs, F(Xs)].