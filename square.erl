%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:34
%%%-------------------------------------------------------------------
-module(square).
-author("dan").

%% API
-export([square1/1, square2/1,square3/1]).

square1([]) ->[];
square1([X|Xs])->[X*X | square1(Xs)].

square2(Xs) -> [X*X || X <- Xs].

square3(Xs) -> lists:map(fun(X) -> X*X end, Xs).