miner_test
=====

Helium miner testing utilities.

This allows you to start a local chain booted through erlang's common tests.

Usage
-----

* Add this library as a test-only dependency in rebar.config like so:

```
{profiles, [
            {test, [
                    {deps, [{miner_test, {git, "https://github.com/helium/miner-test.git", {branch, "master"}}}]}
                   ]}
           ]}.
```

* Compile your project with rebar test profile:

```
rebar3 as test compile
```
