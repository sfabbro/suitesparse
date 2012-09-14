AM_CPPFLAGS = -I$(top_srcdir)/Include \
	@SUITESPARSECONFIG_CFLAGS@ @AMD_CFLAGS@ @CHOLMOD_CFLAGS@

LDADD = $(top_builddir)/Source/lib$(PACKAGE_NAME).la

ext=dat

check_PROGRAMS = \
	umfpack_simple \
	umfpack_di_demo \
	umfpack_dl_demo \
	umfpack_zi_demo \
	umfpack_zl_demo

EXTRA_DIST = \
	umfpack_di_demo.$(ext) \
	umfpack_dl_demo.$(ext) \
	umfpack_zi_demo.$(ext) \
	umfpack_zl_demo.$(ext) \
	umf4.$(ext) \
	umf4hb.$(ext) \
	umf4zhb.$(ext) \
	umfpack_di_demo.sed \
	umfpack_zi_demo.sed \
	umfpack_dl_demo.sed \
	umfpack_zl_demo.sed \
	umfpack_xx_demo.c \
	HB

my_%.$(ext): $*
	echo "------------------------" ; \
	./$*$(EXEEXT) > my_$*.$(ext); \
	diff -Bbe -I"UMFPACK V" $(srcdir)/$*.$(ext) my_$*.$(ext) > /dev/null; \
	if test "x$$?" = "x0"; then \
		echo "Test $$i PASSED."; \
	else \
		echo "** Test $$i FAILED. Diff: "; \
		diff -Nu $(srcdir)/$*.$(ext) my_$*.$(ext); \
		doexit="yes"; \
	fi

TESTS = \
	umfpack_simple \
	my_umfpack_di_demo.$(ext) \
	my_umfpack_dl_demo.$(ext) \
	my_umfpack_zi_demo.$(ext) \
	my_umfpack_zl_demo.$(ext)

umfpack_%_demo.c: umfpack_xx_demo.c umfpack_%_demo.sed
	$(SED) -f umfpack_$*_demo.sed < umfpack_xx_demo.c > umfpack_$*_demo.c


if ENABLE_FORTRAN_TEST
check_PROGRAMS += \
	readhb \
	readhb_size \
	readhb_nozeros \
	umf4 \
	umf4hb \
	umf4hb64 \
	umf4zhb

readhb_SOURCES = readhb.f
readhb_size_SOURCES =  readhb_size.f
readhb_nozeros_SOURCES = readhb_nozeros.f
umf4hb_SOURCES = umf4hb.f umf4_f77wrapper.c
umf4zhb_SOURCES = umf4zhb.f umf4_f77zwrapper.c
umf4hb64_SOURCES = umf4hb64.f umf4_f77wrapper.c umf4_f77zwrapper.c
umf4hb64_CPPFLAGS = $(AM_CPPFLAGS) -DDLONG

check-am: $(check_PROGRAMS) $(TESTS)
	$(MKDIR_P) tmp
	./readhb_nozeros < $(srcdir)/HB/can_24.psa > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/can_24.psa > tmp/Asize || exit 1
	./umf4 || exit 1
	./readhb_nozeros < $(srcdir)/HB/west0067.rua > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/west0067.rua > tmp/Asize || exit 1
	./umf4 || exit 1
	./readhb_nozeros < $(srcdir)/HB/fs_183_6.rua > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/fs_183_6.rua > tmp/Asize || exit 1
	./umf4 || exit 1
	./readhb         < $(srcdir)/HB/fs_183_6.rua > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/fs_183_6.rua > tmp/Asize || exit 1
	./umf4 || exit 1
	./readhb         < $(srcdir)/HB/arc130.rua > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/arc130.rua > tmp/Asize || exit 1
	./umf4 || exit 1
	./readhb_nozeros < $(srcdir)/HB/arc130.rua > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/arc130.rua > tmp/Asize || exit 1
	./umf4 || exit 1
	./readhb_nozeros < $(srcdir)/HB/arc130.rua > tmp/A || exit 1
	./readhb_size    < $(srcdir)/HB/arc130.rua > tmp/Asize || exit 1
	./umf4 a 1e-6 || exit 1
	./umf4hb < $(srcdir)/HB/west0067.rua > my_umf4hb.$(ext) || exit 1
	./umf4zhb < $(srcdir)/HB/qc324.cua > my_umf4zhb.$(ext) || exit 1
	./umf4hb64 < $(srcdir)/HB/west0067.rua > my_umf4hb64.$(ext)  || exit 1
# those diff are very unreliable and non portable across compilers/versions
#	diff -Bbe -Iversion $(srcdir)/umf4hb.$(ext) my_umf4hb.$(ext) || exit 1
#	diff -Bbe -Iversion my_umf4zhb.$(ext) umf4zhb.$(ext)  || exit 1
#	diff -Bbe -Iversion my_umf4hb64.$(ext) umf4hb64.$(ext) || exit 1
endif

MAINTAINERCLEANFILES = Makefile.in
CLEANFILES = my_*.$(ext) tmp/* tmp umfpack_??_demo.* *.umf
