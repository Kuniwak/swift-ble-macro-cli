.PHONY: all
all: clean test

Logs:
	mkdir Logs

.PHONY: test
test: test-macOS

.PHONY: test-macOS
test-macOS:
	swift test

.PHONY: clean
clean:
	git clean -fdx
