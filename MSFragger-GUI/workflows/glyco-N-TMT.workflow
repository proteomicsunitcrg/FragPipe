# Workflow: glyco-N-TMT



crystalc.run-crystalc=false
database.decoy-tag=rev_
diann.fragpipe.cmd-opts=
diann.heavy=
diann.library=
diann.light=
diann.medium=
diann.q-value=0.01
diann.quantification-strategy=3
diann.run-dia-nn=false
diann.run-dia-plex=false
diann.run-specific-protein-q-value=false
diann.unrelated-runs=false
diann.use-predicted-spectra=true
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
ionquant.mbrtoprun=10
ionquant.medium=
ionquant.minfreq=0
ionquant.minions=2
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
msbooster.predict-rt=true
msbooster.predict-spectra=true
msbooster.run-msbooster=false
msbooster.use-correlated-features=false
msfragger.Y_type_masses=0 203.07937 406.15874 568.21156 730.26438 892.3172 349.137279
msfragger.activation_types=all
msfragger.add_topN_complementary=0
msfragger.allowed_missed_cleavage_1=2
msfragger.allowed_missed_cleavage_2=2
msfragger.calibrate_mass=2
msfragger.check_spectral_files=true
msfragger.clip_nTerm_M=true
msfragger.deisotope=1
msfragger.delta_mass_exclude_ranges=(-1.5,3.5)
msfragger.deneutralloss=1
msfragger.diagnostic_fragments=204.086646 186.076086 168.065526 366.139466 144.0656 138.055 512.197375 292.1026925 274.0921325 657.2349 243.026426 405.079246 485.045576 308.09761
msfragger.diagnostic_intensity_filter=0.1
msfragger.digest_max_length=50
msfragger.digest_min_length=7
msfragger.fragment_ion_series=b,y,Y
msfragger.fragment_mass_tolerance=20
msfragger.fragment_mass_units=1
msfragger.group_variable=0
msfragger.intensity_transform=0
msfragger.ion_series_definitions=
msfragger.isotope_error=0/1/2
msfragger.labile_search_mode=nglycan
msfragger.localize_delta_mass=true
msfragger.mass_diff_to_variable_mod=0
msfragger.mass_offsets=0 568.21156 892.3172 1038.375109 1054.37002 1095.39657 1200.427929 1216.42284 1241.454479 1257.44939 1298.47594 1362.480749 1378.47566 1387.512388 1403.507299 1419.50221 1444.533849 1460.52876 1501.55531 1524.533569 1533.570297 1540.52848 1548.5448065 1549.565208 1565.560119 1581.55503 1589.5713565 1606.586669 1622.58158 1647.613219 1663.60813 1686.586389 1694.6027155 1695.623117 1702.5813 1704.63468 1710.5976265 1711.618028 1727.612939 1735.6292655 1736.649667 1751.6241765 1752.644578 1768.639489 1784.6344 1793.671128 1809.666039 1825.66095 1848.639209 1850.692589 1856.6555355 1857.675937 1864.63412 1866.6875 1872.6504465 1873.670848 1880.666773 1889.665759 1897.6820855 1898.702487 1907.71405 1913.6769965 1914.697398 1930.692309 1938.7086355 1946.68722 1954.7035465 1955.723948 1971.718859 1987.71377 1996.750498 2010.692029 2012.745409 2018.7083555 2019.728757 2026.68694 2028.74032 2042.719593 2043.7399945 2053.771959 2059.7349055 2060.755307 2069.76687 2075.7298165 2076.750218 2092.745129 2100.7614555 2101.781857 2108.74004 2110.79342 2116.7563665 2117.776768 2133.771679 2141.7880055 2142.808407 2157.7829165 2158.803318 2172.744849 2174.798229 2188.73976 2190.79314 2204.772413 2205.7928145 2206.813216 2215.824779 2221.7877255 2222.808127 2231.81969 2237.7826365 2245.798963 2246.8193645 2254.797949 2256.851329 2262.8142755 2263.834677 2270.79286 2278.8091865 2279.829588 2287.8459145 2313.87279 2320.856138 2334.797669 2336.851049 2350.79258 2350.830322 2352.84596 2352.871125 2366.825233 2391.856872 2393.87251 2407.851783 2408.8721845 2424.8670955 2425.887497 2432.883422 2434.89906 2448.878333 2457.877319 2459.930699 2463.8402655 2465.8936455 2475.92561 2481.8885565 2498.903869 2528.878053 2539.930419 2545.8933655 2553.909692 2555.92533 2569.904603 2570.9250045 2571.945406 2580.956969 2586.9199155 2621.983519 2627.9464655 2643.9413765 2644.961778 2674.935962 2701.983239 2715.962512 2716.9829135 2717.97815 2772.983973 2775.024776 2786.963246 2789.9992855 2791.019687 2798.015612000001 2814.010523 2823.009509 2861.0000195 2864.036059 2871.057149 2878.015332 2880.03097 2896.051046 2919.041882 2935.036793 2937.077596 2966.0313785 2968.0470165 3007.0579285 3009.0735665 3010.119133 3048.0844785 3064.0793895 3081.094702 3083.11034 3083.135505 3138.116163 3140.156966 3147.115149 3153.1158375 3155.1314755 3156.151877 3210.1372985 3226.1322095 3228.1730125 3229.168249 3234.148536000001 3284.174072 3300.168983 3302.209786 3372.1901185 3374.2057565 3405.200342 3407.241145 3447.2472935 3448.24253 3448.267695 3503.248353 3517.227626 3519.268429 3520.2636655 3521.284067 3589.2487615 3591.2643995 3594.300439 3663.285535 3665.301173 3665.326338 3704.312085 3720.306996 3738.34271 3809.343444 3812.3794835 3827.353993 3866.364905 3882.359816 3886.416257 3959.432629
msfragger.max_fragment_charge=2
msfragger.max_variable_mods_combinations=5000
msfragger.max_variable_mods_per_peptide=3
msfragger.min_fragments_modelling=2
msfragger.min_matched_fragments=4
msfragger.min_sequence_matches=2
msfragger.minimum_peaks=15
msfragger.minimum_ratio=0.00
msfragger.misc.fragger.clear-mz-hi=132
msfragger.misc.fragger.clear-mz-lo=126.11
msfragger.misc.fragger.digest-mass-hi=5000
msfragger.misc.fragger.digest-mass-lo=400
msfragger.misc.fragger.enzyme-dropdown-1=stricttrypsin
msfragger.misc.fragger.enzyme-dropdown-2=null
msfragger.misc.fragger.precursor-charge-hi=4
msfragger.misc.fragger.precursor-charge-lo=1
msfragger.misc.fragger.remove-precursor-range-hi=1.5
msfragger.misc.fragger.remove-precursor-range-lo=-1.5
msfragger.misc.slice-db=1
msfragger.num_enzyme_termini=2
msfragger.output_format=tsv_pepXML
msfragger.output_max_expect=50
msfragger.output_report_topN=1
msfragger.output_report_topN_dia1=5
msfragger.output_report_topN_dia2=3
msfragger.override_charge=false
msfragger.precursor_mass_lower=-20
msfragger.precursor_mass_mode=corrected
msfragger.precursor_mass_units=1
msfragger.precursor_mass_upper=20
msfragger.precursor_true_tolerance=20
msfragger.precursor_true_units=1
msfragger.remainder_fragment_masses=203.07937
msfragger.remove_precursor_peak=1
msfragger.report_alternative_proteins=true
msfragger.require_precursor=true
msfragger.restrict_deltamass_to=N
msfragger.reuse_dia_fragment_peaks=false
msfragger.run-msfragger=true
msfragger.search_enzyme_cut_1=KR
msfragger.search_enzyme_cut_2=
msfragger.search_enzyme_name_1=stricttrypsin
msfragger.search_enzyme_name_2=null
msfragger.search_enzyme_nocut_1=
msfragger.search_enzyme_nocut_2=
msfragger.search_enzyme_sense_1=C
msfragger.search_enzyme_sense_2=C
msfragger.table.fix-mods=0.0,C-Term Peptide,true,-1; 229.16293,N-Term Peptide,true,-1; 0.0,C-Term Protein,true,-1; 0.0,N-Term Protein,true,-1; 0.0,G (glycine),true,-1; 0.0,A (alanine),true,-1; 0.0,S (serine),true,-1; 0.0,P (proline),true,-1; 0.0,V (valine),true,-1; 0.0,T (threonine),true,-1; 57.02146,C (cysteine),true,-1; 0.0,L (leucine),true,-1; 0.0,I (isoleucine),true,-1; 0.0,N (asparagine),true,-1; 0.0,D (aspartic acid),true,-1; 0.0,Q (glutamine),true,-1; 229.16293,K (lysine),true,-1; 0.0,E (glutamic acid),true,-1; 0.0,M (methionine),true,-1; 0.0,H (histidine),true,-1; 0.0,F (phenylalanine),true,-1; 0.0,R (arginine),true,-1; 0.0,Y (tyrosine),true,-1; 0.0,W (tryptophan),true,-1; 0.0,B ,true,-1; 0.0,J,true,-1; 0.0,O,true,-1; 0.0,U,true,-1; 0.0,X,true,-1; 0.0,Z,true,-1
msfragger.table.var-mods=15.9949,M,true,3; 42.0106,[^,true,1; 79.96633,STY,false,3; -17.0265,nQnC,false,1; -18.0106,nE,false,1; 4.025107,K,false,3; 6.020129,R,false,3
msfragger.track_zero_topN=0
msfragger.use_all_mods_in_first_search=false
msfragger.use_topN_peaks=300
msfragger.write_calibrated_mzml=false
msfragger.write_uncalibrated_mgf=false
msfragger.zero_bin_accept_expect=0
msfragger.zero_bin_mult_expect=1
opair.activation1=HCD
opair.activation2=ETD
opair.filterOxonium=true
opair.glyco_db=
opair.max_glycans=4
opair.max_isotope_error=2
opair.min_isotope_error=0
opair.ms1_tol=20
opair.ms2_tol=20
opair.oxonium_filtering_file=
opair.oxonium_minimum_intensity=0.05
opair.reverse_scan_order=false
opair.run-opair=false
opair.single_scan_type=false
peptide-prophet.cmd-opts=--nonparam --expectscore --decoyprobs --masswidth 4000.0 --glyc
peptide-prophet.combine-pepxml=true
peptide-prophet.run-peptide-prophet=true
percolator.cmd-opts=--only-psms --no-terminate --post-processing-tdc
percolator.keep-tsv-files=false
percolator.min-prob=0.5
percolator.run-percolator=false
phi-report.dont-use-prot-proph-file=false
phi-report.filter=--sequential --prot 0.01 --mapmods
phi-report.pep-level-summary=false
phi-report.philosoher-msstats=false
phi-report.print-decoys=false
phi-report.prot-level-summary=false
phi-report.remove-contaminants=false
phi-report.run-report=true
protein-prophet.cmd-opts=--maxppmdiff 2000000
protein-prophet.run-protein-prophet=true
ptmprophet.cmdline=
ptmprophet.run-ptmprophet=false
ptmshepherd.adv_params=false
ptmshepherd.annotation-common=false
ptmshepherd.annotation-custom=false
ptmshepherd.annotation-glyco=true
ptmshepherd.annotation-unimod=false
ptmshepherd.annotation_file=
ptmshepherd.annotation_tol=0.01
ptmshepherd.cap_y_ions=0,203.07937,406.15874,568.21156,730.26438,892.3172,349.137279
ptmshepherd.decoy_type=1
ptmshepherd.diag_ions=204.086646,186.076086,168.065526,366.139466,144.0656,138.055,512.197375,292.1026925,274.0921325,657.2349,243.026426,405.079246,485.045576,308.09761
ptmshepherd.diagextract_mode=true
ptmshepherd.diagmine_diagMinFoldChange=3.0
ptmshepherd.diagmine_diagMinSpecDiff=25
ptmshepherd.diagmine_fragMinFoldChange=3.0
ptmshepherd.diagmine_fragMinPropensity=12.5
ptmshepherd.diagmine_fragMinSpecDiff=25
ptmshepherd.diagmine_minIonsPerSpec=2
ptmshepherd.diagmine_minPeps=25
ptmshepherd.diagmine_mode=false
ptmshepherd.diagmine_pepMinFoldChange=3.0
ptmshepherd.diagmine_pepMinSpecDiff=25
ptmshepherd.glyco_adducts=
ptmshepherd.glyco_fdr=0.01
ptmshepherd.glyco_isotope_max=3
ptmshepherd.glyco_isotope_min=-1
ptmshepherd.glyco_mode=true
ptmshepherd.glyco_ppm_tol=50
ptmshepherd.glycodatabase=
ptmshepherd.histo_smoothbins=2
ptmshepherd.iontype_a=false
ptmshepherd.iontype_b=true
ptmshepherd.iontype_c=false
ptmshepherd.iontype_x=false
ptmshepherd.iontype_y=true
ptmshepherd.iontype_z=false
ptmshepherd.localization_allowed_res=N
ptmshepherd.localization_background=4
ptmshepherd.max_adducts=0
ptmshepherd.n_glyco=true
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
ptmshepherd.prob_dhexOx=2,0.5,0.1
ptmshepherd.prob_dhexY=2,0.5
ptmshepherd.prob_neuacOx=2,0.05,0.2
ptmshepherd.prob_neugcOx=2,0.05,0.2
ptmshepherd.prob_phosphoOx=2,0.05,0.2
ptmshepherd.prob_regY=5,0.5
ptmshepherd.prob_sulfoOx=2,0.05,0.2
ptmshepherd.remainder_masses=203.07937
ptmshepherd.remove_glycan_delta_mass=true
ptmshepherd.run-shepherd=true
ptmshepherd.spectra_maxfragcharge=2
ptmshepherd.spectra_ppmtol=20
ptmshepherd.varmod_masses=
quantitation.run-label-free-quant=false
run-psm-validation=true
run-validation-tab=true
saintexpress.fragpipe.cmd-opts=
saintexpress.max-replicates=3
saintexpress.run-saint-express=true
saintexpress.virtual-controls=100
speclibgen.easypqp.extras.max_delta_ppm=15
speclibgen.easypqp.extras.max_delta_unimod=0.02
speclibgen.easypqp.extras.rt_lowess_fraction=0
speclibgen.easypqp.fragment.a=false
speclibgen.easypqp.fragment.b=true
speclibgen.easypqp.fragment.c=false
speclibgen.easypqp.fragment.x=false
speclibgen.easypqp.fragment.y=true
speclibgen.easypqp.fragment.z=false
speclibgen.easypqp.im-cal=Automatic selection of a run as reference IM
speclibgen.easypqp.neutral_loss=false
speclibgen.easypqp.rt-cal=noiRT
speclibgen.easypqp.select-file.text=
speclibgen.easypqp.select-im-file.text=
speclibgen.keep-intermediate-files=false
speclibgen.run-speclibgen=false
tab-run.delete_calibrated_mzml=false
tab-run.delete_temp_files=false
tab-run.sub_mzml_prob_threshold=0.5
tab-run.write_sub_mzml=false
tmtintegrator.add_Ref=-1
tmtintegrator.aggregation_method=0
tmtintegrator.allow_overlabel=true
tmtintegrator.allow_unlabeled=false
tmtintegrator.best_psm=true
tmtintegrator.channel_num=TMT-10
tmtintegrator.dont-run-fq-lq=false
tmtintegrator.glyco_qval=0.01
tmtintegrator.groupby=-1
tmtintegrator.log2transformed=true
tmtintegrator.max_pep_prob_thres=0
tmtintegrator.min_ntt=0
tmtintegrator.min_pep_prob=0.9
tmtintegrator.min_percent=0.05
tmtintegrator.min_purity=0.5
tmtintegrator.min_site_prob=0
tmtintegrator.mod_tag=N-glyco
tmtintegrator.ms1_int=true
tmtintegrator.outlier_removal=true
tmtintegrator.print_RefInt=false
tmtintegrator.prot_exclude=none
tmtintegrator.prot_norm=1
tmtintegrator.psm_norm=false
tmtintegrator.quant_level=2
tmtintegrator.ref_tag=pool
tmtintegrator.run-tmtintegrator=true
tmtintegrator.tolerance=20
tmtintegrator.top3_pep=true
tmtintegrator.unique_gene=0
tmtintegrator.unique_pep=false
tmtintegrator.use_glycan_composition=true
workflow.description=<p style\="margin-top\: 0">For search and TMT quantitation of enriched N-glycopeptides fragmented with CID/HCD. Performs MSFragger glyco search, glycan FDR control in PTM-Shepherd, and TMT quant/summarization with TMT-Integrator. Settings are provided for TMT-10 with virtual reference channel - method can be adapated for other TMT settings by adjusting TMT-Integrator parameters.</p>
workflow.input.data-type.im-ms=false
workflow.input.data-type.regular-ms=true
workflow.saved-with-ver=20.0-build5
