.PHONY: compile test typecheck ci

REBAR=./rebar3

compile:
	$(REBAR) fmt && $(REBAR) compile

clean:
	$(REBAR) clean

typecheck:
	$(REBAR) dialyzer
