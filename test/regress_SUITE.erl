-module(regress_SUITE).
-compile(export_all).

-include_lib("common_test/include/ct.hrl").
-include("erluna_test.hrl").

all() ->
    [ {exports, Functions} | _ ] = ?MODULE:module_info(),
    [ FName || {FName, _} <- lists:filter(
                               fun ({module_info,_}) -> false;
                                   ({all,_}) -> false;
                                   ({init_per_suite,1}) -> false;
                                   ({end_per_suite,1}) -> false;
                                   ({_,1}) -> true;
                                   ({_,_}) -> false
                               end, Functions)].

test_bug1(_Conf) ->
	{ok, L} = erluna:start(),
	L:eval("function a() return {1,2,3,4} end"),
	{ok, [[{1,1},{2,2},{3,3},{4,4}]]} = L:apply("a", {}),
	L:stop(),
	ok.

