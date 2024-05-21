# Workflow: glyco-O-DIA-HCD

crystalc.run-crystalc=false
database.decoy-tag=rev_
diann.fragpipe.cmd-opts=
diann.generate-msstats=false
diann.heavy=
diann.library=
diann.light=
diann.medium=
diann.q-value=0.01
diann.quantification-strategy=0
diann.quantification-strategy-2=QuantUMS (high precision)
diann.run-dia-nn=true
diann.run-dia-plex=false
diann.run-specific-protein-q-value=false
diann.unrelated-runs=true
diann.use-predicted-spectra=false
diatracer.corr-threshold=0.3
diatracer.delta-apex-im=0.01
diatracer.delta-apex-rt=3
diatracer.mass-defect-filter=true
diatracer.mass-defect-offset=0.1
diatracer.rf-max=500
diatracer.run-diatracer=false
diatracer.write-intermediate-files=false
diaumpire.AdjustFragIntensity=true
diaumpire.BoostComplementaryIon=false
diaumpire.CorrThreshold=0
diaumpire.DeltaApex=0.2
diaumpire.ExportPrecursorPeak=false
diaumpire.Q1=true
diaumpire.Q2=true
diaumpire.Q3=true
diaumpire.RFmax=500
diaumpire.RPmax=25
diaumpire.RTOverlap=0.3
diaumpire.SE.EstimateBG=false
diaumpire.SE.IsoPattern=0.3
diaumpire.SE.MS1PPM=10
diaumpire.SE.MS2PPM=20
diaumpire.SE.MS2SN=1.1
diaumpire.SE.MassDefectFilter=true
diaumpire.SE.MassDefectOffset=0.1
diaumpire.SE.NoMissedScan=1
diaumpire.SE.SN=1.1
diaumpire.run-diaumpire=false
fpop.fpop-tmt=false
fpop.label_control=
fpop.label_fpop=
fpop.region_size=1
fpop.run-fpop=false
fpop.subtract-control=false
freequant.mz-tol=10
freequant.rt-tol=0.4
freequant.run-freequant=false
ionquant.excludemods=
ionquant.heavy=
ionquant.imtol=0.05
ionquant.ionfdr=0.01
ionquant.light=
ionquant.locprob=0.75
ionquant.maxlfq=1
ionquant.mbr=0
ionquant.mbrimtol=0.05
ionquant.mbrmincorr=0
ionquant.mbrrttol=1
ionquant.mbrtoprun=100000
ionquant.medium=
ionquant.minfreq=0
ionquant.minions=1
ionquant.minisotopes=2
ionquant.minscans=3
ionquant.mztol=10
ionquant.normalization=1
ionquant.peptidefdr=1
ionquant.proteinfdr=1
ionquant.requantify=1
ionquant.rttol=0.4
ionquant.run-ionquant=true
ionquant.tp=0
ionquant.uniqueness=0
ionquant.use-labeling=false
ionquant.use-lfq=true
ionquant.writeindex=0
msbooster.find-best-rt-model=false
msbooster.find-best-spectra-model=false
msbooster.koina-url=
msbooster.predict-rt=true
msbooster.predict-spectra=true
msbooster.rt-model=DIA-NN
msbooster.run-msbooster=false
msbooster.spectra-model=DIA-NN
msbooster.table.rt-models=DIA-NN,true;DeepLC HeLa HF,true;AlphaPept RT Generic,true;Prosit 2019 iRT,true;Prosit 2020 iRT TMT,true
msbooster.table.spectra-models=DIA-NN,true;MS2PIP 2021 HCD,true;AlphaPept MS2 Generic,true;Prosit 2019 Intensity,true;Prosit 2023 Intensity timsTOF,true;Prosit 2020 Intensity CID,true;Prosit 2020 Intensity TMT,true;Prosit 2020 Intensity HCD,true
msbooster.use-correlated-features=false
msfragger.Y_type_masses=0
msfragger.activation_types=HCD
msfragger.allowed_missed_cleavage_1=2
msfragger.allowed_missed_cleavage_2=0
msfragger.analyzer_types=all
msfragger.calibrate_mass=4
msfragger.check_spectral_files=false
msfragger.clip_nTerm_M=true
msfragger.deisotope=1
msfragger.delta_mass_exclude_ranges=(-1.5,3.5)
msfragger.deneutralloss=1
msfragger.diagnostic_fragments=204.086646 186.076086 168.065526 366.139466 144.0656 138.055 512.197375 292.1026925 274.0921325 657.2349 243.026426 405.079246 485.045576 308.09761
msfragger.diagnostic_intensity_filter=0.1
msfragger.digest_max_length=50
msfragger.digest_min_length=7
msfragger.fragment_ion_series=b,y
msfragger.fragment_mass_tolerance=20
msfragger.fragment_mass_units=1
msfragger.group_variable=0
msfragger.intensity_transform=1
msfragger.ion_series_definitions=
msfragger.isotope_error=0/1/2
msfragger.labile_search_mode=labile
msfragger.localize_delta_mass=false
msfragger.mass_diff_to_variable_mod=1
msfragger.mass_offsets=0 203.0793762207 365.1322021484 494.1748046875 568.2115783691 656.2276306152 730.2644042969 859.3070068359 947.323059082 1021.3598327637 1167.4177398682 1312.4552612305 1458.513168335 406.1587524414 697.2541809082 771.2909545898 933.3437805176 1062.3863830566 1150.4024353027 1224.4392089844 1370.4971160889 1515.5346374512 1661.5925445557 1095.3966064453 1386.4920349121 1532.5499420166 1677.5874633789 1823.6453704834 988.349609375 1353.4818115234 1441.4978637695 1806.630065918 1952.6879730225 1136.4231567383 1298.475982666 1427.5185852051 1589.5714111328 1735.6293182373 1880.6668395996 2026.7247467041 1603.5506896973 1968.6828918457 2114.7407989502 1460.5288085938 1751.6242370605 1897.682144165 2042.7196655273 2188.7775726318 1718.6140136719 2171.7622680664 2317.8201751709 1894.6461181641 2259.7783203125 2405.836227417 2333.8150939941 2479.8730010986 2334.8354797363 2625.9309082031 2624.9105224609 2770.9684295654 2917.0263366699 609.2381286621 900.3335571289 974.3703308105 1265.4657592773 1573.5764923096 1864.6719207764 1191.4289855957 1556.5611877441 1644.5772399902 2009.7094421387 2155.7673492432 1339.502532959 1501.5553588867 1630.5979614258 1792.6507873535 1938.708694458 2083.7462158203 2229.8041229248 1663.6081848145 1954.7036132812 2100.7615203857 2245.799041748 2391.8569488525 1921.6933898926 2374.8416442871 2520.8995513916 2097.7254943848 2462.8576965332 2608.9156036377 2536.8944702148 2682.9523773193 2537.914855957 2829.0102844238 2827.9898986816 2974.0478057861 1825.6610107422 2116.756439209 2262.8143463135 2407.8518676758 2553.9097747803 2698.9472961426 2845.0052032471 2699.9676818848 2991.0631103516 2990.0427246094 1482.5244140625 1847.6566162109 1935.672668457 2300.8048706055 2446.86277771 2212.7888183594 2665.9370727539 2811.9949798584 2388.8209228516 2753.953125 2900.0110321045 1704.6347351074 1866.6875610352 1995.7301635742 2157.782989502 2303.8408966064 2448.8784179688 2594.9363250732 2028.7403869629 2319.8358154297 2465.8937225342 2610.9312438965 2756.989151001 2286.825592041 2739.9738464355 2886.03175354 2902.0266723633 2903.0470581055 2550.8737487793 2916.0059509277 2190.7932128906 2481.8886413574 2627.9465484619 2772.9840698242 2919.0419769287 2577.9210205078 2841.9691772461 812.3175048828 1103.4129333496 1177.4497070312 1468.545135498 1776.6558685303 2067.7512969971 1394.5083618164 1759.6405639648 2358.8467254639 1542.5819091797 1833.6773376465 2141.7880706787 2432.8834991455 2124.7727661133 2723.9789276123 2740.9942321777 1685.6037902832 2050.7359924316 2138.7520446777 2503.8842468262 2649.9421539307 2415.8681945801 2869.0164489746 2591.9002990723 2957.0325012207 1907.7141113281 2069.7669372559 2198.8095397949 2360.8623657227 2506.9202728271 2651.9577941895 2798.0157012939 2231.8197631836 2522.9151916504 2668.9730987549 2814.0106201172 2960.0685272217 2489.9049682617 2943.0532226562 2393.8725891113 2684.9680175781 2831.0259246826 2976.0634460449 2781.0003967285 2555.9254150391 2847.0208435059 2993.0787506104 1976.69921875 2341.8314208984 2429.8474731445 2794.979675293 2941.0375823975 2706.9636230469 2882.9957275391 2272.8463134766 2434.8991394043 2563.9417419434 2725.9945678711 2872.0524749756 2596.951965332 2888.0473937988 2855.0371704102 2759.0047912598 2921.0576171875
msfragger.mass_offsets_detailed=
msfragger.max_fragment_charge=2
msfragger.max_variable_mods_combinations=5000
msfragger.max_variable_mods_per_peptide=3
msfragger.min_fragments_modelling=2
msfragger.min_matched_fragments=4
msfragger.min_sequence_matches=2
msfragger.minimum_peaks=15
msfragger.minimum_ratio=0.00
msfragger.misc.fragger.clear-mz-hi=0
msfragger.misc.fragger.clear-mz-lo=0
msfragger.misc.fragger.digest-mass-hi=5000
msfragger.misc.fragger.digest-mass-lo=400
msfragger.misc.fragger.enzyme-dropdown-1=stricttrypsin
msfragger.misc.fragger.enzyme-dropdown-2=custom
msfragger.misc.fragger.precursor-charge-hi=4
msfragger.misc.fragger.precursor-charge-lo=1
msfragger.misc.fragger.remove-precursor-range-hi=1.5
msfragger.misc.fragger.remove-precursor-range-lo=-1.5
msfragger.misc.slice-db=1
msfragger.num_enzyme_termini=2
msfragger.output_format=pepXML
msfragger.output_max_expect=50
msfragger.output_report_topN=1
msfragger.output_report_topN_dda_plus=5
msfragger.output_report_topN_dia1=5
msfragger.override_charge=false
msfragger.precursor_mass_lower=-20
msfragger.precursor_mass_mode=corrected
msfragger.precursor_mass_units=1
msfragger.precursor_mass_upper=20
msfragger.precursor_true_tolerance=20
msfragger.precursor_true_units=1
msfragger.remainder_fragment_masses=
msfragger.remove_precursor_peak=0
msfragger.report_alternative_proteins=true
msfragger.require_precursor=true
msfragger.restrict_deltamass_to=ST
msfragger.reuse_dia_fragment_peaks=false
msfragger.run-msfragger=true
msfragger.search_enzyme_cut_1=KR
msfragger.search_enzyme_cut_2=
msfragger.search_enzyme_name_1=stricttrypsin
msfragger.search_enzyme_name_2=nonspecific
msfragger.search_enzyme_nocut_1=
msfragger.search_enzyme_nocut_2=
msfragger.search_enzyme_sense_1=C
msfragger.search_enzyme_sense_2=N
msfragger.table.fix-mods=0.0,C-Term Peptide,true,-1; 0.0,N-Term Peptide,true,-1; 0.0,C-Term Protein,true,-1; 0.0,N-Term Protein,true,-1; 0.0,G (glycine),true,-1; 0.0,A (alanine),true,-1; 0.0,S (serine),true,-1; 0.0,P (proline),true,-1; 0.0,V (valine),true,-1; 0.0,T (threonine),true,-1; 57.02146,C (cysteine),true,-1; 0.0,L (leucine),true,-1; 0.0,I (isoleucine),true,-1; 0.0,N (asparagine),true,-1; 0.0,D (aspartic acid),true,-1; 0.0,Q (glutamine),true,-1; 0.0,K (lysine),true,-1; 0.0,E (glutamic acid),true,-1; 0.0,M (methionine),true,-1; 0.0,H (histidine),true,-1; 0.0,F (phenylalanine),true,-1; 0.0,R (arginine),true,-1; 0.0,Y (tyrosine),true,-1; 0.0,W (tryptophan),true,-1; 0.0,B ,true,-1; 0.0,J,true,-1; 0.0,O,true,-1; 0.0,U,true,-1; 0.0,X,true,-1; 0.0,Z,true,-1
msfragger.table.var-mods=15.9949,M,true,2; 42.0106,[^,true,1; 0.98401,NQ,true,1; -17.0265,nQnC,false,1; -18.0106,nE,false,1; 42.021797,K,false,1; 6.020129,R,false,3
msfragger.track_zero_topN=0
msfragger.use_all_mods_in_first_search=false
msfragger.use_detailed_offsets=false
msfragger.use_topN_peaks=300
msfragger.write_calibrated_mzml=true
msfragger.write_uncalibrated_mgf=false
msfragger.zero_bin_accept_expect=0
msfragger.zero_bin_mult_expect=1
opair.activation1=HCD
opair.activation2=ETD
opair.filterOxonium=false
opair.glyco_db=
opair.max_glycans=4
opair.max_isotope_error=2
opair.min_isotope_error=0
opair.ms1_tol=20
opair.ms2_tol=20
opair.oxonium_filtering_file=
opair.oxonium_minimum_intensity=0.05
opair.reverse_scan_order=true
opair.run-opair=false
opair.single_scan_type=false
peptide-prophet.cmd-opts=--decoyprobs --ppm --accmass --nonparam --expectscore
peptide-prophet.combine-pepxml=true
peptide-prophet.run-peptide-prophet=true
percolator.cmd-opts=--only-psms --no-terminate --post-processing-tdc
percolator.keep-tsv-files=false
percolator.min-prob=0.5
percolator.run-percolator=false
phi-report.dont-use-prot-proph-file=false
phi-report.filter=--sequential --prot 0.01
phi-report.pep-level-summary=false
phi-report.print-decoys=false
phi-report.prot-level-summary=false
phi-report.remove-contaminants=false
phi-report.run-report=true
protein-prophet.cmd-opts=--maxppmdiff 2000000
protein-prophet.run-protein-prophet=true
ptmprophet.cmdline=--keepold --static --em 1 --nions b --mods STY\:79.966331,M\:15.9949 --minprob 0.5
ptmprophet.run-ptmprophet=false
ptmshepherd.adv_params=false
ptmshepherd.annotation-common=false
ptmshepherd.annotation-custom=false
ptmshepherd.annotation-glyco=true
ptmshepherd.annotation-unimod=false
ptmshepherd.annotation_file=
ptmshepherd.annotation_tol=0.01
ptmshepherd.cap_y_ions=0,203.07937,406.15874,568.21156,730.26438,349.137279
ptmshepherd.decoy_type=1
ptmshepherd.diag_ions=204.086646,186.076086,168.065526,366.139466,144.0656,138.055,512.197375,292.1026925,274.0921325,657.2349,243.026426,405.079246,485.045576,308.09761
ptmshepherd.diagmine_diagMinFoldChange=3.0
ptmshepherd.diagmine_diagMinSpecDiff=25
ptmshepherd.diagmine_fragMinFoldChange=3.0
ptmshepherd.diagmine_fragMinPropensity=12.5
ptmshepherd.diagmine_fragMinSpecDiff=25
ptmshepherd.diagmine_minIonsPerSpec=2
ptmshepherd.diagmine_minPeps=25
ptmshepherd.diagmine_pepMinFoldChange=3.0
ptmshepherd.diagmine_pepMinSpecDiff=25
ptmshepherd.glyco_fdr=0.05
ptmshepherd.glyco_isotope_max=3
ptmshepherd.glyco_isotope_min=-1
ptmshepherd.glyco_ppm_tol=50
ptmshepherd.glycodatabase=
ptmshepherd.histo_smoothbins=2
ptmshepherd.iontype_a=false
ptmshepherd.iontype_b=true
ptmshepherd.iontype_c=false
ptmshepherd.iontype_x=false
ptmshepherd.iontype_y=true
ptmshepherd.iontype_z=false
ptmshepherd.iterloc_maxEpoch=100
ptmshepherd.iterloc_mode=false
ptmshepherd.localization_allowed_res=ST
ptmshepherd.n_glyco=false
ptmshepherd.normalization-psms=true
ptmshepherd.normalization-scans=false
ptmshepherd.output_extended=false
ptmshepherd.peakpicking_mass_units=0
ptmshepherd.peakpicking_minPsm=10
ptmshepherd.peakpicking_promRatio=0.3
ptmshepherd.peakpicking_width=0.002
ptmshepherd.precursor_mass_units=0
ptmshepherd.precursor_tol=0.01
ptmshepherd.print_decoys=false
ptmshepherd.print_full_glyco_params=true
ptmshepherd.prob_mass=1.0
ptmshepherd.remainder_masses=203.07937
ptmshepherd.remove_glycan_delta_mass=true
ptmshepherd.run-shepherd=false
ptmshepherd.run_diagextract_mode=true
ptmshepherd.run_diagmine_mode=false
ptmshepherd.run_glyco_mode=false
ptmshepherd.spectra_maxfragcharge=2
ptmshepherd.spectra_ppmtol=20
ptmshepherd.varmod_masses=
quantitation.run-label-free-quant=false
run-psm-validation=true
run-validation-tab=true
saintexpress.fragpipe.cmd-opts=
saintexpress.max-replicates=10
saintexpress.run-saint-express=false
saintexpress.virtual-controls=100
skyline.run-skyline=false
skyline.skyline=true
skyline.skyline-custom=false
skyline.skyline-custom-path=
skyline.skyline-daily=false
skyline.skyline-mode=0
skyline.skyline-mods-mode=Default
speclibgen.convert-pepxml=false
speclibgen.convert-psm=true
speclibgen.easypqp.extras.max_delta_ppm=15
speclibgen.easypqp.extras.max_delta_unimod=0.02
speclibgen.easypqp.extras.rt_lowess_fraction=0
speclibgen.easypqp.fragment.a=false
speclibgen.easypqp.fragment.b=true
speclibgen.easypqp.fragment.c=false
speclibgen.easypqp.fragment.x=false
speclibgen.easypqp.fragment.y=true
speclibgen.easypqp.fragment.z=false
speclibgen.easypqp.ignore_unannotated=true
speclibgen.easypqp.im-cal=Automatic selection of a run as reference IM
speclibgen.easypqp.labile_mode=O-glyco
speclibgen.easypqp.neutral_loss=false
speclibgen.easypqp.rt-cal=noiRT
speclibgen.easypqp.select-file.text=
speclibgen.easypqp.select-im-file.text=
speclibgen.keep-intermediate-files=false
speclibgen.run-speclibgen=true
tab-run.delete_calibrated_mzml=false
tab-run.delete_temp_files=true
tab-run.sub_mzml_prob_threshold=0.5
tab-run.write_sub_mzml=false
tmtintegrator.add_Ref=-1
tmtintegrator.aggregation_method=0
tmtintegrator.allow_overlabel=true
tmtintegrator.allow_unlabeled=true
tmtintegrator.best_psm=true
tmtintegrator.channel_num=TMT-6
tmtintegrator.extraction_tool=IonQuant
tmtintegrator.glyco_qval=0.01
tmtintegrator.groupby=0
tmtintegrator.log2transformed=true
tmtintegrator.max_pep_prob_thres=0
tmtintegrator.min_ntt=0
tmtintegrator.min_pep_prob=0.9
tmtintegrator.min_percent=0.05
tmtintegrator.min_purity=0.5
tmtintegrator.min_site_prob=-1
tmtintegrator.mod_tag=none
tmtintegrator.ms1_int=true
tmtintegrator.outlier_removal=true
tmtintegrator.philosopher-msstats=false
tmtintegrator.print_RefInt=false
tmtintegrator.prot_exclude=none
tmtintegrator.prot_norm=0
tmtintegrator.psm_norm=false
tmtintegrator.quant_level=2
tmtintegrator.ref_tag=Bridge
tmtintegrator.run-tmtintegrator=false
tmtintegrator.tolerance=20
tmtintegrator.top3_pep=true
tmtintegrator.unique_gene=0
tmtintegrator.unique_pep=false
tmtintegrator.use_glycan_composition=true
workflow.description=Runs MSFragger-Glyco to build a spectral library from HCD DDA data, then quantifies DIA data using the library. Note\: library is NOT site-specific for HCD-only DDA data, glycans will be placed on the first allowed site in the peptide. Load both DDA and DIA data on the workflow tab and set the Data Type to "DIA-quant" for all DIA files.
workflow.input.data-type.im-ms=false
workflow.input.data-type.regular-ms=true
workflow.misc.save-sdrf=true
workflow.saved-with-ver=21.2-build45
