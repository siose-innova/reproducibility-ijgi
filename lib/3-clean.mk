
#---------------
# CLEAN TARGETS
#---------------

.PHONY: mostlyclean
## Like ‘clean’, but not deleting a few files that normally don’t want to recompile (e.g. sample data, working DB, etc).
mostlyclean:
	rm $(mostly_clean);


.PHONY: distclean
## Delete all files in the 'dist' directory (EVEN THE WORKING DB!!!!)
distclean:
	rm $(distclean)


.PHONY: clean
## Delete all files created by this Makefile.
clean:
	rm $(clean)


.PHONY: maintainer-clean
## Delete almost everything that can be reconstructed with this Makefile. It includes everything deleted by clean, plus more.
maintainer-clean:
	rm $(mantainer_clean)


