%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:32
%%%-------------------------------------------------------------------
-module(flatten).
-author("dan").

%% API
-export([flatten/1]).

flatten([])->[];
flatten([Xs|Ys])-> Xs++ flatten(Ys).