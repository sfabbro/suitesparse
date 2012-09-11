UserGuide.pdf: 
	ln -s $(srcdir)/*.{awk,bib,tex} .
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/analyze.m > _analyze_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/bisect.m > _bisect_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/chol2.m > _chol2_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/cholmod2.m > _cholmod2_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/cholmod_demo.m > _cholmod_demo_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/cholmod_make.m > _cholmod_make_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/etree2.m > _etree2_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/graph_demo.m > _graph_demo_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/lchol.m > _lchol_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/ldlchol.m > _ldlchol_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/ldl_normest.m > _ldl_normest_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/ldlsolve.m > _ldlsolve_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/ldlsplit.m > _ldlsplit_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/ldlupdate.m > _ldlupdate_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/metis.m > _metis_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/mread.m > _mread_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/spsym.m > _spsym_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/mwrite.m > _mwrite_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/nesdis.m > _nesdis_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/resymbol.m > _resymbol_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/sdmult.m > _sdmult_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/sparse2.m > _sparse2_m.tex
	$(srcdir)/getmproto $(top_srcdir)/MATLAB/symbfact2.m > _symbfact2_m.tex
	$(srcdir)/getproto '/include/, /^}/' $(top_srcdir)/Demo/cholmod_simple.c > _simple.tex
	$(srcdir)/getproto '/typedef struct cholmod_common/, /^}/' $(top_srcdir)/Include/cholmod_core.h > _common.tex
	$(srcdir)/getproto '/int cholmod_start/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _start.tex
	$(srcdir)/getproto '/int cholmod_finish/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _finish.tex
	$(srcdir)/getproto '/int cholmod_defaults/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _defaults.tex
	$(srcdir)/getproto '/size_t cholmod_maxrank/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _maxrank.tex
	$(srcdir)/getproto '/int cholmod_allocate_work/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _allocate_work.tex
	$(srcdir)/getproto '/int cholmod_free_work/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _free_work.tex
	$(srcdir)/getproto '/long cholmod_clear_flag/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _clear_flag.tex
	$(srcdir)/getproto '/int cholmod_error/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _error.tex
	$(srcdir)/getproto '/double cholmod_dbound/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _dbound.tex
	$(srcdir)/getproto '/double cholmod_hypot/, /double\) ;/' $(top_srcdir)/Include/cholmod_core.h > _hypot.tex
	$(srcdir)/getproto '/int cholmod_divcomplex/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _divcomplex.tex
	$(srcdir)/getproto '/typedef struct cholmod_sparse/, /^}/' $(top_srcdir)/Include/cholmod_core.h > _sparse.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_allocate_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _allocate_sparse.tex
	$(srcdir)/getproto '/int cholmod_free_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _free_sparse.tex
	$(srcdir)/getproto '/int cholmod_reallocate_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _reallocate_sparse.tex
	$(srcdir)/getproto '/long cholmod_nnz/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _nnz.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_speye/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _speye.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_spzeros/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _spzeros.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_transpose/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _transpose.tex
	$(srcdir)/getproto '/int cholmod_transpose_unsym/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _transpose_unsym.tex
	$(srcdir)/getproto '/int cholmod_transpose_sym/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _transpose_sym.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_ptranspose/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _ptranspose.tex
	$(srcdir)/getproto '/int cholmod_sort/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _sort.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_band/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _band.tex
	$(srcdir)/getproto '/int cholmod_band_inplace/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _band_inplace.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_aat/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _aat.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_copy_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _copy_sparse.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_copy /, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _copy.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_add/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _add.tex
	$(srcdir)/getproto '/int cholmod_sparse_xtype/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _sparse_xtype.tex 
	$(srcdir)/getproto '/typedef struct cholmod_factor/, /^}/' $(top_srcdir)/Include/cholmod_core.h > _factor.tex 
	$(srcdir)/getproto '/cholmod_factor \*cholmod_allocate_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _allocate_factor.tex 
	$(srcdir)/getproto '/int cholmod_free_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _free_factor.tex 
	$(srcdir)/getproto '/int cholmod_reallocate_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _reallocate_factor.tex 
	$(srcdir)/getproto '/int cholmod_change_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _change_factor.tex 
	$(srcdir)/getproto '/int cholmod_pack_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _pack_factor.tex 
	$(srcdir)/getproto '/int cholmod_reallocate_column/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _reallocate_column.tex 
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_factor_to_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _factor_to_sparse.tex 
	$(srcdir)/getproto '/cholmod_factor \*cholmod_copy_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _copy_factor.tex 
	$(srcdir)/getproto '/int cholmod_factor_xtype/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _factor_xtype.tex 
	$(srcdir)/getproto '/typedef struct cholmod_dense/, /^}/' $(top_srcdir)/Include/cholmod_core.h > _dense.tex 
	$(srcdir)/getproto '/cholmod_dense \*cholmod_allocate_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _allocate_dense.tex 
	$(srcdir)/getproto '/cholmod_dense \*cholmod_zeros/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _zeros.tex 
	$(srcdir)/getproto '/cholmod_dense \*cholmod_ones/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _ones.tex 
	$(srcdir)/getproto '/cholmod_dense \*cholmod_eye/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _eye.tex 
	$(srcdir)/getproto '/int cholmod_free_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _free_dense.tex 
	$(srcdir)/getproto '/cholmod_dense \*cholmod_sparse_to_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _sparse_to_dense.tex 
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_dense_to_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _dense_to_sparse.tex 
	$(srcdir)/getproto '/cholmod_dense \*cholmod_copy_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _copy_dense.tex 
	$(srcdir)/getproto '/int cholmod_copy_dense2/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _copy_dense2.tex 
	$(srcdir)/getproto '/int cholmod_dense_xtype/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _dense_xtype.tex 
	$(srcdir)/getproto '/typedef struct cholmod_triplet/, /^}/' $(top_srcdir)/Include/cholmod_core.h > _triplet.tex 
	$(srcdir)/getproto '/cholmod_triplet \*cholmod_allocate_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _allocate_triplet.tex 
	$(srcdir)/getproto '/int cholmod_free_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _free_triplet.tex 
	$(srcdir)/getproto '/int cholmod_reallocate_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _reallocate_triplet.tex 
	$(srcdir)/getproto '/cholmod_triplet \*cholmod_sparse_to_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _sparse_to_triplet.tex 
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_triplet_to_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _triplet_to_sparse.tex 
	$(srcdir)/getproto '/cholmod_triplet \*cholmod_copy_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _copy_triplet.tex 
	$(srcdir)/getproto '/int cholmod_triplet_xtype/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _triplet_xtype.tex 
	$(srcdir)/getproto '/void \*cholmod_malloc/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _malloc.tex 
	$(srcdir)/getproto '/void \*cholmod_calloc/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _calloc.tex 
	$(srcdir)/getproto '/void \*cholmod_free/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _free.tex 
	$(srcdir)/getproto '/void \*cholmod_realloc/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _realloc.tex 
	$(srcdir)/getproto '/int cholmod_realloc_multiple/, /\*\) ;/' $(top_srcdir)/Include/cholmod_core.h > _realloc_multiple.tex 
	$(srcdir)/getproto '/itype defines the/, /define CHOLMOD_SUPERNODAL/' $(top_srcdir)/Include/cholmod_core.h > _defn.tex 
	$(srcdir)/getproto '/int cholmod_check_common/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_common.tex 
	$(srcdir)/getproto '/int cholmod_print_common/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_common.tex 
	$(srcdir)/getproto '/int cholmod_check_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_sparse.tex 
	$(srcdir)/getproto '/int cholmod_print_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_sparse.tex 
	$(srcdir)/getproto '/int cholmod_check_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_dense.tex 
	$(srcdir)/getproto '/int cholmod_print_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_dense.tex 
	$(srcdir)/getproto '/int cholmod_check_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_factor.tex 
	$(srcdir)/getproto '/int cholmod_print_factor/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_factor.tex 
	$(srcdir)/getproto '/int cholmod_check_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_triplet.tex 
	$(srcdir)/getproto '/int cholmod_print_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_triplet.tex 
	$(srcdir)/getproto '/int cholmod_check_subset/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_subset.tex 
	$(srcdir)/getproto '/int cholmod_print_subset/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_subset.tex 
	$(srcdir)/getproto '/int cholmod_check_perm/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_perm.tex
	$(srcdir)/getproto '/int cholmod_print_perm/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_perm.tex
	$(srcdir)/getproto '/int cholmod_check_parent/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _check_parent.tex
	$(srcdir)/getproto '/int cholmod_print_parent/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _print_parent.tex
	$(srcdir)/getproto '/cholmod_triplet \*cholmod_read_triplet/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _read_triplet.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_read_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _read_sparse.tex
	$(srcdir)/getproto '/cholmod_dense \*cholmod_read_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _read_dense.tex
	$(srcdir)/getproto '/void \*cholmod_read_matrix/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _read_matrix.tex
	$(srcdir)/getproto '/int cholmod_write_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _write_sparse.tex
	$(srcdir)/getproto '/int cholmod_write_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_check.h > _write_dense.tex
	$(srcdir)/getproto '/cholmod_factor \*cholmod_analyze /, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _analyze.tex
	$(srcdir)/getproto '/cholmod_factor \*cholmod_analyze_p/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _analyze_p.tex
	$(srcdir)/getproto '/int cholmod_factorize /, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _factorize.tex
	$(srcdir)/getproto '/int cholmod_factorize_p/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _factorize_p.tex
	$(srcdir)/getproto '/cholmod_dense \*cholmod_solve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _solve.tex 
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_spsolve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _spsolve.tex 
	$(srcdir)/getproto '/int cholmod_etree/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _etree.tex 
	$(srcdir)/getproto '/int cholmod_rowcolcounts/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _rowcolcounts.tex 
	$(srcdir)/getproto '/int cholmod_analyze_ordering/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _analyze_ordering.tex 
	$(srcdir)/getproto '/int cholmod_amd/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _amd.tex 
	$(srcdir)/getproto '/int cholmod_colamd/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _colamd.tex 
	$(srcdir)/getproto '/int cholmod_rowfac/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _rowfac.tex 
	$(srcdir)/getproto '/int cholmod_rowfac_mask/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _rowfac_mask.tex 
	$(srcdir)/getproto '/int cholmod_row_subtree/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _row_subtree.tex 
	$(srcdir)/getproto '/int cholmod_row_lsubtree/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _row_lsubtree.tex 
	$(srcdir)/getproto '/int cholmod_resymbol /, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _resymbol.tex
	$(srcdir)/getproto '/int cholmod_resymbol_noperm/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _resymbol_noperm.tex 
	$(srcdir)/getproto '/double cholmod_rcond/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _rcond.tex
	$(srcdir)/getproto '/long cholmod_postorder/, /\*\) ;/' $(top_srcdir)/Include/cholmod_cholesky.h > _postorder.tex
	$(srcdir)/getproto '/int cholmod_updown /, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _updown.tex
	$(srcdir)/getproto '/int cholmod_updown_solve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _updown_solve.tex
	$(srcdir)/getproto '/int cholmod_updown_mark/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _updown_mark.tex
	$(srcdir)/getproto '/int cholmod_updown_mask/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _updown_mask.tex
	$(srcdir)/getproto '/int cholmod_rowadd /, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _rowadd.tex
	$(srcdir)/getproto '/int cholmod_rowadd_solve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _rowadd_solve.tex
	$(srcdir)/getproto '/int cholmod_rowadd_mark/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _rowadd_mark.tex
	$(srcdir)/getproto '/int cholmod_rowdel /, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _rowdel.tex
	$(srcdir)/getproto '/int cholmod_rowdel_solve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _rowdel_solve.tex
	$(srcdir)/getproto '/int cholmod_rowdel_mark/, /\*\) ;/' $(top_srcdir)/Include/cholmod_modify.h > _rowdel_mark.tex
	$(srcdir)/getproto '/int cholmod_drop/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _drop.tex
	$(srcdir)/getproto '/double cholmod_norm_dense/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _norm_dense.tex
	$(srcdir)/getproto '/double cholmod_norm_sparse/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _norm_sparse.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_horzcat/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _horzcat.tex
	$(srcdir)/getproto '/define CHOLMOD_SCALAR/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _scale.tex
	$(srcdir)/getproto '/int cholmod_sdmult/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _sdmult.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_ssmult/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _ssmult.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_submatrix/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _submatrix.tex
	$(srcdir)/getproto '/cholmod_sparse \*cholmod_vertcat/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _vertcat.tex
	$(srcdir)/getproto '/int cholmod_symmetry/, /\*\) ;/' $(top_srcdir)/Include/cholmod_matrixops.h > _symmetry.tex
	$(srcdir)/getproto '/int cholmod_super_symbolic/, /\*\) ;/' $(top_srcdir)/Include/cholmod_supernodal.h > _super_symbolic.tex
	$(srcdir)/getproto '/int cholmod_super_numeric/, /\*\) ;/' $(top_srcdir)/Include/cholmod_supernodal.h > _super_numeric.tex
	$(srcdir)/getproto '/int cholmod_super_lsolve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_supernodal.h > _super_lsolve.tex
	$(srcdir)/getproto '/int cholmod_super_ltsolve/, /\*\) ;/' $(top_srcdir)/Include/cholmod_supernodal.h > _super_ltsolve.tex
	$(srcdir)/getproto '/long cholmod_nested_dissection/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _nested_dissection.tex
	$(srcdir)/getproto '/int cholmod_metis/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _metis.tex
	$(srcdir)/getproto '/int cholmod_ccolamd/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _ccolamd.tex
	$(srcdir)/getproto '/int cholmod_camd/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _camd.tex
	$(srcdir)/getproto '/int cholmod_csymamd/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _csymamd.tex
	$(srcdir)/getproto '/int cholmod_csymamd/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _csymamd.tex
	$(srcdir)/getproto '/long cholmod_bisect/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _bisect.tex
	$(srcdir)/getproto '/long cholmod_metis_bisector/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _metis_bisector.tex
	$(srcdir)/getproto '/long cholmod_collapse_septree/, /\*\) ;/' $(top_srcdir)/Include/cholmod_partition.h > _collapse_septree.tex
	$(PDFLATEX) UserGuide
	$(BIBTEX) UserGuide
	$(PDFLATEX) UserGuide
	$(PDFLATEX) UserGuide

pdf-local: UserGuide.pdf

all-local: pdf-local

doc_DATA = UserGuide.pdf ChangeLog

EXTRA_DIST = UserGuide.tex UserGuide.bib getproto rule.awk header.tex \
	footer.tex getmproto mfooter.tex mheader.tex mfile.awk

CLEANFILES = *.aux *.bbl *.blg *.log *.toc *.pdf _*
MAINTAINERCLEANFILES = Makefile.in
