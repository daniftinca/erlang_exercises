%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:26
%%%-------------------------------------------------------------------
-module(reverse).
-author("dan").

%% API
-export([reverse/1]).

reverse([]) -> [];
reverse([X|Xs]) -> reverse(Xs)++ [X].