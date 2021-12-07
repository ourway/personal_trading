%%%-------------------------------------------------------------------
%% @doc personal_trading public API
%% @end
%%%-------------------------------------------------------------------

-module(personal_trading_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    personal_trading_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
