all: check

check: 
	shellcheck --shell sh spexup

.PHONY: all check
