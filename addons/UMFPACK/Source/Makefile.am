AM_CPPFLAGS = -I$(top_srcdir)/Include \
	@SUITESPARSECONFIG_CFLAGS@ @AMD_CFLAGS@ @CHOLMOD_CFLAGS@

noinst_HEADERS = \
	cholmod_blas.h \
	umf_analyze.h \
	umf_apply_order.h \
	umf_assemble.h \
	umf_blas3_update.h \
	umf_build_tuples.h \
	umf_cholmod.h \
	umf_colamd.h \
	umf_config.h \
	umf_create_element.h \
	umf_dump.h \
	umf_extend_front.h \
	umf_free.h \
	umf_fsize.h \
	umf_garbage_collection.h \
	umf_get_memory.h \
	umf_grow_front.h \
	umf_init_front.h \
	umf_internal.h \
	umf_is_permutation.h \
	umf_kernel.h \
	umf_kernel_init.h \
	umf_kernel_wrapup.h \
	umf_local_search.h \
	umf_lsolve.h \
	umf_ltsolve.h \
	umf_malloc.h \
	umf_mem_alloc_element.h \
	umf_mem_alloc_head_block.h \
	umf_mem_alloc_tail_block.h \
	umf_mem_free_tail_block.h \
	umf_mem_init_memoryspace.h \
	umf_realloc.h \
	umf_report_perm.h \
	umf_report_vector.h \
	umf_row_search.h \
	umf_scale_column.h \
	umf_scale.h \
	umf_set_stats.h \
	umf_singletons.h \
	umf_solve.h \
	umf_start_front.h \
	umf_store_lu.h \
	umf_symbolic_usage.h \
	umf_transpose.h \
	umf_triplet.h \
	umf_tuple_lengths.h \
	umf_usolve.h \
	umf_utsolve.h \
	umf_valid_numeric.h \
	umf_valid_symbolic.h \
	umf_version.h

# non-user-callable umf_*.[ch] files:
UMFCH = umf_assemble umf_blas3_update umf_build_tuples umf_create_element \
	umf_dump umf_extend_front umf_garbage_collection umf_get_memory \
	umf_init_front umf_kernel umf_kernel_init umf_kernel_wrapup \
	umf_local_search umf_lsolve umf_ltsolve umf_mem_alloc_element \
	umf_mem_alloc_head_block umf_mem_alloc_tail_block \
	umf_mem_free_tail_block umf_mem_init_memoryspace \
	umf_report_vector umf_row_search umf_scale_column \
	umf_set_stats umf_solve umf_symbolic_usage umf_transpose \
	umf_tuple_lengths umf_usolve umf_utsolve umf_valid_numeric \
	umf_valid_symbolic umf_grow_front umf_start_front \
	umf_store_lu umf_scale

# non-user-callable umf_*.[ch] files, int/UF_long versions only (no real/complex):
UMFINT = umf_analyze umf_apply_order umf_colamd umf_cholmod umf_free umf_fsize \
	umf_is_permutation umf_malloc umf_realloc umf_report_perm \
	umf_singletons

# non-user-callable, created from umf_ltsolve.c, umf_utsolve.c,
# umf_triplet.c, and umf_assemble.c , with int/UF_long and real/complex versions:
UMF_CREATED = umf_lhsolve umf_uhsolve umf_triplet_map_nox \
	umf_triplet_nomap_x umf_triplet_nomap_nox umf_triplet_map_x \
	umf_assemble_fixq umf_store_lu_drop

# non-user-callable, int/UF_long and real/complex versions:
UMF = $(UMF_CREATED) $(UMFCH)

# user-callable umfpack_*.[ch] files (int/UF_long and real/complex):
UMFPACK = umfpack_col_to_triplet umfpack_defaults umfpack_free_numeric \
	umfpack_free_symbolic umfpack_get_numeric umfpack_get_lunz \
	umfpack_get_symbolic umfpack_get_determinant umfpack_numeric \
	umfpack_qsymbolic umfpack_report_control umfpack_report_info \
	umfpack_report_matrix umfpack_report_numeric umfpack_report_perm \
	umfpack_report_status umfpack_report_symbolic umfpack_report_triplet \
	umfpack_report_vector umfpack_solve umfpack_symbolic \
	umfpack_transpose umfpack_triplet_to_col umfpack_scale \
	umfpack_load_numeric umfpack_save_numeric \
	umfpack_load_symbolic umfpack_save_symbolic

# user-callable, created from umfpack_solve.c (umfpack_wsolve.h exists, though):
# with int/UF_long and real/complex versions:
UMFPACKW = umfpack_wsolve

USER = $(UMFPACKW) $(UMFPACK)

# user-callable, only one version for int/UF_long, real/complex, *.[ch] files:
GENERIC = umfpack_timer umfpack_tictoc umfpack_global


#-------------------------------------------------------------------------------
# object files for each version
#-------------------------------------------------------------------------------

DI = $(addsuffix .lo, $(subst umf_,umf_di_,$(UMF)) $(subst umfpack_,umfpack_di_,$(USER)))
DL = $(addsuffix .lo, $(subst umf_,umf_dl_,$(UMF)) $(subst umfpack_,umfpack_dl_,$(USER)))
ZI = $(addsuffix .lo, $(subst umf_,umf_zi_,$(UMF)) $(subst umfpack_,umfpack_zi_,$(USER)))
ZL = $(addsuffix .lo, $(subst umf_,umf_zl_,$(UMF)) $(subst umfpack_,umfpack_zl_,$(USER)))
II = $(addsuffix .lo, $(subst umf_,umf_i_,$(UMFINT)))
LL = $(addsuffix .lo, $(subst umf_,umf_l_,$(UMFINT)))
GN = $(addsuffix .lo, $(subst umfpack_,umfpack_gn_,$(GENERIC)))

#-------------------------------------------------------------------------------
# compile each int and UF_long routine (with no real/complex version)
#-------------------------------------------------------------------------------

umf_i_%.lo: umf_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -c $< -o $@

umf_l_%.lo: umf_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -c $< -o $@

#-------------------------------------------------------------------------------
# compile each routine in the DI version
#-------------------------------------------------------------------------------

umf_di_%.lo: umf_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -c $< -o $@

umf_di_%hsolve.lo: umf_%tsolve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DCONJUGATE_SOLVE -c $< -o $@

umf_di_triplet_map_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DDO_MAP -DDO_VALUES -c $< -o $@

umf_di_triplet_map_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DDO_MAP -c $< -o $@

umf_di_triplet_nomap_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DDO_VALUES -c $< -o $@

umf_di_triplet_nomap_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -c $< -o $@

umf_di_assemble_fixq.lo: umf_assemble.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DFIXQ -c $< -o $@

umf_di_store_lu_drop.lo: umf_store_lu.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DDROP -c $< -o $@

umfpack_di_wsolve.lo: umfpack_solve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -DWSOLVE -c $< -o $@

umfpack_di_%.lo: umfpack_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDINT -c $< -o $@

#-------------------------------------------------------------------------------
# compile each routine in the DL version
#-------------------------------------------------------------------------------

umf_dl_%.lo: umf_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -c $< -o $@

umf_dl_%hsolve.lo: umf_%tsolve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DCONJUGATE_SOLVE -c $< -o $@

umf_dl_triplet_map_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DDO_MAP -DDO_VALUES -c $< -o $@

umf_dl_triplet_map_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DDO_MAP -c $< -o $@

umf_dl_triplet_nomap_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DDO_VALUES -c $< -o $@

umf_dl_triplet_nomap_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -c $< -o $@

umf_dl_assemble_fixq.lo: umf_assemble.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DFIXQ -c $< -o $@

umf_dl_store_lu_drop.lo: umf_store_lu.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DDROP -c $< -o $@

umfpack_dl_wsolve.lo: umfpack_solve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -DWSOLVE -c $< -o $@

umfpack_dl_%.lo: umfpack_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DDLONG -c $< -o $@

#-------------------------------------------------------------------------------
# compile each routine in the ZI version
#-------------------------------------------------------------------------------

umf_zi_%.lo: umf_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -c $< -o $@

umf_zi_%hsolve.lo: umf_%tsolve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DCONJUGATE_SOLVE -c $< -o $@

umf_zi_triplet_map_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DDO_MAP -DDO_VALUES -c $< -o $@

umf_zi_triplet_map_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DDO_MAP -c $< -o $@

umf_zi_triplet_nomap_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DDO_VALUES -c $< -o $@

umf_zi_triplet_nomap_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -c $< -o $@

umf_zi_assemble_fixq.lo: umf_assemble.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DFIXQ -c $< -o $@

umf_zi_store_lu_drop.lo: umf_store_lu.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DDROP -c $< -o $@

umfpack_zi_wsolve.lo: umfpack_solve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -DWSOLVE -c $< -o $@

umfpack_zi_%.lo: umfpack_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZINT -c $< -o $@

#-------------------------------------------------------------------------------
# compile each routine in the ZL version
#-------------------------------------------------------------------------------

umf_zl_%.lo: umf_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -c $< -o $@

umf_zl_%hsolve.lo: umf_%tsolve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DCONJUGATE_SOLVE -c $< -o $@

umf_zl_triplet_map_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DDO_MAP -DDO_VALUES -c $< -o $@

umf_zl_triplet_map_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DDO_MAP -c $< -o $@

umf_zl_triplet_nomap_x.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DDO_VALUES -c $< -o $@

umf_zl_triplet_nomap_nox.lo: umf_triplet.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -c $< -o $@

umf_zl_assemble_fixq.lo: umf_assemble.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DFIXQ -c $< -o $@

umf_zl_store_lu_drop.lo: umf_store_lu.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DDROP -c $< -o $@

umfpack_zl_wsolve.lo: umfpack_solve.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -DWSOLVE -c $< -o $@

umfpack_zl_%.lo: umfpack_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -DZLONG -c $< -o $@

#-------------------------------------------------------------------------------
# Create the generic routines (GN) using a generic rule
#-------------------------------------------------------------------------------

umfpack_gn_%.lo: umfpack_%.c $(noinst_HEADERS)
	$(LTCOMPILE) -c $< -o $@

lib_LTLIBRARIES = libumfpack.la

libumfpack_la_SOURCES =
libumfpack_la_LIBADD = \
	$(II) $(LL) $(GN) $(DI) $(DL) $(ZI) $(ZL) \
	@BLAS_LIBS@ @SUITESPARSECONFIG_LIBS@ @AMD_LIBS@ @CHOLMOD_LIBS@

MAINTAINERCLEANFILES = Makefile.in

# probably a handier way to distribute those files with variables above
EXTRA_DIST = \
	umf_analyze.c \
	umf_apply_order.c \
	umf_assemble.c \
	umf_blas3_update.c \
	umf_build_tuples.c \
	umf_cholmod.c \
	umf_colamd.c \
	umf_create_element.c \
	umf_dump.c \
	umf_extend_front.c \
	umf_free.c \
	umf_fsize.c \
	umf_garbage_collection.c \
	umf_get_memory.c \
	umf_grow_front.c \
	umf_init_front.c \
	umf_is_permutation.c \
	umf_kernel.c \
	umf_kernel_init.c \
	umf_kernel_wrapup.c \
	umf_local_search.c \
	umf_lsolve.c \
	umf_ltsolve.c \
	umf_malloc.c \
	umf_mem_alloc_element.c \
	umf_mem_alloc_head_block.c \
	umf_mem_alloc_tail_block.c \
	umf_mem_free_tail_block.c \
	umf_mem_init_memoryspace.c \
	umf_multicompile.c \
	umfpack_col_to_triplet.c \
	umfpack_defaults.c \
	umfpack_free_numeric.c \
	umfpack_free_symbolic.c \
	umfpack_get_determinant.c \
	umfpack_get_lunz.c \
	umfpack_get_numeric.c \
	umfpack_get_symbolic.c \
	umfpack_global.c \
	umfpack_load_numeric.c \
	umfpack_load_symbolic.c \
	umfpack_numeric.c \
	umfpack_qsymbolic.c \
	umfpack_report_control.c \
	umfpack_report_info.c \
	umfpack_report_matrix.c \
	umfpack_report_numeric.c \
	umfpack_report_perm.c \
	umfpack_report_status.c \
	umfpack_report_symbolic.c \
	umfpack_report_triplet.c \
	umfpack_report_vector.c \
	umfpack_save_numeric.c \
	umfpack_save_symbolic.c \
	umfpack_scale.c \
	umfpack_solve.c \
	umfpack_symbolic.c \
	umfpack_tictoc.c \
	umfpack_timer.c \
	umfpack_transpose.c \
	umfpack_triplet_to_col.c \
	umf_realloc.c \
	umf_report_perm.c \
	umf_report_vector.c \
	umf_row_search.c \
	umf_scale.c \
	umf_scale_column.c \
	umf_set_stats.c \
	umf_singletons.c \
	umf_solve.c \
	umf_start_front.c \
	umf_store_lu.c \
	umf_symbolic_usage.c \
	umf_transpose.c \
	umf_triplet.c \
	umf_tuple_lengths.c \
	umf_usolve.c \
	umf_utsolve.c \
	umf_valid_numeric.c \
	umf_valid_symbolic.c
