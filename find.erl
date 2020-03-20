%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:28
%%%-------------------------------------------------------------------
-module(find).
-author("dan").

%% API
-export([find/2]).

find(_, []) -> not_found;
find(X, [X|_]) -> {found, X};
find(X,[_|Ys]) -> find(X, Ys).

