
MLCOMP ?= mlton

.PHONY: all
all: sha256.exe

.PHONY: test
test: test_sha256.res
	cat test_sha256.res

.PHONY: clean
clean:
	rm -rf MLB *~ .*~ *.exe *.out *.res

%.exe: %.mlb sha256.sml sha256.sig test_sha256.sml
	$(MLCOMP) -output $@ $<

%.out: %.exe Makefile
	./$< > $@

%.res: %.out
	@(diff -aq $< $<.ok > /dev/null 2>&1; \
         if [ $$? -eq 0 ]; then \
             echo "Test $*.exe: OK" > $@ \
         ; else \
             if [ -e $<.ok ]; then \
                echo "Test $*.exe: *** ERR: file $< differs from $<.ok ***" > $@ ; \
                diff -u $< $<.ok >> $@ ; \
                true \
             ; else \
                echo "Test $*.exe: *** ERR: file $<.ok does not exist ***" > $@ \
             ; fi \
         ; fi)
