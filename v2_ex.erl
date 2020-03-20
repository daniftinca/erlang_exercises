%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:47
%%%-------------------------------------------------------------------
-module(v2_ex).
-author("dan").

%% API
-export([maxim/1, minim/1]).


maxim([]) -> empty;
maxim([H | T]) -> {ok, maxim(H,T)}.

maxim(X, []) -> X;
maxim(X, [H|T]) when X < H ->maxim(H, T);
maxim(X, [_|T]) -> maxim(X,T).


minim([]) -> empty;
minim([L | T]) -> {ok, minim(L,T)}.

minim(X, [])->X;
minim(X, [L|T]) when X<L -> minim(X,T);
minim(X, [_| T]) -> minim(X,T).
