all: build

build:
	@./rebar compile

ct:
	@./rebar ct

clean:
	@./rebar clean
	@find . -name '*.beam' -exec rm -rf '{}' ';'
	@rm -rf logs/ erl_crash.dump

.PHONY: all build ct clean

