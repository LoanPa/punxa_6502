# src/sims/stm8.src/test/Makefile.  Generated from Makefile.in by configure.

srcdir           = /home/loan/punxa_6502/sdcc/sim/ucsim/src/sims/stm8.src/test

abs_top_builddir = /home/loan/punxa_6502/sdcc/sim/ucsim
abs_top_srcdir   = /home/loan/punxa_6502/sdcc/sim/ucsim


include $(abs_top_srcdir)/src/test-target.mk


# The old *.mk tests here work slightly differently to those for all the
# other simulators so we can't just use the test-target.mk default rules.

PROJECTS	= s0 s1 s2 s3 t1 t2 t3 t4 $(TESTS_OLD)

.PHONY: $(PROJECTS)

all_old:: $(PROJECTS)

$(PROJECTS):
	@$(MAKE) --no-print-directory MAIN=$@ srcdir='$(srcdir)' -f '$(srcdir)'/sdcc.mk

clean_old::
	@for p in $(PROJECTS); do \
		$(MAKE) --no-print-directory MAIN=$$p srcdir='$(srcdir)' -f '$(srcdir)'/sdcc.mk clean ;\
		rm -rf $$p*.hex ;\
		rm -rf $$p*.cdb ;\
	done
