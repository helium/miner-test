.PHONY: compile test typecheck ci

REBAR=./rebar3

compile:
	$(REBAR) fmt && $(REBAR) compile

clean:
	$(REBAR) clean

test: compile
	$(REBAR) as test do xref, eunit, ct && $(REBAR) dialyzer

typecheck:
	$(REBAR) dialyzer
