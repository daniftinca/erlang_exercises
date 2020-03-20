% hello world program
-module(helloworld).
-export([start/0]).
-import('v2_ex',[maxim/1,minim/1]).


start() ->
  io:fwrite("\nHello World!\n").

