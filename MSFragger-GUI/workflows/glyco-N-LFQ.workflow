# Workflow: glyco-N-LFQ



crystalc.run-crystalc=false
database.decoy-tag=rev_
diann.fragpipe.cmd-opts=
diann.generate-msstats=true
diann.heavy=
diann.library=
diann.light=
diann.medium=
diann.q-value=0.01
diann.quantification-strategy=3
diann.quantification-strategy-2=QuantUMS (high accuracy)
diann.run-dia-nn=false
diann.run-dia-plex=false
diann.run-specific-protein-q-value=false
diann.unrelated-runs=false
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
ionquant.locprob=0
ionquant.maxlfq=1
ionquant.mbr=0
ionquant.mbrimtol=0.05
ionquant.mbrmincorr=0
ionquant.mbrrttol=1
ionquant.mbrtoprun=10
ionquant.medium=
ionquant.minfreq=0
ionquant.minions=1
ionquant.minisotopes=1
ionquant.minscans=1
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
msfragger.Y_type_masses=0 203.07937 406.15874 568.21156 730.26438 892.3172 349.137279
msfragger.activation_types=all
msfragger.allowed_missed_cleavage_1=2
msfragger.allowed_missed_cleavage_2=2
msfragger.analyzer_types=all
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
msfragger.mass_offsets=0 568.2115783691 892.3172302246 1038.3751373291 1054.3700561523 1095.3966064453 1200.4279632568 1216.4228820801 1241.4545135498 1257.449432373 1298.475982666 1362.4807891846 1378.4757080078 1387.5124206543 1403.5073394775 1419.5022583008 1444.5338897705 1460.5288085938 1501.5553588867 1524.5336151123 1533.5703277588 1540.5285339355 1548.5448608398 1549.565246582 1565.5601654053 1581.5550842285 1589.5714111328 1606.5867156982 1622.5816345215 1647.6132659912 1663.6081848145 1686.58644104 1694.6027679443 1695.6231536865 1702.5813598633 1704.6347351074 1710.5976867676 1711.6180725098 1727.612991333 1735.6293182373 1736.6497039795 1751.6242370605 1752.6446228027 1768.639541626 1784.6344604492 1793.6711730957 1809.6660919189 1825.6610107422 1848.6392669678 1850.6926422119 1856.6555938721 1857.6759796143 1864.634185791 1866.6875610352 1872.6505126953 1873.6708984375 1880.6668395996 1889.6658172607 1897.682144165 1898.7025299072 1907.7141113281 1913.6770629883 1914.6974487305 1930.6923675537 1938.708694458 1946.687286377 1954.7036132812 1955.7239990234 1971.7189178467 1987.7138366699 1996.7505493164 2010.6920928955 2012.7454681396 2018.7084197998 2019.728805542 2026.6870117188 2028.7403869629 2042.7196655273 2043.7400512695 2053.7720184326 2059.7349700928 2060.755355835 2069.7669372559 2075.729888916 2076.7502746582 2092.7451934814 2100.7615203857 2101.7819061279 2108.7401123047 2110.7934875488 2116.756439209 2117.7768249512 2133.7717437744 2141.7880706787 2142.8084564209 2157.782989502 2158.8033752441 2172.7449188232 2174.7982940674 2188.7398376465 2190.7932128906 2204.7724914551 2205.7928771973 2206.8132629395 2215.8248443604 2221.7877960205 2222.8081817627 2231.8197631836 2237.7827148438 2245.799041748 2246.8194274902 2254.7980194092 2256.8513946533 2262.8143463135 2263.8347320557 2270.7929382324 2278.8092651367 2279.8296508789 2287.8459777832 2313.8728637695 2320.8562011719 2334.797744751 2336.8511199951 2350.7926635742 2350.8303985596 2352.8460388184 2352.8711700439 2366.8253173828 2391.8569488525 2393.8725891113 2407.8518676758 2408.872253418 2424.8671722412 2425.8875579834 2432.8834991455 2434.8991394043 2448.8784179688 2457.8773956299 2459.930770874 2463.84034729 2465.8937225342 2475.9256896973 2481.8886413574 2498.9039459229 2528.8781433105 2539.9304962158 2545.893447876 2553.9097747803 2555.9254150391 2569.9046936035 2570.9250793457 2571.9454650879 2580.9570465088 2586.9199981689 2621.9835968018 2627.9465484619 2643.9414672852 2644.9618530273 2674.936050415 2701.9833221436 2715.962600708 2716.9829864502 2717.9782409668 2772.9840698242 2775.0248413086 2786.9633483887 2789.9993743896 2791.0197601318 2798.0157012939 2814.0106201172 2823.0095977783 2861.0001220703 2864.0361480713 2871.057220459 2878.0154266357 2880.0310668945 2896.0511169434 2919.0419769287 2935.036895752 2937.0776672363 2966.0314788818 2968.0471191406 3007.0580291748 3009.0736694336 3010.1191864014 3048.0845794678 3064.079498291 3081.0948028564 3083.1104431152 3083.1355743408 3138.1162719727 3140.157043457 3147.1152496338 3153.1159362793 3155.1315765381 3156.1519622803 3210.1374053955 3226.1323242188 3228.1730957031 3229.1683502197 3234.148651123 3284.1741790771 3300.1690979004 3302.2098693848 3372.1902313232 3374.205871582 3405.2004547119 3407.2412261963 3447.2473907471 3448.2426452637 3448.2677764893 3503.2484741211 3517.2277526855 3519.2685241699 3520.2637786865 3521.2841644287 3589.2488861084 3591.2645263672 3594.3005523682 3663.28565979 3665.3013000488 3665.3264312744 3704.312210083 3720.3071289062 3738.3428192139 3809.3435668945 3812.3795928955 3827.3541259766 3866.3650360107 3882.359954834 3886.4163665771 3959.4327545166 4028.4178619385 4101.4593811035 4103.4750213623 4118.4495544434 4176.4914093018 4247.517288208 4272.5237884521 4307.5496520996 4393.5500640869 4409.5449829102 4412.5810089111 4412.6061401367 4412.6187438965 4468.6072235107 4475.6031646729 4483.5817565918 4833.7394256592 5563.0085754395 6441.3465270996 6586.3840484619 6732.4419555664
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
msfragger.output_report_topN_dda_plus=5
msfragger.output_report_topN_dia1=5
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
msfragger.table.fix-mods=0.0,C-Term Peptide,true,-1; 0.0,N-Term Peptide,true,-1; 0.0,C-Term Protein,true,-1; 0.0,N-Term Protein,true,-1; 0.0,G (glycine),true,-1; 0.0,A (alanine),true,-1; 0.0,S (serine),true,-1; 0.0,P (proline),true,-1; 0.0,V (valine),true,-1; 0.0,T (threonine),true,-1; 57.02146,C (cysteine),true,-1; 0.0,L (leucine),true,-1; 0.0,I (isoleucine),true,-1; 0.0,N (asparagine),true,-1; 0.0,D (aspartic acid),true,-1; 0.0,Q (glutamine),true,-1; 0.0,K (lysine),true,-1; 0.0,E (glutamic acid),true,-1; 0.0,M (methionine),true,-1; 0.0,H (histidine),true,-1; 0.0,F (phenylalanine),true,-1; 0.0,R (arginine),true,-1; 0.0,Y (tyrosine),true,-1; 0.0,W (tryptophan),true,-1; 0.0,B ,true,-1; 0.0,J,true,-1; 0.0,O,true,-1; 0.0,U,true,-1; 0.0,X,true,-1; 0.0,Z,true,-1
msfragger.table.var-mods=15.9949,M,true,3; 42.0106,[^,true,1; 79.96633,STY,false,3; -17.0265,nQnC,false,1; -18.0106,nE,false,1; 4.025107,K,false,3; 6.020129,R,false,3
msfragger.track_zero_topN=0
msfragger.use_all_mods_in_first_search=false
msfragger.use_detailed_offsets=false
msfragger.use_topN_peaks=300
msfragger.write_calibrated_mzml=false
msfragger.write_uncalibrated_mgf=false
msfragger.zero_bin_accept_expect=0
msfragger.zero_bin_mult_expect=1
opair.activation1=HCD
opair.activation2=ETD
opair.filterOxonium=true
opair.glyco_db=HexNAc(2)Hex(1),HexNAc(2)Hex(3),HexNAc(2)Hex(3)Fuc(1),HexNAc(2)Hex(4),HexNAc(3)Hex(3),HexNAc(2)Hex(4)Fuc(1),HexNAc(2)Hex(5),HexNAc(3)Hex(3)Fuc(1),HexNAc(3)Hex(4),HexNAc(4)Hex(3),HexNAc(2)Hex(5)Fuc(1),HexNAc(2)Hex(6),HexNAc(3)Hex(3)Fuc(2),HexNAc(3)Hex(4)Fuc(1),HexNAc(3)Hex(5),HexNAc(4)Hex(3)Fuc(1),HexNAc(4)Hex(4),HexNAc(5)Hex(3),HexNAc(2)Hex(6)Fuc(1),HexNAc(3)Hex(3)Fuc(3),HexNAc(2)Hex(7),HexNAc(3)Hex(4)NeuAc(1),HexNAc(3)Hex(4)Fuc(2),HexNAc(3)Hex(5)Fuc(1),HexNAc(3)Hex(6),HexNAc(4)Hex(3)NeuAc(1),HexNAc(4)Hex(4)Fuc(1),HexNAc(4)Hex(5),HexNAc(5)Hex(3)Fuc(1),HexNAc(5)Hex(4),HexNAc(2)Hex(7)Fuc(1),HexNAc(3)Hex(4)Fuc(1)NeuAc(1),HexNAc(3)Hex(4)Fuc(3),HexNAc(2)Hex(8),HexNAc(6)Hex(3),HexNAc(3)Hex(5)NeuAc(1),HexNAc(3)Hex(5)Fuc(2),HexNAc(3)Hex(6)Fuc(1),HexNAc(4)Hex(3)Fuc(1)NeuAc(1),HexNAc(4)Hex(3)Fuc(3),HexNAc(4)Hex(4)NeuAc(1),HexNAc(4)Hex(4)Fuc(2),HexNAc(4)Hex(5)Fuc(1),HexNAc(4)Hex(6),HexNAc(5)Hex(3)Fuc(2),HexNAc(5)Hex(4)Fuc(1),HexNAc(5)Hex(5),HexNAc(2)Hex(8)Fuc(1),HexNAc(6)Hex(3)Fuc(1),HexNAc(3)Hex(5)Fuc(1)NeuAc(1),HexNAc(3)Hex(5)Fuc(3),HexNAc(2)Hex(9),HexNAc(6)Hex(4),HexNAc(3)Hex(6)NeuAc(1),HexNAc(3)Hex(6)Fuc(2),HexNAc(4)Hex(3)NeuAc(2),HexNAc(3)Hex(7)Fuc(1),HexNAc(4)Hex(4)Fuc(1)NeuAc(1),HexNAc(4)Hex(4)Fuc(3),HexNAc(7)Hex(3),HexNAc(4)Hex(5)NeuAc(1),HexNAc(4)Hex(5)Fuc(2),HexNAc(4)Hex(6)Fuc(1),HexNAc(5)Hex(3)Fuc(1)NeuAc(1),HexNAc(4)Hex(7),HexNAc(5)Hex(4)NeuAc(1),HexNAc(5)Hex(4)Fuc(2),HexNAc(5)Hex(5)Fuc(1),HexNAc(5)Hex(6),HexNAc(6)Hex(3)Fuc(2),HexNAc(2)Hex(9)Fuc(1),HexNAc(6)Hex(4)Fuc(1),HexNAc(3)Hex(6)Fuc(1)NeuAc(1),HexNAc(3)Hex(6)Fuc(3),HexNAc(2)Hex(10),HexNAc(6)Hex(5),HexNAc(4)Hex(4)NeuAc(2),HexNAc(4)Hex(4)Fuc(2)NeuAc(1),HexNAc(7)Hex(3)Fuc(1),HexNAc(4)Hex(5)Fuc(1)NeuAc(1),HexNAc(4)Hex(5)Fuc(3),HexNAc(7)Hex(4),HexNAc(4)Hex(6)NeuAc(1),HexNAc(4)Hex(6)Fuc(2),HexNAc(4)Hex(7)Fuc(1),HexNAc(5)Hex(4)Fuc(1)NeuAc(1),HexNAc(5)Hex(4)Fuc(3),HexNAc(4)Hex(8),HexNAc(8)Hex(3),HexNAc(5)Hex(5)NeuAc(1),HexNAc(5)Hex(5)Fuc(2),HexNAc(5)Hex(6)Fuc(1),HexNAc(6)Hex(3)Fuc(1)NeuAc(1),HexNAc(6)Hex(3)Fuc(3),HexNAc(6)Hex(4)NeuAc(1),HexNAc(6)Hex(4)Fuc(2),HexNAc(2)Hex(10)Fuc(1),HexNAc(6)Hex(5)Fuc(1),HexNAc(2)Hex(11),HexNAc(6)Hex(6),HexNAc(4)Hex(5)NeuAc(2),HexNAc(4)Hex(5)Fuc(2)NeuAc(1),HexNAc(4)Hex(5)Fuc(4),HexNAc(7)Hex(4)Fuc(1),HexNAc(4)Hex(6)Fuc(1)NeuAc(1),HexNAc(4)Hex(6)Fuc(3),HexNAc(7)Hex(5),HexNAc(4)Hex(7)NeuAc(1),HexNAc(5)Hex(4)NeuAc(2),HexNAc(5)Hex(4)Fuc(2)NeuAc(1),HexNAc(4)Hex(8)Fuc(1),HexNAc(8)Hex(3)Fuc(1),HexNAc(5)Hex(5)Fuc(1)NeuAc(1),HexNAc(5)Hex(5)Fuc(3),HexNAc(4)Hex(9),HexNAc(5)Hex(6)NeuAc(1),HexNAc(5)Hex(6)Fuc(2),HexNAc(6)Hex(3)Fuc(2)NeuAc(1),HexNAc(9)Hex(3),HexNAc(6)Hex(5)Fuc(2),HexNAc(2)Hex(11)Fuc(1),HexNAc(6)Hex(6)Fuc(1),HexNAc(2)Hex(12),HexNAc(4)Hex(5)Fuc(1)NeuAc(2),HexNAc(6)Hex(7),HexNAc(4)Hex(5)Fuc(5),HexNAc(4)Hex(6)NeuAc(2),HexNAc(5)Hex(4)Fuc(1)NeuAc(2),HexNAc(7)Hex(6),HexNAc(5)Hex(5)NeuAc(2),HexNAc(5)Hex(5)Fuc(2)NeuAc(1),HexNAc(5)Hex(6)Fuc(1)NeuAc(1),HexNAc(5)Hex(6)Fuc(3),HexNAc(6)Hex(3)Fuc(1)NeuAc(2),HexNAc(8)Hex(5),HexNAc(6)Hex(4)NeuAc(2),HexNAc(5)Hex(8)Fuc(1),HexNAc(9)Hex(3)Fuc(1),HexNAc(2)Hex(10)Fuc(1)NeuAc(1),HexNAc(6)Hex(5)Fuc(1)NeuAc(1),HexNAc(9)Hex(4),HexNAc(6)Hex(6)NeuAc(1),HexNAc(6)Hex(7)Fuc(1),HexNAc(4)Hex(7)NeuAc(2),HexNAc(7)Hex(6)Fuc(1),HexNAc(4)Hex(8)Fuc(1)NeuAc(1),HexNAc(5)Hex(5)Fuc(1)NeuAc(2),HexNAc(7)Hex(7),HexNAc(5)Hex(6)NeuAc(2),HexNAc(5)Hex(6)Fuc(2)NeuAc(1),HexNAc(5)Hex(6)Fuc(4),HexNAc(8)Hex(5)Fuc(1),HexNAc(5)Hex(7)Fuc(1)NeuAc(1),HexNAc(9)Hex(4)Fuc(1),HexNAc(6)Hex(6)Fuc(1)NeuAc(1),HexNAc(6)Hex(7)NeuAc(1),HexNAc(6)Hex(7)Fuc(2),HexNAc(4)Hex(7)Fuc(1)NeuAc(2),HexNAc(7)Hex(7)Fuc(1),HexNAc(5)Hex(6)Fuc(1)NeuAc(2),HexNAc(5)Hex(6)Fuc(3)NeuAc(1),HexNAc(7)Hex(8),HexNAc(6)Hex(6)NeuAc(2),HexNAc(6)Hex(6)Fuc(4),HexNAc(4)Hex(5)NeuAc(4),HexNAc(6)Hex(7)Fuc(1)NeuAc(1),HexNAc(6)Hex(7)Fuc(3),HexNAc(7)Hex(4)Fuc(1)NeuAc(2),HexNAc(7)Hex(5)NeuAc(2),HexNAc(6)Hex(9)Fuc(1),HexNAc(5)Hex(6)NeuAc(3),HexNAc(7)Hex(8)Fuc(1),HexNAc(6)Hex(3)Fuc(4)NeuAc(2),HexNAc(5)Hex(7)Fuc(1)NeuAc(2),HexNAc(7)Hex(9),HexNAc(5)Hex(8)Fuc(4),HexNAc(6)Hex(6)Fuc(1)NeuAc(2),HexNAc(6)Hex(7)NeuAc(2),HexNAc(6)Hex(7)Fuc(4),HexNAc(4)Hex(7)Fuc(1)NeuAc(3),HexNAc(6)Hex(9)NeuAc(1),HexNAc(5)Hex(6)Fuc(1)NeuAc(3),HexNAc(7)Hex(8)NeuAc(1),HexNAc(5)Hex(6)Fuc(7),HexNAc(6)Hex(5)Fuc(1)NeuAc(3),HexNAc(6)Hex(6)NeuAc(3),HexNAc(6)Hex(7)Fuc(1)NeuAc(2),HexNAc(8)Hex(9),HexNAc(6)Hex(7)Fuc(5),HexNAc(7)Hex(7)NeuAc(2),HexNAc(7)Hex(7)Fuc(4),HexNAc(6)Hex(11)Fuc(1),HexNAc(5)Hex(6)Fuc(2)NeuAc(3),HexNAc(7)Hex(8)Fuc(1)NeuAc(1),HexNAc(7)Hex(8)Fuc(3),HexNAc(6)Hex(6)Fuc(1)NeuAc(3),HexNAc(6)Hex(7)NeuAc(3),HexNAc(6)Hex(7)Fuc(4)NeuAc(1),HexNAc(8)Hex(9)Fuc(1),HexNAc(7)Hex(4)NeuAc(4),HexNAc(7)Hex(7)Fuc(1)NeuAc(2),HexNAc(7)Hex(8)NeuAc(2),HexNAc(7)Hex(8)Fuc(4),HexNAc(6)Hex(7)Fuc(1)NeuAc(3),HexNAc(8)Hex(9)NeuAc(1),HexNAc(6)Hex(9)Fuc(1)NeuAc(2),HexNAc(6)Hex(9)Fuc(5),HexNAc(7)Hex(8)Fuc(3)NeuAc(1),HexNAc(9)Hex(10),HexNAc(7)Hex(8)Fuc(5),HexNAc(8)Hex(8)NeuAc(2),HexNAc(6)Hex(7)NeuAc(4),HexNAc(6)Hex(7)Fuc(4)NeuAc(2),HexNAc(8)Hex(9)Fuc(1)NeuAc(1),HexNAc(8)Hex(9)Fuc(3),HexNAc(5)Hex(6)Fuc(1)NeuAc(5),HexNAc(7)Hex(8)NeuAc(3),HexNAc(9)Hex(10)Fuc(1),HexNAc(6)Hex(7)Fuc(1)NeuAc(4),HexNAc(8)Hex(9)NeuAc(2),HexNAc(6)Hex(7)Fuc(5)NeuAc(2),HexNAc(7)Hex(6)Fuc(1)NeuAc(4),HexNAc(7)Hex(7)NeuAc(4),HexNAc(7)Hex(8)Fuc(3)NeuAc(2),HexNAc(6)Hex(7)Fuc(2)NeuAc(4),HexNAc(8)Hex(9)Fuc(3)NeuAc(1),HexNAc(8)Hex(10)NeuAc(2),HexNAc(7)Hex(7)Fuc(1)NeuAc(4),HexNAc(7)Hex(8)NeuAc(4),HexNAc(9)Hex(10)Fuc(3),HexNAc(10)Hex(11)Fuc(1),HexNAc(7)Hex(8)Fuc(1)NeuAc(4),HexNAc(6)Hex(7)Fuc(4)NeuAc(4),HexNAc(8)Hex(9)Fuc(3)NeuAc(2),HexNAc(8)Hex(10)NeuAc(3),HexNAc(9)Hex(10)Fuc(1)NeuAc(2),HexNAc(6)Hex(7)Fuc(5)NeuAc(4),HexNAc(9)Hex(7)Fuc(1)NeuAc(4),HexNAc(11)Hex(11)NeuAc(1),HexNAc(8)Hex(9)Fuc(1)NeuAc(4),HexNAc(8)Hex(10)NeuAc(4),HexNAc(10)Hex(12)Fuc(1)NeuAc(1),HexNAc(8)Hex(10)Fuc(6)NeuAc(1),HexNAc(12)Hex(5)Fuc(2)NeuAc(3),HexNAc(9)Hex(10)Fuc(3)NeuAc(2),HexNAc(10)Hex(7)Fuc(1)NeuAc(4),HexNAc(9)Hex(11)NeuAc(3),HexNAc(10)Hex(11)Fuc(3)NeuAc(2),HexNAc(10)Hex(11)Fuc(6)NeuAc(3),HexNAc(14)Hex(15)Fuc(6)NeuAc(1),HexNAc(14)Hex(15)Fuc(5)NeuAc(2),HexNAc(14)Hex(15)Fuc(6)NeuAc(2)
opair.max_glycans=1
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
phi-report.filter=--sequential --prot 0.01
phi-report.pep-level-summary=false
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
ptmshepherd.diagmine_diagMinFoldChange=3.0
ptmshepherd.diagmine_diagMinSpecDiff=25
ptmshepherd.diagmine_fragMinFoldChange=3.0
ptmshepherd.diagmine_fragMinPropensity=12.5
ptmshepherd.diagmine_fragMinSpecDiff=25
ptmshepherd.diagmine_minIonsPerSpec=2
ptmshepherd.diagmine_minPeps=25
ptmshepherd.diagmine_pepMinFoldChange=3.0
ptmshepherd.diagmine_pepMinSpecDiff=25
ptmshepherd.glyco_fdr=0.01
ptmshepherd.glyco_isotope_max=3
ptmshepherd.glyco_isotope_min=-1
ptmshepherd.glyco_ppm_tol=50
ptmshepherd.glycodatabase=HexNAc(2)Hex(1),HexNAc(2)Hex(3),HexNAc(2)Hex(3)Fuc(1),HexNAc(2)Hex(4),HexNAc(3)Hex(3),HexNAc(2)Hex(4)Fuc(1),HexNAc(2)Hex(5),HexNAc(3)Hex(3)Fuc(1),HexNAc(3)Hex(4),HexNAc(4)Hex(3),HexNAc(2)Hex(5)Fuc(1),HexNAc(2)Hex(6),HexNAc(3)Hex(3)Fuc(2),HexNAc(3)Hex(4)Fuc(1),HexNAc(3)Hex(5),HexNAc(4)Hex(3)Fuc(1),HexNAc(4)Hex(4),HexNAc(5)Hex(3),HexNAc(2)Hex(6)Fuc(1),HexNAc(3)Hex(3)Fuc(3),HexNAc(2)Hex(7),HexNAc(3)Hex(4)NeuAc(1),HexNAc(3)Hex(4)Fuc(2),HexNAc(3)Hex(5)Fuc(1),HexNAc(3)Hex(6),HexNAc(4)Hex(3)NeuAc(1),HexNAc(4)Hex(4)Fuc(1),HexNAc(4)Hex(5),HexNAc(5)Hex(3)Fuc(1),HexNAc(5)Hex(4),HexNAc(2)Hex(7)Fuc(1),HexNAc(3)Hex(4)Fuc(1)NeuAc(1),HexNAc(3)Hex(4)Fuc(3),HexNAc(2)Hex(8),HexNAc(6)Hex(3),HexNAc(3)Hex(5)NeuAc(1),HexNAc(3)Hex(5)Fuc(2),HexNAc(3)Hex(6)Fuc(1),HexNAc(4)Hex(3)Fuc(1)NeuAc(1),HexNAc(4)Hex(3)Fuc(3),HexNAc(4)Hex(4)NeuAc(1),HexNAc(4)Hex(4)Fuc(2),HexNAc(4)Hex(5)Fuc(1),HexNAc(4)Hex(6),HexNAc(5)Hex(3)Fuc(2),HexNAc(5)Hex(4)Fuc(1),HexNAc(5)Hex(5),HexNAc(2)Hex(8)Fuc(1),HexNAc(6)Hex(3)Fuc(1),HexNAc(3)Hex(5)Fuc(1)NeuAc(1),HexNAc(3)Hex(5)Fuc(3),HexNAc(2)Hex(9),HexNAc(6)Hex(4),HexNAc(3)Hex(6)NeuAc(1),HexNAc(3)Hex(6)Fuc(2),HexNAc(4)Hex(3)NeuAc(2),HexNAc(3)Hex(7)Fuc(1),HexNAc(4)Hex(4)Fuc(1)NeuAc(1),HexNAc(4)Hex(4)Fuc(3),HexNAc(7)Hex(3),HexNAc(4)Hex(5)NeuAc(1),HexNAc(4)Hex(5)Fuc(2),HexNAc(4)Hex(6)Fuc(1),HexNAc(5)Hex(3)Fuc(1)NeuAc(1),HexNAc(4)Hex(7),HexNAc(5)Hex(4)NeuAc(1),HexNAc(5)Hex(4)Fuc(2),HexNAc(5)Hex(5)Fuc(1),HexNAc(5)Hex(6),HexNAc(6)Hex(3)Fuc(2),HexNAc(2)Hex(9)Fuc(1),HexNAc(6)Hex(4)Fuc(1),HexNAc(3)Hex(6)Fuc(1)NeuAc(1),HexNAc(3)Hex(6)Fuc(3),HexNAc(2)Hex(10),HexNAc(6)Hex(5),HexNAc(4)Hex(4)NeuAc(2),HexNAc(4)Hex(4)Fuc(2)NeuAc(1),HexNAc(7)Hex(3)Fuc(1),HexNAc(4)Hex(5)Fuc(1)NeuAc(1),HexNAc(4)Hex(5)Fuc(3),HexNAc(7)Hex(4),HexNAc(4)Hex(6)NeuAc(1),HexNAc(4)Hex(6)Fuc(2),HexNAc(4)Hex(7)Fuc(1),HexNAc(5)Hex(4)Fuc(1)NeuAc(1),HexNAc(5)Hex(4)Fuc(3),HexNAc(4)Hex(8),HexNAc(8)Hex(3),HexNAc(5)Hex(5)NeuAc(1),HexNAc(5)Hex(5)Fuc(2),HexNAc(5)Hex(6)Fuc(1),HexNAc(6)Hex(3)Fuc(1)NeuAc(1),HexNAc(6)Hex(3)Fuc(3),HexNAc(6)Hex(4)NeuAc(1),HexNAc(6)Hex(4)Fuc(2),HexNAc(2)Hex(10)Fuc(1),HexNAc(6)Hex(5)Fuc(1),HexNAc(2)Hex(11),HexNAc(6)Hex(6),HexNAc(4)Hex(5)NeuAc(2),HexNAc(4)Hex(5)Fuc(2)NeuAc(1),HexNAc(4)Hex(5)Fuc(4),HexNAc(7)Hex(4)Fuc(1),HexNAc(4)Hex(6)Fuc(1)NeuAc(1),HexNAc(4)Hex(6)Fuc(3),HexNAc(7)Hex(5),HexNAc(4)Hex(7)NeuAc(1),HexNAc(5)Hex(4)NeuAc(2),HexNAc(5)Hex(4)Fuc(2)NeuAc(1),HexNAc(4)Hex(8)Fuc(1),HexNAc(8)Hex(3)Fuc(1),HexNAc(5)Hex(5)Fuc(1)NeuAc(1),HexNAc(5)Hex(5)Fuc(3),HexNAc(4)Hex(9),HexNAc(5)Hex(6)NeuAc(1),HexNAc(5)Hex(6)Fuc(2),HexNAc(6)Hex(3)Fuc(2)NeuAc(1),HexNAc(9)Hex(3),HexNAc(6)Hex(5)Fuc(2),HexNAc(2)Hex(11)Fuc(1),HexNAc(6)Hex(6)Fuc(1),HexNAc(2)Hex(12),HexNAc(4)Hex(5)Fuc(1)NeuAc(2),HexNAc(6)Hex(7),HexNAc(4)Hex(5)Fuc(5),HexNAc(4)Hex(6)NeuAc(2),HexNAc(5)Hex(4)Fuc(1)NeuAc(2),HexNAc(7)Hex(6),HexNAc(5)Hex(5)NeuAc(2),HexNAc(5)Hex(5)Fuc(2)NeuAc(1),HexNAc(5)Hex(6)Fuc(1)NeuAc(1),HexNAc(5)Hex(6)Fuc(3),HexNAc(6)Hex(3)Fuc(1)NeuAc(2),HexNAc(8)Hex(5),HexNAc(6)Hex(4)NeuAc(2),HexNAc(5)Hex(8)Fuc(1),HexNAc(9)Hex(3)Fuc(1),HexNAc(2)Hex(10)Fuc(1)NeuAc(1),HexNAc(6)Hex(5)Fuc(1)NeuAc(1),HexNAc(9)Hex(4),HexNAc(6)Hex(6)NeuAc(1),HexNAc(6)Hex(7)Fuc(1),HexNAc(4)Hex(7)NeuAc(2),HexNAc(7)Hex(6)Fuc(1),HexNAc(4)Hex(8)Fuc(1)NeuAc(1),HexNAc(5)Hex(5)Fuc(1)NeuAc(2),HexNAc(7)Hex(7),HexNAc(5)Hex(6)NeuAc(2),HexNAc(5)Hex(6)Fuc(2)NeuAc(1),HexNAc(5)Hex(6)Fuc(4),HexNAc(8)Hex(5)Fuc(1),HexNAc(5)Hex(7)Fuc(1)NeuAc(1),HexNAc(9)Hex(4)Fuc(1),HexNAc(6)Hex(6)Fuc(1)NeuAc(1),HexNAc(6)Hex(7)NeuAc(1),HexNAc(6)Hex(7)Fuc(2),HexNAc(4)Hex(7)Fuc(1)NeuAc(2),HexNAc(7)Hex(7)Fuc(1),HexNAc(5)Hex(6)Fuc(1)NeuAc(2),HexNAc(5)Hex(6)Fuc(3)NeuAc(1),HexNAc(7)Hex(8),HexNAc(6)Hex(6)NeuAc(2),HexNAc(6)Hex(6)Fuc(4),HexNAc(4)Hex(5)NeuAc(4),HexNAc(6)Hex(7)Fuc(1)NeuAc(1),HexNAc(6)Hex(7)Fuc(3),HexNAc(7)Hex(4)Fuc(1)NeuAc(2),HexNAc(7)Hex(5)NeuAc(2),HexNAc(6)Hex(9)Fuc(1),HexNAc(5)Hex(6)NeuAc(3),HexNAc(7)Hex(8)Fuc(1),HexNAc(6)Hex(3)Fuc(4)NeuAc(2),HexNAc(5)Hex(7)Fuc(1)NeuAc(2),HexNAc(7)Hex(9),HexNAc(5)Hex(8)Fuc(4),HexNAc(6)Hex(6)Fuc(1)NeuAc(2),HexNAc(6)Hex(7)NeuAc(2),HexNAc(6)Hex(7)Fuc(4),HexNAc(4)Hex(7)Fuc(1)NeuAc(3),HexNAc(6)Hex(9)NeuAc(1),HexNAc(5)Hex(6)Fuc(1)NeuAc(3),HexNAc(7)Hex(8)NeuAc(1),HexNAc(5)Hex(6)Fuc(7),HexNAc(6)Hex(5)Fuc(1)NeuAc(3),HexNAc(6)Hex(6)NeuAc(3),HexNAc(6)Hex(7)Fuc(1)NeuAc(2),HexNAc(8)Hex(9),HexNAc(6)Hex(7)Fuc(5),HexNAc(7)Hex(7)NeuAc(2),HexNAc(7)Hex(7)Fuc(4),HexNAc(6)Hex(11)Fuc(1),HexNAc(5)Hex(6)Fuc(2)NeuAc(3),HexNAc(7)Hex(8)Fuc(1)NeuAc(1),HexNAc(7)Hex(8)Fuc(3),HexNAc(6)Hex(6)Fuc(1)NeuAc(3),HexNAc(6)Hex(7)NeuAc(3),HexNAc(6)Hex(7)Fuc(4)NeuAc(1),HexNAc(8)Hex(9)Fuc(1),HexNAc(7)Hex(4)NeuAc(4),HexNAc(7)Hex(7)Fuc(1)NeuAc(2),HexNAc(7)Hex(8)NeuAc(2),HexNAc(7)Hex(8)Fuc(4),HexNAc(6)Hex(7)Fuc(1)NeuAc(3),HexNAc(8)Hex(9)NeuAc(1),HexNAc(6)Hex(9)Fuc(1)NeuAc(2),HexNAc(6)Hex(9)Fuc(5),HexNAc(7)Hex(8)Fuc(3)NeuAc(1),HexNAc(9)Hex(10),HexNAc(7)Hex(8)Fuc(5),HexNAc(8)Hex(8)NeuAc(2),HexNAc(6)Hex(7)NeuAc(4),HexNAc(6)Hex(7)Fuc(4)NeuAc(2),HexNAc(8)Hex(9)Fuc(1)NeuAc(1),HexNAc(8)Hex(9)Fuc(3),HexNAc(5)Hex(6)Fuc(1)NeuAc(5),HexNAc(7)Hex(8)NeuAc(3),HexNAc(9)Hex(10)Fuc(1),HexNAc(6)Hex(7)Fuc(1)NeuAc(4),HexNAc(8)Hex(9)NeuAc(2),HexNAc(6)Hex(7)Fuc(5)NeuAc(2),HexNAc(7)Hex(6)Fuc(1)NeuAc(4),HexNAc(7)Hex(7)NeuAc(4),HexNAc(7)Hex(8)Fuc(3)NeuAc(2),HexNAc(6)Hex(7)Fuc(2)NeuAc(4),HexNAc(8)Hex(9)Fuc(3)NeuAc(1),HexNAc(8)Hex(10)NeuAc(2),HexNAc(7)Hex(7)Fuc(1)NeuAc(4),HexNAc(7)Hex(8)NeuAc(4),HexNAc(9)Hex(10)Fuc(3),HexNAc(10)Hex(11)Fuc(1),HexNAc(7)Hex(8)Fuc(1)NeuAc(4),HexNAc(6)Hex(7)Fuc(4)NeuAc(4),HexNAc(8)Hex(9)Fuc(3)NeuAc(2),HexNAc(8)Hex(10)NeuAc(3),HexNAc(9)Hex(10)Fuc(1)NeuAc(2),HexNAc(6)Hex(7)Fuc(5)NeuAc(4),HexNAc(9)Hex(7)Fuc(1)NeuAc(4),HexNAc(11)Hex(11)NeuAc(1),HexNAc(8)Hex(9)Fuc(1)NeuAc(4),HexNAc(8)Hex(10)NeuAc(4),HexNAc(10)Hex(12)Fuc(1)NeuAc(1),HexNAc(8)Hex(10)Fuc(6)NeuAc(1),HexNAc(12)Hex(5)Fuc(2)NeuAc(3),HexNAc(9)Hex(10)Fuc(3)NeuAc(2),HexNAc(10)Hex(7)Fuc(1)NeuAc(4),HexNAc(9)Hex(11)NeuAc(3),HexNAc(10)Hex(11)Fuc(3)NeuAc(2),HexNAc(10)Hex(11)Fuc(6)NeuAc(3),HexNAc(14)Hex(15)Fuc(6)NeuAc(1),HexNAc(14)Hex(15)Fuc(5)NeuAc(2),HexNAc(14)Hex(15)Fuc(6)NeuAc(2)
ptmshepherd.histo_smoothbins=2
ptmshepherd.iontype_a=false
ptmshepherd.iontype_b=true
ptmshepherd.iontype_c=false
ptmshepherd.iontype_x=false
ptmshepherd.iontype_y=true
ptmshepherd.iontype_z=false
ptmshepherd.iterloc_maxEpoch=100
ptmshepherd.iterloc_mode=false
ptmshepherd.localization_allowed_res=N
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
ptmshepherd.print_full_glyco_params=true
ptmshepherd.prob_mass=1.0
ptmshepherd.remainder_masses=203.07937
ptmshepherd.remove_glycan_delta_mass=true
ptmshepherd.run-shepherd=true
ptmshepherd.run_diagextract_mode=true
ptmshepherd.run_diagmine_mode=false
ptmshepherd.run_glyco_mode=true
ptmshepherd.spectra_maxfragcharge=2
ptmshepherd.spectra_ppmtol=20
ptmshepherd.varmod_masses=
quantitation.run-label-free-quant=true
run-psm-validation=true
run-validation-tab=true
saintexpress.fragpipe.cmd-opts=
saintexpress.max-replicates=3
saintexpress.run-saint-express=true
saintexpress.virtual-controls=100
skyline.run-skyline=false
skyline.skyline=true
skyline.skyline-custom=false
skyline.skyline-custom-path=
skyline.skyline-daily=false
skyline.skyline-mode=0
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
speclibgen.easypqp.labile_mode=N-glyco+HexNAc
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
workflow.description=<p style\="margin-top\: 0">For search and label-free quantitation of enriched N-glycopeptides fragmented with CID/HCD. Performs glycan assignment/FDR control in PTM-Shepherd prior to quant</p>
workflow.input.data-type.im-ms=false
workflow.input.data-type.regular-ms=true
workflow.misc.save-sdrf=true
workflow.saved-with-ver=21.2-build39
