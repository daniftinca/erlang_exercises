%%%-------------------------------------------------------------------
%%% @author dan
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2020 18:30
%%%-------------------------------------------------------------------
-module(delete).
-author("dan").

%% API
-export([delete/2]).


delete(_,[]) -> [];
delete(X, [X|Ys])-> Ys;
delete(X, [Y|Ys])-> [Y|delete(X, Ys)].