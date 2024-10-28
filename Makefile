all: test

test: 
	shellcheck --shell sh spexup

release:
	gh release create --draft --notes-file=CHANGELOG.md \
		"v$(grep SPEXUP_VERSION spexup | cut -d '=' -f 2)" \
		spexup

.PHONY: all test release
