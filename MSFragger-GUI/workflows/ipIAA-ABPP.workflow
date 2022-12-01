# Workflow: ipIAA-ABPP

crystalc.run-crystalc=false
database.decoy-tag=rev_
diann.fragpipe.cmd-opts=
diann.library=
diann.q-value=0.01
diann.quantification-strategy=3
diann.run-dia-nn=false
diann.run-specific-protein-q-value=0.01
diann.unrelated-runs=false
diann.use-predicted-spectra=true
diaumpire.AdjustFragIntensity=false
diaumpire.BoostComplementaryIon=false
diaumpire.CorrThreshold=
diaumpire.DeltaApex=
diaumpire.ExportPrecursorPeak=false
diaumpire.Q1=false
diaumpire.Q2=false
diaumpire.Q3=false
diaumpire.RFmax=
diaumpire.RPmax=
diaumpire.RTOverlap=
diaumpire.SE.EstimateBG=false
diaumpire.SE.IsoPattern=
diaumpire.SE.MS1PPM=
diaumpire.SE.MS2PPM=
diaumpire.SE.MS2SN=
diaumpire.SE.MassDefectFilter=false
diaumpire.SE.MassDefectOffset=
diaumpire.SE.NoMissedScan=
diaumpire.SE.SN=
diaumpire.run-diaumpire=false
freequant.mz-tol=10
freequant.rt-tol=0.4
freequant.run-freequant=false
ionquant.excludemods=
ionquant.heavy=C467.2529
ionquant.imtol=0.05
ionquant.ionfdr=0.01
ionquant.light=C463.2366
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
ionquant.minisotopes=1
ionquant.minscans=1
ionquant.mztol=10
ionquant.normalization=0
ionquant.peptidefdr=1
ionquant.proteinfdr=1
ionquant.requantify=1
ionquant.rttol=0.4
ionquant.run-ionquant=true
ionquant.tp=0
ionquant.uniqueness=0
ionquant.use-labeling=true
ionquant.use-lfq=false
ionquant.writeindex=0
msbooster.predict-rt=true
msbooster.predict-spectra=true
msbooster.run-msbooster=false
msbooster.use-correlated-features=false
msfragger.Y_type_masses=
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
msfragger.diagnostic_fragments=
msfragger.diagnostic_intensity_filter=0
msfragger.digest_max_length=50
msfragger.digest_min_length=7
msfragger.fragment_ion_series=b,y
msfragger.fragment_mass_tolerance=20
msfragger.fragment_mass_units=1
msfragger.intensity_transform=0
msfragger.ion_series_definitions=
msfragger.isotope_error=0/1/2/3
msfragger.labile_search_mode=off
msfragger.localize_delta_mass=false
msfragger.mass_diff_to_variable_mod=0
msfragger.mass_offsets=0
msfragger.max_fragment_charge=2
msfragger.max_variable_mods_combinations=5000
msfragger.max_variable_mods_per_peptide=3
msfragger.min_fragments_modelling=2
msfragger.min_matched_fragments=4
msfragger.min_sequence_matches=2
msfragger.minimum_peaks=15
msfragger.minimum_ratio=0.01
msfragger.misc.fragger.clear-mz-hi=0
msfragger.misc.fragger.clear-mz-lo=0
msfragger.misc.fragger.digest-mass-hi=5000
msfragger.misc.fragger.digest-mass-lo=500
msfragger.misc.fragger.enzyme-dropdown-1=stricttrypsin
msfragger.misc.fragger.enzyme-dropdown-2=null
msfragger.misc.fragger.precursor-charge-hi=4
msfragger.misc.fragger.precursor-charge-lo=1
msfragger.misc.fragger.remove-precursor-range-hi=1.5
msfragger.misc.fragger.remove-precursor-range-lo=-1.5
msfragger.misc.slice-db=1
msfragger.num_enzyme_termini=2
msfragger.output_format=pepXML_pin
msfragger.output_max_expect=50
msfragger.output_report_topN=1
msfragger.override_charge=false
msfragger.precursor_mass_lower=-20
msfragger.precursor_mass_mode=selected
msfragger.precursor_mass_units=1
msfragger.precursor_mass_upper=20
msfragger.precursor_true_tolerance=20
msfragger.precursor_true_units=1
msfragger.remainder_fragment_masses=
msfragger.remove_precursor_peak=0
msfragger.report_alternative_proteins=true
msfragger.restrict_deltamass_to=all
msfragger.run-msfragger=true
msfragger.search_enzyme_cut_1=KR
msfragger.search_enzyme_cut_2=
msfragger.search_enzyme_name_1=stricttrypsin
msfragger.search_enzyme_name_2=null
msfragger.search_enzyme_nocut_1=
msfragger.search_enzyme_nocut_2=
msfragger.search_enzyme_sense_1=C
msfragger.search_enzyme_sense_2=C
msfragger.table.fix-mods=0.0,C-Term Peptide,true,-1; 0.0,N-Term Peptide,true,-1; 0.0,C-Term Protein,true,-1; 0.0,N-Term Protein,true,-1; 0.0,G (glycine),true,-1; 0.0,A (alanine),true,-1; 0.0,S (serine),true,-1; 0.0,P (proline),true,-1; 0.0,V (valine),true,-1; 0.0,T (threonine),true,-1; 0.0,C (cysteine),true,-1; 0.0,L (leucine),true,-1; 0.0,I (isoleucine),true,-1; 0.0,N (asparagine),true,-1; 0.0,D (aspartic acid),true,-1; 0.0,Q (glutamine),true,-1; 0.0,K (lysine),true,-1; 0.0,E (glutamic acid),true,-1; 0.0,M (methionine),true,-1; 0.0,H (histidine),true,-1; 0.0,F (phenylalanine),true,-1; 0.0,R (arginine),true,-1; 0.0,Y (tyrosine),true,-1; 0.0,W (tryptophan),true,-1; 0.0,B ,true,-1; 0.0,J,true,-1; 0.0,O,true,-1; 0.0,U,true,-1; 0.0,X,true,-1; 0.0,Z,true,-1
msfragger.table.var-mods=15.9949,M,true,3; 42.0106,[^,true,1; 79.96633,STY,false,3; -17.0265,nQnC,false,1; -18.0106,nE,false,1; 410.2314,C,false,2; 406.2151,C,false,3; 8.014199,K,false,2; 10.008269,R,false,2; 463.2366,C,true,3; 467.2529,C,true,3; 57.02146,C,true,3; 0.0,C,false,3; 0.0,site_16,false,1
msfragger.track_zero_topN=0
msfragger.use_all_mods_in_first_search=true
msfragger.use_topN_peaks=150
msfragger.write_calibrated_mzml=false
msfragger.zero_bin_accept_expect=0
msfragger.zero_bin_mult_expect=1
opair.activation1=HCD
opair.activation2=ETD
opair.glyco_db=
opair.max_glycans=4
opair.max_isotope_error=2
opair.min_isotope_error=0
opair.ms1_tol=20
opair.ms2_tol=20
opair.reverse_scan_order=false
opair.run-opair=false
opair.single_scan_type=false
peptide-prophet.cmd-opts=--decoyprobs --ppm --accmass --nonparam --expectscore
peptide-prophet.combine-pepxml=false
peptide-prophet.run-peptide-prophet=false
percolator.cmd-opts=--only-psms --no-terminate --post-processing-tdc
percolator.keep-tsv-files=false
percolator.min-prob=0.5
percolator.run-percolator=true
phi-report.dont-use-prot-proph-file=false
phi-report.filter=--sequential --prot 0.01
phi-report.pep-level-summary=false
phi-report.philosoher-msstats=false
phi-report.print-decoys=false
phi-report.prot-level-summary=true
phi-report.remove-contaminants=false
phi-report.run-report=true
protein-prophet.cmd-opts=--maxppmdiff 2000000
protein-prophet.run-protein-prophet=true
ptmprophet.cmdline=KEEPOLD STATIC EM\=1 NIONS\=b C\:463.2366,C\:467.2529,C\:57.02416,M\:15.9949 MINPROB\=0.5
ptmprophet.run-ptmprophet=false
ptmshepherd.adv_params=false
ptmshepherd.annotation-common=false
ptmshepherd.annotation-custom=false
ptmshepherd.annotation-glyco=false
ptmshepherd.annotation-unimod=true
ptmshepherd.annotation_file=
ptmshepherd.annotation_tol=0.01
ptmshepherd.cap_y_ions=
ptmshepherd.decoy_type=1
ptmshepherd.diag_ions=
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
ptmshepherd.glyco_fdr=1.00
ptmshepherd.glyco_isotope_max=3
ptmshepherd.glyco_isotope_min=-1
ptmshepherd.glyco_mode=false
ptmshepherd.glyco_ppm_tol=50
ptmshepherd.glycodatabase=
ptmshepherd.histo_smoothbins=2
ptmshepherd.iontype_a=false
ptmshepherd.iontype_b=true
ptmshepherd.iontype_c=false
ptmshepherd.iontype_x=false
ptmshepherd.iontype_y=true
ptmshepherd.iontype_z=false
ptmshepherd.localization_allowed_res=
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
ptmshepherd.remainder_masses=
ptmshepherd.remove_glycan_delta_mass=true
ptmshepherd.run-shepherd=false
ptmshepherd.spectra_maxfragcharge=2
ptmshepherd.spectra_ppmtol=20
ptmshepherd.varmod_masses=Failed_Carbamidomethylation\:-57.02146
quantitation.run-label-free-quant=true
run-psm-validation=true
run-validation-tab=true
saintexpress.fragpipe.cmd-opts=
saintexpress.max-replicates=10
saintexpress.run-saint-express=false
saintexpress.virtual-controls=100
speclibgen.easypqp.extras.max_delta_ppm=15
speclibgen.easypqp.extras.max_delta_unimod=0.02
speclibgen.easypqp.extras.rt_lowess_fraction=0.04
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
tmtintegrator.add_Ref=-1
tmtintegrator.aggregation_method=0
tmtintegrator.allow_overlabel=true
tmtintegrator.allow_unlabeled=true
tmtintegrator.best_psm=true
tmtintegrator.channel_num=TMT-6
tmtintegrator.dont-run-fq-lq=false
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
workflow.description=<p class\="MsoNormal"><span style\="line-height\: 107%"><font size\="9.0pt" face\="Arial,sans-serif" color\="black">Workflow for the analysis of chemical proteomics data for profiling cysteines using isotopic isopropyl iodoacetamide alkyne probes (IPIAA). Closed search with MSFragger, PSM validation using Percolator, isotope labeling based (L\:H) quantification using IonQuant. Details in Heta et al. \u201CSP3-enabled rapid and high coverage chemoproteomic identification of cell-state dependent redox-sensitive cysteines\u201D, in review.</font></span></p>
workflow.input.data-type.im-ms=false
workflow.input.data-type.regular-ms=true
workflow.saved-with-ver=19.0-build32
