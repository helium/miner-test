-define(ASYNC_DELAY, 100).
-define(ASYNC_RETRIES, 40).
-define(BASE_TMP_DIR, "./_build/test/tmp").
-define(BASE_TMP_DIR_TEMPLATE, "XXXXXXXXXX").

-define(assertAsync(Expr, BoolExpr, ExprRetry, ExprDelay),
        Res = miner_test:wait_until(fun() -> (Expr),(BoolExpr) end, ExprRetry, ExprDelay),
        case Res of
            false ->
                erlang:error({assert,
                              [{module, ?MODULE},
                               {line, ?LINE},
                               {expression, (??BoolExpr)},
                               {expected, true},
                               {value ,Res}
                              ]
                             });
            _ ->
                Res
        end).

