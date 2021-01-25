
.PHONY: all
all:
	$(MAKE) -C lib/github.com/diku-dk/sml-sha256 all

.PHONY: test
test:
	$(MAKE) -C lib/github.com/diku-dk/sml-sha256 test

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-sha256 clean
	rm -rf MLB *~ .*~
