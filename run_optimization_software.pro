function run_optimization_software, directory



CD, '/Users/crura/Desktop/Research/Shaela/image-optimization_of_coronal_models-master'


files = file_search('/Users/crura/Desktop/Research/Vadim/C_2091/A/constraints/20091226_rep_med.fts.sav');file_search('/Users/crura/Desktop/Research/Vadim/C_2091/A/constraints/*.sav') ; your_filepath_to_Vadim’s_constraint_files

constraint_savefile = '/Users/crura/Desktop/Research/Shaela/image-optimization_of_coronal_models-master/test_outputs/digested_constraints.sav' ; your_filepath_to_where_to_store_digested_constraints

magfile = file_search('/Users/crura/Desktop/Research/Shaela/magnetograms/mrzqs091226t0554c2091_049.fits.gz') ;your_filepath_to_magnetogram_file_to_use_for_model_construction

scale_magfiles = file_search('/Users/crura/Desktop/Research/Shaela/magnetograms/mrzqs091226*.fits.gz') ;your_filepath_to_magnetgrams_for_setting_harmonic_coefficient_scale

optimization_savefile = '/Users/crura/Desktop/Research/Shaela/image-optimization_of_coronal_models-master/test_outputs/optimization_data';<your_filepath_to_where_to_store_optimization_data>

cblock_savefile = '/Users/crura/Desktop/Research/Shaela/image-optimization_of_coronal_models-master/test_outputs/PFSS_structures';<your_filepath_to_save_PFSS_data_structures_from_before_and_after_optimization>

filestem = '/Users/crura/Desktop/Research/Shaela/image-optimization_of_coronal_models-master/test_outputs/plots';<your_filepath_to_where_plots_should_be_saved>

pre_digest_constraints, files, angles, coords, lengths, weights, spcCoords, ncnsts, savefile = constraint_savefile

pfss_optimization, magfile, scale_magfiles, constraint_savefile, savefile=optimization_savefile, cblock_savefile=cblock_savefile, filestem = filestem;, /make_plots
  return, 0
END