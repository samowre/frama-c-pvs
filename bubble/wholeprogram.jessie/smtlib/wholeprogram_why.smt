(benchmark wholeprogramuwhy.smt
  :status unknown
  :extrasorts (c_Boolean)
  :extrafuns ((c_Boolean_true c_Boolean))
  :extrafuns ((c_Boolean_false c_Boolean))
  :assumption
                   (forall (?bcd c_Boolean) (or (= ?bcd c_Boolean_true)
                                            (= ?bcd c_Boolean_false)))
  :assumption
                   (not
                      (= c_Boolean_true  c_Boolean_false))
  :extrasorts (Unit)
  :extrafuns ((tt Unit))
:extrasorts (c_unsorted)
:extrasorts (c_sorted)
:extrasorts (c_type)
;;;; Why logic c_int
:extrafuns ((c_int  c_type))

;;;; Why logic c_bool
:extrafuns ((c_bool  c_type))

;;;; Why logic c_real
:extrafuns ((c_real  c_type))

;;;; Why logic c_unit
:extrafuns ((c_unit  c_type))

;;;; Why logic c_sort
:extrafuns ((c_sort c_type c_unsorted c_sorted))

;;;; Why logic int2u
:extrafuns ((int2u Int c_unsorted))

;;;; Why logic bool2u
:extrafuns ((bool2u c_Boolean c_unsorted))

;;;; Why logic real2u
:extrafuns ((real2u Real c_unsorted))

;;;; Why logic unit2u
:extrafuns ((unit2u Unit c_unsorted))

;;;; Why logic s2int
:extrafuns ((s2int c_sorted Int))

;;;; Why logic s2bool
:extrafuns ((s2bool c_sorted c_Boolean))

;;;; Why logic s2real
:extrafuns ((s2real c_sorted Real))

;;;; Why logic s2unit
:extrafuns ((s2unit c_sorted Unit))

;; Why axiom s2int_inv_int2u
 :assumption
   (forall (?xu0_1 Int) (= (s2int (c_sort c_int (int2u ?xu0_1))) ?xu0_1))

;; Why axiom s2bool_inv_bool2u
 :assumption
   (forall (?xu0_2 c_Boolean)
   (= (s2bool (c_sort c_bool (bool2u ?xu0_2))) ?xu0_2))

;; Why axiom s2real_inv_real2u
 :assumption
   (forall (?xu0_3 Real) (= (s2real (c_sort c_real (real2u ?xu0_3))) ?xu0_3))

;; Why axiom s2unit_inv_unit2u
 :assumption
   (forall (?xu0_4 Unit) (= (s2unit (c_sort c_unit (unit2u ?xu0_4))) ?xu0_4))

;; Why axiom int2u_inv_s2int
 :assumption
   (forall (?xu0_5 c_unsorted)
   (= (c_sort c_int (int2u (s2int (c_sort c_int ?xu0_5))))
   (c_sort c_int ?xu0_5)))

;; Why axiom bool2u_inv_s2bool
 :assumption
   (forall (?xu0_6 c_unsorted)
   (= (c_sort c_bool (bool2u (s2bool (c_sort c_bool ?xu0_6))))
   (c_sort c_bool ?xu0_6)))

;; Why axiom real2u_inv_s2real
 :assumption
   (forall (?xu0_7 c_unsorted)
   (= (c_sort c_real (real2u (s2real (c_sort c_real ?xu0_7))))
   (c_sort c_real ?xu0_7)))

;; Why axiom unit2u_inv_s2unit
 :assumption
   (forall (?xu0_8 c_unsorted)
   (= (c_sort c_unit (unit2u (s2unit (c_sort c_unit ?xu0_8))))
   (c_sort c_unit ?xu0_8)))

;;;; Why logic eq_unit
:extrapreds ((eq_unit Unit Unit))

;;;; Why logic neq_unit
:extrapreds ((neq_unit Unit Unit))

;;;; Why logic eq_bool
:extrapreds ((eq_bool c_Boolean c_Boolean))

;;;; Why logic neq_bool
:extrapreds ((neq_bool c_Boolean c_Boolean))

;;;; Why logic eq_int
:extrapreds ((eq_int Int Int))

;;;; Why logic neq_int
:extrapreds ((neq_int Int Int))

;;;; Why logic zwf_zero
:extrapreds ((zwf_zero Int Int))

;; Why axiom zwf_zero_def
 :assumption
   (forall (?au27_9 Int)
   (forall (?bu26_10 Int)
   (iff (and (<= 0 ?bu26_10) (< ?au27_9 ?bu26_10))
   (and (<= 0 ?bu26_10) (< ?au27_9 ?bu26_10)))))

;;;; Why logic bool_and
:extrafuns ((bool_and c_Boolean c_Boolean c_Boolean))

;;;; Why logic bool_or
:extrafuns ((bool_or c_Boolean c_Boolean c_Boolean))

;;;; Why logic bool_xor
:extrafuns ((bool_xor c_Boolean c_Boolean c_Boolean))

;;;; Why logic bool_not
:extrafuns ((bool_not c_Boolean c_Boolean))

;; Why axiom bool_and_def
 :assumption
   (forall (?au31_11 c_Boolean)
   (forall (?bu30_12 c_Boolean)
   (iff (= (bool_and ?au31_11 ?bu30_12) c_Boolean_true)
   (and (= ?au31_11 c_Boolean_true) (= ?bu30_12 c_Boolean_true)))))

;; Why axiom bool_or_def
 :assumption
   (forall (?au33_13 c_Boolean)
   (forall (?bu32_14 c_Boolean)
   (iff (= (bool_or ?au33_13 ?bu32_14) c_Boolean_true)
   (or (= ?au33_13 c_Boolean_true) (= ?bu32_14 c_Boolean_true)))))

;; Why axiom bool_xor_def
 :assumption
   (forall (?au35_15 c_Boolean)
   (forall (?bu34_16 c_Boolean)
   (iff (= (bool_xor ?au35_15 ?bu34_16) c_Boolean_true)
   (not (= ?au35_15 ?bu34_16)))))

;; Why axiom bool_not_def
 :assumption
   (forall (?au36_17 c_Boolean)
   (iff (= (bool_not ?au36_17) c_Boolean_true) (= ?au36_17 c_Boolean_false)))

;;;; Why logic ite
:extrafuns ((smtlib__ite c_Boolean c_sorted c_sorted c_unsorted))

;; Why axiom ite_true
 :assumption
   (forall (?t1u0_18 c_type)
   (forall (?xu38_19 c_unsorted)
   (forall (?yu37_20 c_unsorted)
   (= (c_sort
      ?t1u0_18 (smtlib__ite c_Boolean_true  (c_sort ?t1u0_18 ?xu38_19)
               (c_sort ?t1u0_18 ?yu37_20)))
   (c_sort ?t1u0_18 ?xu38_19)))))

;; Why axiom ite_false
 :assumption
   (forall (?t1u0_21 c_type)
   (forall (?xu40_22 c_unsorted)
   (forall (?yu39_23 c_unsorted)
   (= (c_sort
      ?t1u0_21 (smtlib__ite c_Boolean_false  (c_sort ?t1u0_21 ?xu40_22)
               (c_sort ?t1u0_21 ?yu39_23)))
   (c_sort ?t1u0_21 ?yu39_23)))))

;;;; Why logic lt_int_bool
:extrafuns ((lt_int_bool Int Int c_Boolean))

;;;; Why logic le_int_bool
:extrafuns ((le_int_bool Int Int c_Boolean))

;;;; Why logic gt_int_bool
:extrafuns ((gt_int_bool Int Int c_Boolean))

;;;; Why logic ge_int_bool
:extrafuns ((ge_int_bool Int Int c_Boolean))

;;;; Why logic eq_int_bool
:extrafuns ((eq_int_bool Int Int c_Boolean))

;;;; Why logic neq_int_bool
:extrafuns ((neq_int_bool Int Int c_Boolean))

;; Why axiom lt_int_bool_axiom
 :assumption
   (forall (?xu43_24 Int)
   (forall (?yu42_25 Int)
   (iff (= (lt_int_bool ?xu43_24 ?yu42_25) c_Boolean_true)
   (< ?xu43_24 ?yu42_25))))

;; Why axiom le_int_bool_axiom
 :assumption
   (forall (?xu45_26 Int)
   (forall (?yu44_27 Int)
   (iff (= (le_int_bool ?xu45_26 ?yu44_27) c_Boolean_true)
   (<= ?xu45_26 ?yu44_27))))

;; Why axiom gt_int_bool_axiom
 :assumption
   (forall (?xu47_28 Int)
   (forall (?yu46_29 Int)
   (iff (= (gt_int_bool ?xu47_28 ?yu46_29) c_Boolean_true)
   (> ?xu47_28 ?yu46_29))))

;; Why axiom ge_int_bool_axiom
 :assumption
   (forall (?xu49_30 Int)
   (forall (?yu48_31 Int)
   (iff (= (ge_int_bool ?xu49_30 ?yu48_31) c_Boolean_true)
   (>= ?xu49_30 ?yu48_31))))

;; Why axiom eq_int_bool_axiom
 :assumption
   (forall (?xu51_32 Int)
   (forall (?yu50_33 Int)
   (iff (= (eq_int_bool ?xu51_32 ?yu50_33) c_Boolean_true)
   (= ?xu51_32 ?yu50_33))))

;; Why axiom neq_int_bool_axiom
 :assumption
   (forall (?xu53_34 Int)
   (forall (?yu52_35 Int)
   (iff (= (neq_int_bool ?xu53_34 ?yu52_35) c_Boolean_true)
   (not (= ?xu53_34 ?yu52_35)))))

;;;; Why logic abs_int
:extrafuns ((abs_int Int Int))

;; Why axiom abs_int_pos
 :assumption
   (forall (?xu54_36 Int)
   (implies (>= ?xu54_36 0) (= (abs_int ?xu54_36) ?xu54_36)))

;; Why axiom abs_int_neg
 :assumption
   (forall (?xu55_37 Int)
   (implies (<= ?xu55_37 0) (= (abs_int ?xu55_37) (- ?xu55_37))))

;;;; Why logic int_max
:extrafuns ((int_max Int Int Int))

;;;; Why logic int_min
:extrafuns ((int_min Int Int Int))

;; Why axiom int_max_is_ge
 :assumption
   (forall (?xu57_38 Int)
   (forall (?yu56_39 Int)
   (and (>= (int_max ?xu57_38 ?yu56_39) ?xu57_38)
   (>= (int_max ?xu57_38 ?yu56_39) ?yu56_39))))

;; Why axiom int_max_is_some
 :assumption
   (forall (?xu59_40 Int)
   (forall (?yu58_41 Int)
   (or (= (int_max ?xu59_40 ?yu58_41) ?xu59_40)
   (= (int_max ?xu59_40 ?yu58_41) ?yu58_41))))

;; Why axiom int_min_is_le
 :assumption
   (forall (?xu61_42 Int)
   (forall (?yu60_43 Int)
   (and (<= (int_min ?xu61_42 ?yu60_43) ?xu61_42)
   (<= (int_min ?xu61_42 ?yu60_43) ?yu60_43))))

;; Why axiom int_min_is_some
 :assumption
   (forall (?xu63_44 Int)
   (forall (?yu62_45 Int)
   (or (= (int_min ?xu63_44 ?yu62_45) ?xu63_44)
   (= (int_min ?xu63_44 ?yu62_45) ?yu62_45))))

;;;; Why logic lt_real
:extrapreds ((lt_real Real Real))

;;;; Why logic le_real
:extrapreds ((le_real Real Real))

;;;; Why logic gt_real
:extrapreds ((gt_real Real Real))

;;;; Why logic ge_real
:extrapreds ((ge_real Real Real))

;;;; Why logic eq_real
:extrapreds ((eq_real Real Real))

;;;; Why logic neq_real
:extrapreds ((neq_real Real Real))

;;;; Why logic add_real
:extrafuns ((add_real Real Real Real))

;;;; Why logic sub_real
:extrafuns ((sub_real Real Real Real))

;;;; Why logic mul_real
:extrafuns ((mul_real Real Real Real))

;;;; Why logic div_real
:extrafuns ((div_real Real Real Real))

;;;; Why logic neg_real
:extrafuns ((neg_real Real Real))

;;;; Why logic real_of_int
:extrafuns ((real_of_int Int Real))

;; Why axiom real_of_int_zero
 :assumption (= (real_of_int 0) 0.0)

;; Why axiom real_of_int_one
 :assumption (= (real_of_int 1) 1.0)

;; Why axiom real_of_int_add
 :assumption
   (forall (?xu80_46 Int)
   (forall (?yu79_47 Int)
   (= (real_of_int (+ ?xu80_46 ?yu79_47))
   (+ (real_of_int ?xu80_46) (real_of_int ?yu79_47)))))

;; Why axiom real_of_int_sub
 :assumption
   (forall (?xu82_48 Int)
   (forall (?yu81_49 Int)
   (= (real_of_int (- ?xu82_48 ?yu81_49))
   (- (real_of_int ?xu82_48) (real_of_int ?yu81_49)))))

;;;; Why logic truncate_real_to_int
:extrafuns ((truncate_real_to_int Real Int))

;; Why axiom truncate_down_pos
 :assumption
   (forall (?xu83_50 Real)
   (implies (>= ?xu83_50 0.0)
   (and (<= (real_of_int (truncate_real_to_int ?xu83_50)) ?xu83_50)
   (< ?xu83_50 (real_of_int (+ (truncate_real_to_int ?xu83_50) 1))))))

;; Why axiom truncate_up_neg
 :assumption
   (forall (?xu84_51 Real)
   (implies (<= ?xu84_51 0.0)
   (and (< (real_of_int (- (truncate_real_to_int ?xu84_51) 1)) ?xu84_51)
   (<= ?xu84_51 (real_of_int (truncate_real_to_int ?xu84_51))))))

;;;; Why logic floor_real_to_int
:extrafuns ((floor_real_to_int Real Int))

;;;; Why logic ceil_real_to_int
:extrafuns ((ceil_real_to_int Real Int))

;;;; Why logic lt_real_bool
:extrafuns ((lt_real_bool Real Real c_Boolean))

;;;; Why logic le_real_bool
:extrafuns ((le_real_bool Real Real c_Boolean))

;;;; Why logic gt_real_bool
:extrafuns ((gt_real_bool Real Real c_Boolean))

;;;; Why logic ge_real_bool
:extrafuns ((ge_real_bool Real Real c_Boolean))

;;;; Why logic eq_real_bool
:extrafuns ((eq_real_bool Real Real c_Boolean))

;;;; Why logic neq_real_bool
:extrafuns ((neq_real_bool Real Real c_Boolean))

;; Why axiom lt_real_bool_axiom
 :assumption
   (forall (?xu86_52 Real)
   (forall (?yu85_53 Real)
   (iff (= (lt_real_bool ?xu86_52 ?yu85_53) c_Boolean_true)
   (< ?xu86_52 ?yu85_53))))

;; Why axiom le_real_bool_axiom
 :assumption
   (forall (?xu88_54 Real)
   (forall (?yu87_55 Real)
   (iff (= (le_real_bool ?xu88_54 ?yu87_55) c_Boolean_true)
   (<= ?xu88_54 ?yu87_55))))

;; Why axiom gt_real_bool_axiom
 :assumption
   (forall (?xu90_56 Real)
   (forall (?yu89_57 Real)
   (iff (= (gt_real_bool ?xu90_56 ?yu89_57) c_Boolean_true)
   (> ?xu90_56 ?yu89_57))))

;; Why axiom ge_real_bool_axiom
 :assumption
   (forall (?xu92_58 Real)
   (forall (?yu91_59 Real)
   (iff (= (ge_real_bool ?xu92_58 ?yu91_59) c_Boolean_true)
   (>= ?xu92_58 ?yu91_59))))

;; Why axiom eq_real_bool_axiom
 :assumption
   (forall (?xu94_60 Real)
   (forall (?yu93_61 Real)
   (iff (= (eq_real_bool ?xu94_60 ?yu93_61) c_Boolean_true)
   (= ?xu94_60 ?yu93_61))))

;; Why axiom neq_real_bool_axiom
 :assumption
   (forall (?xu96_62 Real)
   (forall (?yu95_63 Real)
   (iff (= (neq_real_bool ?xu96_62 ?yu95_63) c_Boolean_true)
   (not (= ?xu96_62 ?yu95_63)))))

;;;; Why logic real_max
:extrafuns ((real_max Real Real Real))

;;;; Why logic real_min
:extrafuns ((real_min Real Real Real))

;; Why axiom real_max_is_ge
 :assumption
   (forall (?xu98_64 Real)
   (forall (?yu97_65 Real)
   (and (>= (real_max ?xu98_64 ?yu97_65) ?xu98_64)
   (>= (real_max ?xu98_64 ?yu97_65) ?yu97_65))))

;; Why axiom real_max_is_some
 :assumption
   (forall (?xu100_66 Real)
   (forall (?yu99_67 Real)
   (or (= (real_max ?xu100_66 ?yu99_67) ?xu100_66)
   (= (real_max ?xu100_66 ?yu99_67) ?yu99_67))))

;; Why axiom real_min_is_le
 :assumption
   (forall (?xu102_68 Real)
   (forall (?yu101_69 Real)
   (and (<= (real_min ?xu102_68 ?yu101_69) ?xu102_68)
   (<= (real_min ?xu102_68 ?yu101_69) ?yu101_69))))

;; Why axiom real_min_is_some
 :assumption
   (forall (?xu104_70 Real)
   (forall (?yu103_71 Real)
   (or (= (real_min ?xu104_70 ?yu103_71) ?xu104_70)
   (= (real_min ?xu104_70 ?yu103_71) ?yu103_71))))

;;;; Why logic sqr_real
:extrafuns ((sqr_real Real Real))

;; Why axiom sqr_real_def
 :assumption
   (forall (?xu105_72 Real)
   (= (c_sort c_real (real2u (sqr_real ?xu105_72)))
   (c_sort c_real (real2u (* ?xu105_72 ?xu105_72)))))

;;;; Why logic sqrt_real
:extrafuns ((sqrt_real Real Real))

;; Why axiom sqrt_pos
 :assumption
   (forall (?xu106_73 Real)
   (implies (>= ?xu106_73 0.0) (>= (sqrt_real ?xu106_73) 0.0)))

;; Why axiom sqrt_sqr
 :assumption
   (forall (?xu107_74 Real)
   (implies (>= ?xu107_74 0.0)
   (= (sqr_real (sqrt_real ?xu107_74)) ?xu107_74)))

;; Why axiom sqr_sqrt
 :assumption
   (forall (?xu108_75 Real)
   (implies (>= ?xu108_75 0.0)
   (= (sqrt_real (* ?xu108_75 ?xu108_75)) ?xu108_75)))

;;;; Why logic abs_real
:extrafuns ((abs_real Real Real))

;; Why axiom abs_real_pos
 :assumption
   (forall (?xu110_76 Real)
   (implies (>= ?xu110_76 0.0) (= (abs_real ?xu110_76) ?xu110_76)))

;; Why axiom abs_real_neg
 :assumption
   (forall (?xu111_77 Real)
   (implies (<= ?xu111_77 0.0) (= (abs_real ?xu111_77) (- ?xu111_77))))

;;;; Why logic exp
:extrafuns ((exp Real Real))

;;;; Why logic log
:extrafuns ((log Real Real))

;;;; Why logic log10
:extrafuns ((log10 Real Real))

;; Why axiom log_exp
 :assumption (forall (?xu112_78 Real) (= (log (exp ?xu112_78)) ?xu112_78))

;; Why axiom exp_log
 :assumption
   (forall (?xu113_79 Real)
   (implies (> ?xu113_79 0.0) (= (exp (log ?xu113_79)) ?xu113_79)))

;;;; Why logic pow_real_int
:extrafuns ((pow_real_int Real Int Real))

;;;; Why logic pow_real
:extrafuns ((pow_real Real Real Real))

;;;; Why logic cos
:extrafuns ((cos Real Real))

;;;; Why logic sin
:extrafuns ((sin Real Real))

;;;; Why logic tan
:extrafuns ((tan Real Real))

;;;; Why logic pi
:extrafuns ((pi  Real))

;;;; Why logic cosh
:extrafuns ((cosh Real Real))

;;;; Why logic sinh
:extrafuns ((sinh Real Real))

;;;; Why logic tanh
:extrafuns ((tanh Real Real))

;;;; Why logic acos
:extrafuns ((acos Real Real))

;;;; Why logic asin
:extrafuns ((asin Real Real))

;;;; Why logic atan
:extrafuns ((atan Real Real))

;;;; Why logic atan2
:extrafuns ((atan2 Real Real Real))

;;;; Why logic hypot
:extrafuns ((hypot Real Real Real))

;; Why axiom prod_pos
 :assumption
   (forall (?xu116_80 Real)
   (forall (?yu115_81 Real)
   (and
   (implies (and (> ?xu116_80 0.0) (> ?yu115_81 0.0))
   (> (* ?xu116_80 ?yu115_81) 0.0))
   (implies (and (< ?xu116_80 0.0) (< ?yu115_81 0.0))
   (> (* ?xu116_80 ?yu115_81) 0.0)))))

;; Why axiom abs_minus
 :assumption
   (forall (?xu117_82 Real)
   (= (abs_real (- ?xu117_82)) (abs_real ?xu117_82)))

;;;; Why logic computer_div
:extrafuns ((computer_div Int Int Int))

;;;; Why logic computer_mod
:extrafuns ((computer_mod Int Int Int))

;;;; Why logic math_div
:extrafuns ((math_div Int Int Int))

;;;; Why logic math_mod
:extrafuns ((math_mod Int Int Int))

;; Why axiom math_div_mod
 :assumption
   (forall (?xu123_83 Int)
   (forall (?yu122_84 Int)
   (implies (not (= ?yu122_84 0))
   (= ?xu123_83
   (+ (* ?yu122_84 (math_div ?xu123_83 ?yu122_84)) (math_mod
                                                   ?xu123_83 ?yu122_84))))))

;; Why axiom math_mod_bound
 :assumption
   (forall (?xu125_85 Int)
   (forall (?yu124_86 Int)
   (implies (not (= ?yu124_86 0))
   (and (<= 0 (math_mod ?xu125_85 ?yu124_86))
   (< (math_mod ?xu125_85 ?yu124_86) (abs_int ?yu124_86))))))

;; Why axiom computer_div_mod
 :assumption
   (forall (?xu127_87 Int)
   (forall (?yu126_88 Int)
   (implies (not (= ?yu126_88 0))
   (= ?xu127_87
   (+ (* ?yu126_88 (computer_div ?xu127_87 ?yu126_88)) (computer_mod
                                                       ?xu127_87 ?yu126_88))))))

;; Why axiom computer_div_bound
 :assumption
   (forall (?xu129_89 Int)
   (forall (?yu128_90 Int)
   (implies (and (>= ?xu129_89 0) (> ?yu128_90 0))
   (and (<= 0 (computer_div ?xu129_89 ?yu128_90))
   (<= (computer_div ?xu129_89 ?yu128_90) ?xu129_89)))))

;; Why axiom computer_mod_bound
 :assumption
   (forall (?xu131_91 Int)
   (forall (?yu130_92 Int)
   (implies (not (= ?yu130_92 0))
   (< (abs_int (computer_mod ?xu131_91 ?yu130_92)) (abs_int ?yu130_92)))))

;; Why axiom computer_mod_sign_pos
 :assumption
   (forall (?xu133_93 Int)
   (forall (?yu132_94 Int)
   (implies (and (>= ?xu133_93 0) (not (= ?yu132_94 0)))
   (>= (computer_mod ?xu133_93 ?yu132_94) 0))))

;; Why axiom computer_mod_sign_neg
 :assumption
   (forall (?xu135_95 Int)
   (forall (?yu134_96 Int)
   (implies (and (<= ?xu135_95 0) (not (= ?yu134_96 0)))
   (<= (computer_mod ?xu135_95 ?yu134_96) 0))))

;; Why axiom computer_rounds_toward_zero
 :assumption
   (forall (?xu137_97 Int)
   (forall (?yu136_98 Int)
   (implies (not (= ?yu136_98 0))
   (<= (abs_int (* (computer_div ?xu137_97 ?yu136_98) ?yu136_98)) (abs_int
                                                                  ?xu137_97)))))

;;;; Why logic alloc_table
:extrafuns ((alloc_table c_type c_type))

;;;; Why logic pointer
:extrafuns ((pointer c_type c_type))

;;;; Why logic block
:extrafuns ((block c_type c_type))

;;;; Why logic base_block
:extrafuns ((base_block c_sorted c_unsorted))

;;;; Why logic offset_max
:extrafuns ((offset_max c_sorted c_sorted Int))

;;;; Why logic offset_min
:extrafuns ((offset_min c_sorted c_sorted Int))

;;;; Why logic valid
:extrapreds ((valid c_sorted c_sorted))

;; Why axiom valid_def
 :assumption
   (forall (?t1u0_99 c_type)
   (forall (?au139_100 c_unsorted)
   (forall (?pu138_101 c_unsorted)
   (iff
   (valid
   (c_sort (alloc_table ?t1u0_99) ?au139_100) (c_sort
                                              (pointer ?t1u0_99) ?pu138_101))
   (and
   (<= (offset_min
       (c_sort (alloc_table ?t1u0_99) ?au139_100) (c_sort
                                                  (pointer ?t1u0_99) ?pu138_101)) 0)
   (>= (offset_max
       (c_sort (alloc_table ?t1u0_99) ?au139_100) (c_sort
                                                  (pointer ?t1u0_99) ?pu138_101)) 0))))))

;;;; Why logic same_block
:extrapreds ((same_block c_sorted c_sorted))

;; Why axiom same_block_def
 :assumption
   (forall (?t1u0_102 c_type)
   (forall (?pu141_103 c_unsorted)
   (forall (?qu140_104 c_unsorted)
   (iff
   (same_block
   (c_sort (pointer ?t1u0_102) ?pu141_103) (c_sort
                                           (pointer ?t1u0_102) ?qu140_104))
   (= (c_sort
      (block ?t1u0_102) (base_block (c_sort (pointer ?t1u0_102) ?pu141_103)))
   (c_sort
   (block ?t1u0_102) (base_block (c_sort (pointer ?t1u0_102) ?qu140_104))))))))

;;;; Why logic sub_pointer
:extrafuns ((sub_pointer c_sorted c_sorted Int))

;;;; Why logic shift
:extrafuns ((shift c_sorted Int c_unsorted))

;;;; Why logic null
:extrafuns ((null  c_unsorted))

;;;; Why logic pointer_address
:extrafuns ((pointer_address c_sorted c_unsorted))

;;;; Why logic absolute_address
:extrafuns ((absolute_address Int c_unsorted))

;;;; Why logic address
:extrafuns ((address c_sorted Int))

;; Why axiom address_injective
 :assumption
   (forall (?t1u0_105 c_type)
   (forall (?pu147_106 c_unsorted)
   (forall (?qu146_107 c_unsorted)
   (iff
   (= (c_sort (pointer ?t1u0_105) ?pu147_106)
   (c_sort (pointer ?t1u0_105) ?qu146_107))
   (= (address (c_sort (pointer ?t1u0_105) ?pu147_106))
   (address (c_sort (pointer ?t1u0_105) ?qu146_107)))))))

;; Why axiom address_null
 :assumption
   (forall (?t1u0_108 c_type)
   (= (address (c_sort (pointer ?t1u0_108) null)) 0))

;; Why axiom address_shift_lt
 :assumption
   (forall (?t1u0_109 c_type)
   (forall (?pu150_110 c_unsorted)
   (forall (?iu149_111 Int)
   (forall (?ju148_112 Int)
   (iff
   (< (address
      (c_sort
      (pointer ?t1u0_109) (shift
                          (c_sort (pointer ?t1u0_109) ?pu150_110) ?iu149_111))) 
   (address
   (c_sort
   (pointer ?t1u0_109) (shift
                       (c_sort (pointer ?t1u0_109) ?pu150_110) ?ju148_112))))
   (< ?iu149_111 ?ju148_112))))))

;; Why axiom address_shift_le
 :assumption
   (forall (?t1u0_113 c_type)
   (forall (?pu153_114 c_unsorted)
   (forall (?iu152_115 Int)
   (forall (?ju151_116 Int)
   (iff
   (<= (address
       (c_sort
       (pointer ?t1u0_113) (shift
                           (c_sort (pointer ?t1u0_113) ?pu153_114) ?iu152_115))) 
   (address
   (c_sort
   (pointer ?t1u0_113) (shift
                       (c_sort (pointer ?t1u0_113) ?pu153_114) ?ju151_116))))
   (<= ?iu152_115 ?ju151_116))))))

;; Why axiom shift_zero
 :assumption
   (forall (?t1u0_117 c_type)
   (forall (?pu154_118 c_unsorted)
   (= (c_sort
      (pointer ?t1u0_117) (shift (c_sort (pointer ?t1u0_117) ?pu154_118) 0))
   (c_sort (pointer ?t1u0_117) ?pu154_118))))

;; Why axiom shift_shift
 :assumption
   (forall (?t1u0_119 c_type)
   (forall (?pu157_120 c_unsorted)
   (forall (?iu156_121 Int)
   (forall (?ju155_122 Int)
   (= (c_sort
      (pointer ?t1u0_119) (shift
                          (c_sort
                          (pointer ?t1u0_119) (shift
                                              (c_sort
                                              (pointer ?t1u0_119) ?pu157_120) ?iu156_121)) ?ju155_122))
   (c_sort
   (pointer ?t1u0_119) (shift
                       (c_sort (pointer ?t1u0_119) ?pu157_120) (+ ?iu156_121 ?ju155_122))))))))

;; Why axiom offset_max_shift
 :assumption
   (forall (?t1u0_123 c_type)
   (forall (?au160_124 c_unsorted)
   (forall (?pu159_125 c_unsorted)
   (forall (?iu158_126 Int)
   (= (offset_max
      (c_sort (alloc_table ?t1u0_123) ?au160_124) (c_sort
                                                  (pointer ?t1u0_123) 
                                                  (shift
                                                  (c_sort
                                                  (pointer ?t1u0_123) ?pu159_125) ?iu158_126)))
   (- (offset_max
      (c_sort (alloc_table ?t1u0_123) ?au160_124) (c_sort
                                                  (pointer ?t1u0_123) ?pu159_125)) ?iu158_126))))))

;; Why axiom offset_min_shift
 :assumption
   (forall (?t1u0_127 c_type)
   (forall (?au163_128 c_unsorted)
   (forall (?pu162_129 c_unsorted)
   (forall (?iu161_130 Int)
   (= (offset_min
      (c_sort (alloc_table ?t1u0_127) ?au163_128) (c_sort
                                                  (pointer ?t1u0_127) 
                                                  (shift
                                                  (c_sort
                                                  (pointer ?t1u0_127) ?pu162_129) ?iu161_130)))
   (- (offset_min
      (c_sort (alloc_table ?t1u0_127) ?au163_128) (c_sort
                                                  (pointer ?t1u0_127) ?pu162_129)) ?iu161_130))))))

;; Why axiom neq_shift
 :assumption
   (forall (?t1u0_131 c_type)
   (forall (?pu166_132 c_unsorted)
   (forall (?iu165_133 Int)
   (forall (?ju164_134 Int)
   (implies (not (= ?iu165_133 ?ju164_134))
   (not (= (c_sort
           (pointer ?t1u0_131) (shift
                               (c_sort (pointer ?t1u0_131) ?pu166_132) ?iu165_133))
   (c_sort
   (pointer ?t1u0_131) (shift
                       (c_sort (pointer ?t1u0_131) ?pu166_132) ?ju164_134)))))))))

;; Why axiom null_not_valid
 :assumption
   (forall (?t1u0_135 c_type)
   (forall (?au167_136 c_unsorted)
   (not
   (valid
   (c_sort (alloc_table ?t1u0_135) ?au167_136) (c_sort
                                               (pointer ?t1u0_135) null)))))

;; Why axiom null_pointer
 :assumption
   (forall (?t1u0_137 c_type)
   (forall (?au168_138 c_unsorted)
   (and
   (>= (offset_min
       (c_sort (alloc_table ?t1u0_137) ?au168_138) (c_sort
                                                   (pointer ?t1u0_137) null)) 0)
   (<= (offset_max
       (c_sort (alloc_table ?t1u0_137) ?au168_138) (c_sort
                                                   (pointer ?t1u0_137) null)) 
   (- 2)))))

;;;; Why logic eq_pointer_bool
:extrafuns ((eq_pointer_bool c_sorted c_sorted c_Boolean))

;;;; Why logic neq_pointer_bool
:extrafuns ((neq_pointer_bool c_sorted c_sorted c_Boolean))

;; Why axiom eq_pointer_bool_def
 :assumption
   (forall (?t1u0_139 c_type)
   (forall (?p1u178_140 c_unsorted)
   (forall (?p2u177_141 c_unsorted)
   (iff
   (= (eq_pointer_bool
      (c_sort (pointer ?t1u0_139) ?p1u178_140) (c_sort
                                               (pointer ?t1u0_139) ?p2u177_141))
   c_Boolean_true)
   (= (c_sort (pointer ?t1u0_139) ?p1u178_140)
   (c_sort (pointer ?t1u0_139) ?p2u177_141))))))

;; Why axiom neq_pointer_bool_def
 :assumption
   (forall (?t1u0_142 c_type)
   (forall (?p1u180_143 c_unsorted)
   (forall (?p2u179_144 c_unsorted)
   (iff
   (= (neq_pointer_bool
      (c_sort (pointer ?t1u0_142) ?p1u180_143) (c_sort
                                               (pointer ?t1u0_142) ?p2u179_144))
   c_Boolean_true)
   (not (= (c_sort (pointer ?t1u0_142) ?p1u180_143)
   (c_sort (pointer ?t1u0_142) ?p2u179_144)))))))

;; Why axiom same_block_shift_right
 :assumption
   (forall (?t1u0_145 c_type)
   (forall (?pu183_146 c_unsorted)
   (forall (?qu182_147 c_unsorted)
   (forall (?iu181_148 Int)
   (implies
   (same_block
   (c_sort (pointer ?t1u0_145) ?pu183_146) (c_sort
                                           (pointer ?t1u0_145) ?qu182_147))
   (same_block
   (c_sort (pointer ?t1u0_145) ?pu183_146) (c_sort
                                           (pointer ?t1u0_145) (shift
                                                               (c_sort
                                                               (pointer
                                                               ?t1u0_145) ?qu182_147) ?iu181_148))))))))

;; Why axiom same_block_shift_left
 :assumption
   (forall (?t1u0_149 c_type)
   (forall (?pu186_150 c_unsorted)
   (forall (?qu185_151 c_unsorted)
   (forall (?iu184_152 Int)
   (implies
   (same_block
   (c_sort (pointer ?t1u0_149) ?qu185_151) (c_sort
                                           (pointer ?t1u0_149) ?pu186_150))
   (same_block
   (c_sort
   (pointer ?t1u0_149) (shift
                       (c_sort (pointer ?t1u0_149) ?qu185_151) ?iu184_152)) 
   (c_sort (pointer ?t1u0_149) ?pu186_150)))))))

;; Why axiom sub_pointer_shift
 :assumption
   (forall (?t1u0_153 c_type)
   (forall (?pu188_154 c_unsorted)
   (forall (?qu187_155 c_unsorted)
   (implies
   (same_block
   (c_sort (pointer ?t1u0_153) ?pu188_154) (c_sort
                                           (pointer ?t1u0_153) ?qu187_155))
   (= (c_sort (pointer ?t1u0_153) ?pu188_154)
   (c_sort
   (pointer ?t1u0_153) (shift
                       (c_sort (pointer ?t1u0_153) ?qu187_155) (sub_pointer
                                                               (c_sort
                                                               (pointer
                                                               ?t1u0_153) ?pu188_154) 
                                                               (c_sort
                                                               (pointer
                                                               ?t1u0_153) ?qu187_155)))))))))

;; Why axiom sub_pointer_self
 :assumption
   (forall (?t1u0_156 c_type)
   (forall (?pu189_157 c_unsorted)
   (= (sub_pointer
      (c_sort (pointer ?t1u0_156) ?pu189_157) (c_sort
                                              (pointer ?t1u0_156) ?pu189_157))
   0)))

;; Why axiom sub_pointer_zero
 :assumption
   (forall (?t1u0_158 c_type)
   (forall (?pu191_159 c_unsorted)
   (forall (?qu190_160 c_unsorted)
   (implies
   (same_block
   (c_sort (pointer ?t1u0_158) ?pu191_159) (c_sort
                                           (pointer ?t1u0_158) ?qu190_160))
   (implies
   (= (sub_pointer
      (c_sort (pointer ?t1u0_158) ?pu191_159) (c_sort
                                              (pointer ?t1u0_158) ?qu190_160))
   0)
   (= (c_sort (pointer ?t1u0_158) ?pu191_159)
   (c_sort (pointer ?t1u0_158) ?qu190_160)))))))

;; Why axiom sub_pointer_shift_left
 :assumption
   (forall (?t1u0_161 c_type)
   (forall (?pu194_162 c_unsorted)
   (forall (?qu193_163 c_unsorted)
   (forall (?iu192_164 Int)
   (= (sub_pointer
      (c_sort
      (pointer ?t1u0_161) (shift
                          (c_sort (pointer ?t1u0_161) ?pu194_162) ?iu192_164)) 
      (c_sort (pointer ?t1u0_161) ?qu193_163))
   (+ (sub_pointer
      (c_sort (pointer ?t1u0_161) ?pu194_162) (c_sort
                                              (pointer ?t1u0_161) ?qu193_163)) ?iu192_164))))))

;; Why axiom sub_pointer_shift_right
 :assumption
   (forall (?t1u0_165 c_type)
   (forall (?pu197_166 c_unsorted)
   (forall (?qu196_167 c_unsorted)
   (forall (?iu195_168 Int)
   (= (sub_pointer
      (c_sort (pointer ?t1u0_165) ?pu197_166) (c_sort
                                              (pointer ?t1u0_165) (shift
                                                                  (c_sort
                                                                  (pointer
                                                                  ?t1u0_165) ?qu196_167) ?iu195_168)))
   (- (sub_pointer
      (c_sort (pointer ?t1u0_165) ?pu197_166) (c_sort
                                              (pointer ?t1u0_165) ?qu196_167)) ?iu195_168))))))

;;;; Why logic memory
:extrafuns ((memory c_type c_type c_type))

;;;; Why logic select
:extrafuns ((smtlib__select c_sorted c_sorted c_unsorted))

;;;; Why logic store
:extrafuns ((smtlib__store c_sorted c_sorted c_sorted c_unsorted))

;; Why axiom select_store_eq
 :assumption
   (forall (?t2u0_169 c_type)
   (forall (?t1u0_170 c_type)
   (forall (?mu201_171 c_unsorted)
   (forall (?p1u200_172 c_unsorted)
   (forall (?p2u199_173 c_unsorted)
   (forall (?au198_174 c_unsorted)
   (implies
   (= (c_sort (pointer ?t1u0_170) ?p1u200_172)
   (c_sort (pointer ?t1u0_170) ?p2u199_173))
   (= (c_sort
      ?t2u0_169 (smtlib__select
                (c_sort
                (memory ?t1u0_170 ?t2u0_169) (smtlib__store
                                             (c_sort
                                             (memory ?t1u0_170 ?t2u0_169) ?mu201_171) 
                                             (c_sort
                                             (pointer ?t1u0_170) ?p1u200_172) 
                                             (c_sort ?t2u0_169 ?au198_174))) 
                (c_sort (pointer ?t1u0_170) ?p2u199_173)))
   (c_sort ?t2u0_169 ?au198_174)))))))))

;; Why axiom select_store_neq
 :assumption
   (forall (?t2u0_175 c_type)
   (forall (?t1u0_176 c_type)
   (forall (?mu205_177 c_unsorted)
   (forall (?p1u204_178 c_unsorted)
   (forall (?p2u203_179 c_unsorted)
   (forall (?au202_180 c_unsorted)
   (implies
   (not (= (c_sort (pointer ?t1u0_176) ?p1u204_178)
   (c_sort (pointer ?t1u0_176) ?p2u203_179)))
   (= (c_sort
      ?t2u0_175 (smtlib__select
                (c_sort
                (memory ?t1u0_176 ?t2u0_175) (smtlib__store
                                             (c_sort
                                             (memory ?t1u0_176 ?t2u0_175) ?mu205_177) 
                                             (c_sort
                                             (pointer ?t1u0_176) ?p1u204_178) 
                                             (c_sort ?t2u0_175 ?au202_180))) 
                (c_sort (pointer ?t1u0_176) ?p2u203_179)))
   (c_sort
   ?t2u0_175 (smtlib__select
             (c_sort (memory ?t1u0_176 ?t2u0_175) ?mu205_177) (c_sort
                                                              (pointer
                                                              ?t1u0_176) ?p2u203_179)))))))))))

;;;; Why logic pset
:extrafuns ((pset c_type c_type))

;;;; Why logic pset_empty
:extrafuns ((pset_empty  c_unsorted))

;;;; Why logic pset_singleton
:extrafuns ((pset_singleton c_sorted c_unsorted))

;;;; Why logic pset_deref
:extrafuns ((pset_deref c_sorted c_sorted c_unsorted))

;;;; Why logic pset_union
:extrafuns ((pset_union c_sorted c_sorted c_unsorted))

;;;; Why logic pset_all
:extrafuns ((pset_all c_sorted c_unsorted))

;;;; Why logic pset_range
:extrafuns ((pset_range c_sorted Int Int c_unsorted))

;;;; Why logic pset_range_left
:extrafuns ((pset_range_left c_sorted Int c_unsorted))

;;;; Why logic pset_range_right
:extrafuns ((pset_range_right c_sorted Int c_unsorted))

;;;; Why logic in_pset
:extrapreds ((in_pset c_sorted c_sorted))

;;;; Why logic valid_pset
:extrapreds ((valid_pset c_sorted c_sorted))

;;;; Why logic pset_disjoint
:extrapreds ((pset_disjoint c_sorted c_sorted))

;; Why axiom pset_disjoint_def
 :assumption
   (forall (?t1u0_181 c_type)
   (forall (?ps1u293_182 c_unsorted)
   (forall (?ps2u292_183 c_unsorted)
   (iff
   (pset_disjoint
   (c_sort (pset ?t1u0_181) ?ps1u293_182) (c_sort
                                          (pset ?t1u0_181) ?ps2u292_183))
   (forall (?pu291_184 c_unsorted)
   (not
   (and
   (in_pset
   (c_sort (pointer ?t1u0_181) ?pu291_184) (c_sort
                                           (pset ?t1u0_181) ?ps1u293_182))
   (in_pset
   (c_sort (pointer ?t1u0_181) ?pu291_184) (c_sort
                                           (pset ?t1u0_181) ?ps2u292_183)))))))))

;;;; Why logic pset_included
:extrapreds ((pset_included c_sorted c_sorted))

;; Why axiom pset_included_def
 :assumption
   (forall (?t1u0_185 c_type)
   (forall (?ps1u296_186 c_unsorted)
   (forall (?ps2u295_187 c_unsorted)
   (iff
   (pset_included
   (c_sort (pset ?t1u0_185) ?ps1u296_186) (c_sort
                                          (pset ?t1u0_185) ?ps2u295_187))
   (forall (?pu294_188 c_unsorted)
   (implies
   (in_pset
   (c_sort (pointer ?t1u0_185) ?pu294_188) (c_sort
                                           (pset ?t1u0_185) ?ps1u296_186))
   (in_pset
   (c_sort (pointer ?t1u0_185) ?pu294_188) (c_sort
                                           (pset ?t1u0_185) ?ps2u295_187))))))))

;; Why axiom pset_included_self
 :assumption
   (forall (?t1u0_189 c_type)
   (forall (?psu297_190 c_unsorted)
   (pset_included
   (c_sort (pset ?t1u0_189) ?psu297_190) (c_sort
                                         (pset ?t1u0_189) ?psu297_190))))

;; Why axiom pset_included_range
 :assumption
   (forall (?t1u0_191 c_type)
   (forall (?psu302_192 c_unsorted)
   (forall (?au301_193 Int)
   (forall (?bu300_194 Int)
   (forall (?cu299_195 Int)
   (forall (?du298_196 Int)
   (implies (and (<= ?cu299_195 ?au301_193) (<= ?bu300_194 ?du298_196))
   (pset_included
   (c_sort
   (pset ?t1u0_191) (pset_range
                    (c_sort (pset ?t1u0_191) ?psu302_192) ?au301_193 ?bu300_194)) 
   (c_sort
   (pset ?t1u0_191) (pset_range
                    (c_sort (pset ?t1u0_191) ?psu302_192) ?cu299_195 ?du298_196))))))))))

;; Why axiom pset_included_range_all
 :assumption
   (forall (?t1u0_197 c_type)
   (forall (?psu307_198 c_unsorted)
   (forall (?au306_199 Int)
   (forall (?bu305_200 Int)
   (forall (?cu304_201 Int)
   (forall (?du303_202 Int)
   (pset_included
   (c_sort
   (pset ?t1u0_197) (pset_range
                    (c_sort (pset ?t1u0_197) ?psu307_198) ?au306_199 ?bu305_200)) 
   (c_sort (pset ?t1u0_197) (pset_all (c_sort (pset ?t1u0_197) ?psu307_198))))))))))

;; Why axiom in_pset_empty
 :assumption
   (forall (?t1u0_203 c_type)
   (forall (?pu308_204 c_unsorted)
   (not
   (in_pset
   (c_sort (pointer ?t1u0_203) ?pu308_204) (c_sort
                                           (pset ?t1u0_203) pset_empty)))))

;; Why axiom in_pset_singleton
 :assumption
   (forall (?t1u0_205 c_type)
   (forall (?pu310_206 c_unsorted)
   (forall (?qu309_207 c_unsorted)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_205) ?pu310_206) (c_sort
                                           (pset ?t1u0_205) (pset_singleton
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_205) ?qu309_207))))
   (= (c_sort (pointer ?t1u0_205) ?pu310_206)
   (c_sort (pointer ?t1u0_205) ?qu309_207))))))

;; Why axiom in_pset_deref
 :assumption
   (forall (?t2u0_208 c_type)
   (forall (?t1u0_209 c_type)
   (forall (?pu314_210 c_unsorted)
   (forall (?mu313_211 c_unsorted)
   (forall (?qu312_212 c_unsorted)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_209) ?pu314_210) (c_sort
                                           (pset ?t1u0_209) (pset_deref
                                                            (c_sort
                                                            (memory
                                                            ?t2u0_208 
                                                            (pointer
                                                            ?t1u0_209)) ?mu313_211) 
                                                            (c_sort
                                                            (pset ?t2u0_208) ?qu312_212))))
   (exists (?ru311_213 c_unsorted) (and
                                   (in_pset
                                   (c_sort (pointer ?t2u0_208) ?ru311_213) 
                                   (c_sort (pset ?t2u0_208) ?qu312_212))
                                   (= (c_sort (pointer ?t1u0_209) ?pu314_210)
                                   (c_sort
                                   (pointer ?t1u0_209) (smtlib__select
                                                       (c_sort
                                                       (memory
                                                       ?t2u0_208 (pointer
                                                                 ?t1u0_209)) ?mu313_211) 
                                                       (c_sort
                                                       (pointer ?t2u0_208) ?ru311_213))))))))))))

;; Why axiom in_pset_all
 :assumption
   (forall (?t1u0_214 c_type)
   (forall (?pu318_215 c_unsorted)
   (forall (?qu317_216 c_unsorted)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_214) ?pu318_215) (c_sort
                                           (pset ?t1u0_214) (pset_all
                                                            (c_sort
                                                            (pset ?t1u0_214) ?qu317_216))))
   (exists (?iu316_217 Int) (exists (?ru315_218 c_unsorted) (and
                                                            (in_pset
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_214) ?ru315_218) 
                                                            (c_sort
                                                            (pset ?t1u0_214) ?qu317_216))
                                                            (= (c_sort
                                                               (pointer
                                                               ?t1u0_214) ?pu318_215)
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_214) 
                                                            (shift
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_214) ?ru315_218) ?iu316_217))))))))))

;; Why axiom in_pset_range
 :assumption
   (forall (?t1u0_219 c_type)
   (forall (?pu324_220 c_unsorted)
   (forall (?qu323_221 c_unsorted)
   (forall (?au322_222 Int)
   (forall (?bu321_223 Int)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_219) ?pu324_220) (c_sort
                                           (pset ?t1u0_219) (pset_range
                                                            (c_sort
                                                            (pset ?t1u0_219) ?qu323_221) ?au322_222 ?bu321_223)))
   (exists (?iu320_224 Int) (exists (?ru319_225 c_unsorted) (and
                                                            (<= ?au322_222 ?iu320_224)
                                                            (and
                                                            (<= ?iu320_224 ?bu321_223)
                                                            (and
                                                            (in_pset
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_219) ?ru319_225) 
                                                            (c_sort
                                                            (pset ?t1u0_219) ?qu323_221))
                                                            (= (c_sort
                                                               (pointer
                                                               ?t1u0_219) ?pu324_220)
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_219) 
                                                            (shift
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_219) ?ru319_225) ?iu320_224))))))))))))))

;; Why axiom in_pset_range_left
 :assumption
   (forall (?t1u0_226 c_type)
   (forall (?pu329_227 c_unsorted)
   (forall (?qu328_228 c_unsorted)
   (forall (?bu327_229 Int)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_226) ?pu329_227) (c_sort
                                           (pset ?t1u0_226) (pset_range_left
                                                            (c_sort
                                                            (pset ?t1u0_226) ?qu328_228) ?bu327_229)))
   (exists (?iu326_230 Int) (exists (?ru325_231 c_unsorted) (and
                                                            (<= ?iu326_230 ?bu327_229)
                                                            (and
                                                            (in_pset
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_226) ?ru325_231) 
                                                            (c_sort
                                                            (pset ?t1u0_226) ?qu328_228))
                                                            (= (c_sort
                                                               (pointer
                                                               ?t1u0_226) ?pu329_227)
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_226) 
                                                            (shift
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_226) ?ru325_231) ?iu326_230))))))))))))

;; Why axiom in_pset_range_right
 :assumption
   (forall (?t1u0_232 c_type)
   (forall (?pu334_233 c_unsorted)
   (forall (?qu333_234 c_unsorted)
   (forall (?au332_235 Int)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_232) ?pu334_233) (c_sort
                                           (pset ?t1u0_232) (pset_range_right
                                                            (c_sort
                                                            (pset ?t1u0_232) ?qu333_234) ?au332_235)))
   (exists (?iu331_236 Int) (exists (?ru330_237 c_unsorted) (and
                                                            (<= ?au332_235 ?iu331_236)
                                                            (and
                                                            (in_pset
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_232) ?ru330_237) 
                                                            (c_sort
                                                            (pset ?t1u0_232) ?qu333_234))
                                                            (= (c_sort
                                                               (pointer
                                                               ?t1u0_232) ?pu334_233)
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_232) 
                                                            (shift
                                                            (c_sort
                                                            (pointer
                                                            ?t1u0_232) ?ru330_237) ?iu331_236))))))))))))

;; Why axiom in_pset_union
 :assumption
   (forall (?t1u0_238 c_type)
   (forall (?pu337_239 c_unsorted)
   (forall (?s1u336_240 c_unsorted)
   (forall (?s2u335_241 c_unsorted)
   (iff
   (in_pset
   (c_sort (pointer ?t1u0_238) ?pu337_239) (c_sort
                                           (pset ?t1u0_238) (pset_union
                                                            (c_sort
                                                            (pset ?t1u0_238) ?s1u336_240) 
                                                            (c_sort
                                                            (pset ?t1u0_238) ?s2u335_241))))
   (or
   (in_pset
   (c_sort (pointer ?t1u0_238) ?pu337_239) (c_sort
                                           (pset ?t1u0_238) ?s1u336_240))
   (in_pset
   (c_sort (pointer ?t1u0_238) ?pu337_239) (c_sort
                                           (pset ?t1u0_238) ?s2u335_241))))))))

;; Why axiom valid_pset_empty
 :assumption
   (forall (?t1u0_242 c_type)
   (forall (?au338_243 c_unsorted)
   (valid_pset
   (c_sort (alloc_table ?t1u0_242) ?au338_243) (c_sort
                                               (pset ?t1u0_242) pset_empty))))

;; Why axiom valid_pset_singleton
 :assumption
   (forall (?t1u0_244 c_type)
   (forall (?au340_245 c_unsorted)
   (forall (?pu339_246 c_unsorted)
   (iff
   (valid_pset
   (c_sort (alloc_table ?t1u0_244) ?au340_245) (c_sort
                                               (pset ?t1u0_244) (pset_singleton
                                                                (c_sort
                                                                (pointer
                                                                ?t1u0_244) ?pu339_246))))
   (valid
   (c_sort (alloc_table ?t1u0_244) ?au340_245) (c_sort
                                               (pointer ?t1u0_244) ?pu339_246))))))

;; Why axiom valid_pset_deref
 :assumption
   (forall (?t2u0_247 c_type)
   (forall (?t1u0_248 c_type)
   (forall (?au345_249 c_unsorted)
   (forall (?mu344_250 c_unsorted)
   (forall (?qu343_251 c_unsorted)
   (iff
   (valid_pset
   (c_sort (alloc_table ?t1u0_248) ?au345_249) (c_sort
                                               (pset ?t1u0_248) (pset_deref
                                                                (c_sort
                                                                (memory
                                                                ?t2u0_247 
                                                                (pointer
                                                                ?t1u0_248)) ?mu344_250) 
                                                                (c_sort
                                                                (pset
                                                                ?t2u0_247) ?qu343_251))))
   (forall (?ru342_252 c_unsorted)
   (forall (?pu341_253 c_unsorted)
   (implies
   (and
   (in_pset
   (c_sort (pointer ?t2u0_247) ?ru342_252) (c_sort
                                           (pset ?t2u0_247) ?qu343_251))
   (= (c_sort (pointer ?t1u0_248) ?pu341_253)
   (c_sort
   (pointer ?t1u0_248) (smtlib__select
                       (c_sort
                       (memory ?t2u0_247 (pointer ?t1u0_248)) ?mu344_250) 
                       (c_sort (pointer ?t2u0_247) ?ru342_252)))))
   (valid
   (c_sort (alloc_table ?t1u0_248) ?au345_249) (c_sort
                                               (pointer ?t1u0_248) ?pu341_253)))))))))))

;; Why axiom valid_pset_range
 :assumption
   (forall (?t1u0_254 c_type)
   (forall (?au351_255 c_unsorted)
   (forall (?qu350_256 c_unsorted)
   (forall (?cu349_257 Int)
   (forall (?du348_258 Int)
   (iff
   (valid_pset
   (c_sort (alloc_table ?t1u0_254) ?au351_255) (c_sort
                                               (pset ?t1u0_254) (pset_range
                                                                (c_sort
                                                                (pset
                                                                ?t1u0_254) ?qu350_256) ?cu349_257 ?du348_258)))
   (forall (?iu347_259 Int)
   (forall (?ru346_260 c_unsorted)
   (implies
   (and
   (in_pset
   (c_sort (pointer ?t1u0_254) ?ru346_260) (c_sort
                                           (pset ?t1u0_254) ?qu350_256))
   (and (<= ?cu349_257 ?iu347_259) (<= ?iu347_259 ?du348_258)))
   (valid
   (c_sort (alloc_table ?t1u0_254) ?au351_255) (c_sort
                                               (pointer ?t1u0_254) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   ?t1u0_254) ?ru346_260) ?iu347_259))))))))))))

;; Why axiom valid_pset_union
 :assumption
   (forall (?t1u0_261 c_type)
   (forall (?au354_262 c_unsorted)
   (forall (?s1u353_263 c_unsorted)
   (forall (?s2u352_264 c_unsorted)
   (iff
   (valid_pset
   (c_sort (alloc_table ?t1u0_261) ?au354_262) (c_sort
                                               (pset ?t1u0_261) (pset_union
                                                                (c_sort
                                                                (pset
                                                                ?t1u0_261) ?s1u353_263) 
                                                                (c_sort
                                                                (pset
                                                                ?t1u0_261) ?s2u352_264))))
   (and
   (valid_pset
   (c_sort (alloc_table ?t1u0_261) ?au354_262) (c_sort
                                               (pset ?t1u0_261) ?s1u353_263))
   (valid_pset
   (c_sort (alloc_table ?t1u0_261) ?au354_262) (c_sort
                                               (pset ?t1u0_261) ?s2u352_264))))))))

;;;; Why logic not_assigns
:extrapreds ((not_assigns c_sorted c_sorted c_sorted c_sorted))

;; Why axiom not_assigns_def
 :assumption
   (forall (?t2u0_265 c_type)
   (forall (?t1u0_266 c_type)
   (forall (?au359_267 c_unsorted)
   (forall (?m1u358_268 c_unsorted)
   (forall (?m2u357_269 c_unsorted)
   (forall (?lu356_270 c_unsorted)
   (iff
   (not_assigns
   (c_sort (alloc_table ?t1u0_266) ?au359_267) (c_sort
                                               (memory ?t1u0_266 ?t2u0_265) ?m1u358_268) 
   (c_sort (memory ?t1u0_266 ?t2u0_265) ?m2u357_269) (c_sort
                                                     (pset ?t1u0_266) ?lu356_270))
   (forall (?pu355_271 c_unsorted)
   (implies
   (and
   (valid
   (c_sort (alloc_table ?t1u0_266) ?au359_267) (c_sort
                                               (pointer ?t1u0_266) ?pu355_271))
   (not
   (in_pset
   (c_sort (pointer ?t1u0_266) ?pu355_271) (c_sort
                                           (pset ?t1u0_266) ?lu356_270))))
   (= (c_sort
      ?t2u0_265 (smtlib__select
                (c_sort (memory ?t1u0_266 ?t2u0_265) ?m2u357_269) (c_sort
                                                                  (pointer
                                                                  ?t1u0_266) ?pu355_271)))
   (c_sort
   ?t2u0_265 (smtlib__select
             (c_sort (memory ?t1u0_266 ?t2u0_265) ?m1u358_268) (c_sort
                                                               (pointer
                                                               ?t1u0_266) ?pu355_271)))))))))))))

;; Why axiom not_assigns_refl
 :assumption
   (forall (?t2u0_272 c_type)
   (forall (?t1u0_273 c_type)
   (forall (?au362_274 c_unsorted)
   (forall (?mu361_275 c_unsorted)
   (forall (?lu360_276 c_unsorted)
   (not_assigns
   (c_sort (alloc_table ?t1u0_273) ?au362_274) (c_sort
                                               (memory ?t1u0_273 ?t2u0_272) ?mu361_275) 
   (c_sort (memory ?t1u0_273 ?t2u0_272) ?mu361_275) (c_sort
                                                    (pset ?t1u0_273) ?lu360_276)))))))

;; Why axiom not_assigns_trans
 :assumption
   (forall (?t2u0_277 c_type)
   (forall (?t1u0_278 c_type)
   (forall (?au367_279 c_unsorted)
   (forall (?m1u366_280 c_unsorted)
   (forall (?m2u365_281 c_unsorted)
   (forall (?m3u364_282 c_unsorted)
   (forall (?lu363_283 c_unsorted)
   (implies
   (not_assigns
   (c_sort (alloc_table ?t1u0_278) ?au367_279) (c_sort
                                               (memory ?t1u0_278 ?t2u0_277) ?m1u366_280) 
   (c_sort (memory ?t1u0_278 ?t2u0_277) ?m2u365_281) (c_sort
                                                     (pset ?t1u0_278) ?lu363_283))
   (implies
   (not_assigns
   (c_sort (alloc_table ?t1u0_278) ?au367_279) (c_sort
                                               (memory ?t1u0_278 ?t2u0_277) ?m2u365_281) 
   (c_sort (memory ?t1u0_278 ?t2u0_277) ?m3u364_282) (c_sort
                                                     (pset ?t1u0_278) ?lu363_283))
   (not_assigns
   (c_sort (alloc_table ?t1u0_278) ?au367_279) (c_sort
                                               (memory ?t1u0_278 ?t2u0_277) ?m1u366_280) 
   (c_sort (memory ?t1u0_278 ?t2u0_277) ?m3u364_282) (c_sort
                                                     (pset ?t1u0_278) ?lu363_283)))))))))))

;;;; Why logic full_separated
:extrapreds ((full_separated c_sorted c_sorted))

;; Why axiom full_separated_shift1
 :assumption
   (forall (?t1u0_284 c_type)
   (forall (?pu370_285 c_unsorted)
   (forall (?qu369_286 c_unsorted)
   (forall (?iu368_287 Int)
   (implies
   (full_separated
   (c_sort (pointer ?t1u0_284) ?pu370_285) (c_sort
                                           (pointer ?t1u0_284) ?qu369_286))
   (full_separated
   (c_sort (pointer ?t1u0_284) ?pu370_285) (c_sort
                                           (pointer ?t1u0_284) (shift
                                                               (c_sort
                                                               (pointer
                                                               ?t1u0_284) ?qu369_286) ?iu368_287))))))))

;; Why axiom full_separated_shift2
 :assumption
   (forall (?t1u0_288 c_type)
   (forall (?pu373_289 c_unsorted)
   (forall (?qu372_290 c_unsorted)
   (forall (?iu371_291 Int)
   (implies
   (full_separated
   (c_sort (pointer ?t1u0_288) ?pu373_289) (c_sort
                                           (pointer ?t1u0_288) ?qu372_290))
   (full_separated
   (c_sort
   (pointer ?t1u0_288) (shift
                       (c_sort (pointer ?t1u0_288) ?qu372_290) ?iu371_291)) 
   (c_sort (pointer ?t1u0_288) ?pu373_289)))))))

;; Why axiom full_separated_shift3
 :assumption
   (forall (?t1u0_292 c_type)
   (forall (?pu376_293 c_unsorted)
   (forall (?qu375_294 c_unsorted)
   (forall (?iu374_295 Int)
   (implies
   (full_separated
   (c_sort (pointer ?t1u0_292) ?qu375_294) (c_sort
                                           (pointer ?t1u0_292) ?pu376_293))
   (full_separated
   (c_sort
   (pointer ?t1u0_292) (shift
                       (c_sort (pointer ?t1u0_292) ?qu375_294) ?iu374_295)) 
   (c_sort (pointer ?t1u0_292) ?pu376_293)))))))

;; Why axiom full_separated_shift4
 :assumption
   (forall (?t1u0_296 c_type)
   (forall (?pu379_297 c_unsorted)
   (forall (?qu378_298 c_unsorted)
   (forall (?iu377_299 Int)
   (implies
   (full_separated
   (c_sort (pointer ?t1u0_296) ?qu378_298) (c_sort
                                           (pointer ?t1u0_296) ?pu379_297))
   (full_separated
   (c_sort (pointer ?t1u0_296) ?pu379_297) (c_sort
                                           (pointer ?t1u0_296) (shift
                                                               (c_sort
                                                               (pointer
                                                               ?t1u0_296) ?qu378_298) ?iu377_299))))))))

;;;; Why logic tag_table
:extrafuns ((tag_table c_type c_type))

;;;; Why logic tag_id
:extrafuns ((tag_id c_type c_type))

;;;; Why logic int_of_tag
:extrafuns ((int_of_tag c_sorted Int))

;;;; Why logic typeof
:extrafuns ((typeof c_sorted c_sorted c_unsorted))

;;;; Why logic parenttag
:extrapreds ((parenttag c_sorted c_sorted))

;;;; Why logic subtag
:extrapreds ((subtag c_sorted c_sorted))

;;;; Why logic subtag_bool
:extrafuns ((subtag_bool c_sorted c_sorted c_Boolean))

;; Why axiom subtag_bool_def
 :assumption
   (forall (?t1u0_300 c_type)
   (forall (?t1u381_301 c_unsorted)
   (forall (?t2u380_302 c_unsorted)
   (iff
   (= (subtag_bool
      (c_sort (tag_id ?t1u0_300) ?t1u381_301) (c_sort
                                              (tag_id ?t1u0_300) ?t2u380_302))
   c_Boolean_true)
   (subtag
   (c_sort (tag_id ?t1u0_300) ?t1u381_301) (c_sort
                                           (tag_id ?t1u0_300) ?t2u380_302))))))

;; Why axiom subtag_refl
 :assumption
   (forall (?t1u0_303 c_type)
   (forall (?tu382_304 c_unsorted)
   (subtag
   (c_sort (tag_id ?t1u0_303) ?tu382_304) (c_sort
                                          (tag_id ?t1u0_303) ?tu382_304))))

;; Why axiom subtag_parent
 :assumption
   (forall (?t1u0_305 c_type)
   (forall (?t1u385_306 c_unsorted)
   (forall (?t2u384_307 c_unsorted)
   (forall (?t3u383_308 c_unsorted)
   (implies
   (subtag
   (c_sort (tag_id ?t1u0_305) ?t1u385_306) (c_sort
                                           (tag_id ?t1u0_305) ?t2u384_307))
   (implies
   (parenttag
   (c_sort (tag_id ?t1u0_305) ?t2u384_307) (c_sort
                                           (tag_id ?t1u0_305) ?t3u383_308))
   (subtag
   (c_sort (tag_id ?t1u0_305) ?t1u385_306) (c_sort
                                           (tag_id ?t1u0_305) ?t3u383_308))))))))

;;;; Why logic instanceof
:extrapreds ((instanceof c_sorted c_sorted c_sorted))

;; Why axiom instanceof_def
 :assumption
   (forall (?t1u0_309 c_type)
   (forall (?au388_310 c_unsorted)
   (forall (?pu387_311 c_unsorted)
   (forall (?tu386_312 c_unsorted)
   (iff
   (instanceof
   (c_sort (tag_table ?t1u0_309) ?au388_310) (c_sort
                                             (pointer ?t1u0_309) ?pu387_311) 
   (c_sort (tag_id ?t1u0_309) ?tu386_312))
   (subtag
   (c_sort
   (tag_id ?t1u0_309) (typeof
                      (c_sort (tag_table ?t1u0_309) ?au388_310) (c_sort
                                                                (pointer
                                                                ?t1u0_309) ?pu387_311))) 
   (c_sort (tag_id ?t1u0_309) ?tu386_312)))))))

;;;; Why logic downcast
:extrafuns ((downcast c_sorted c_sorted c_sorted c_unsorted))

;; Why axiom downcast_instanceof
 :assumption
   (forall (?t1u0_313 c_type)
   (forall (?au394_314 c_unsorted)
   (forall (?pu393_315 c_unsorted)
   (forall (?su392_316 c_unsorted)
   (implies
   (instanceof
   (c_sort (tag_table ?t1u0_313) ?au394_314) (c_sort
                                             (pointer ?t1u0_313) ?pu393_315) 
   (c_sort (tag_id ?t1u0_313) ?su392_316))
   (= (c_sort
      (pointer ?t1u0_313) (downcast
                          (c_sort (tag_table ?t1u0_313) ?au394_314) (c_sort
                                                                    (pointer
                                                                    ?t1u0_313) ?pu393_315) 
                          (c_sort (tag_id ?t1u0_313) ?su392_316)))
   (c_sort (pointer ?t1u0_313) ?pu393_315)))))))

;;;; Why logic bottom_tag
:extrafuns ((bottom_tag  c_unsorted))

;; Why axiom bottom_tag_axiom
 :assumption
   (forall (?t1u0_317 c_type)
   (forall (?tu401_318 c_unsorted)
   (subtag
   (c_sort (tag_id ?t1u0_317) ?tu401_318) (c_sort
                                          (tag_id ?t1u0_317) bottom_tag))))

;;;; Why logic root_tag
:extrapreds ((root_tag c_sorted))

;; Why axiom root_tag_def
 :assumption
   (forall (?t1u0_319 c_type)
   (forall (?tu402_320 c_unsorted)
   (iff (root_tag (c_sort (tag_id ?t1u0_319) ?tu402_320))
   (parenttag
   (c_sort (tag_id ?t1u0_319) ?tu402_320) (c_sort
                                          (tag_id ?t1u0_319) bottom_tag)))))

;; Why axiom root_subtag
 :assumption
   (forall (?t1u0_321 c_type)
   (forall (?au405_322 c_unsorted)
   (forall (?bu404_323 c_unsorted)
   (forall (?cu403_324 c_unsorted)
   (implies (root_tag (c_sort (tag_id ?t1u0_321) ?au405_322))
   (implies (root_tag (c_sort (tag_id ?t1u0_321) ?bu404_323))
   (implies
   (not (= (c_sort (tag_id ?t1u0_321) ?au405_322)
   (c_sort (tag_id ?t1u0_321) ?bu404_323)))
   (implies
   (subtag
   (c_sort (tag_id ?t1u0_321) ?cu403_324) (c_sort
                                          (tag_id ?t1u0_321) ?au405_322))
   (not
   (subtag
   (c_sort (tag_id ?t1u0_321) ?cu403_324) (c_sort
                                          (tag_id ?t1u0_321) ?bu404_323)))))))))))

;;;; Why logic fully_packed
:extrapreds ((fully_packed c_sorted c_sorted c_sorted))

;; Why axiom fully_packed_def
 :assumption
   (forall (?t1u0_325 c_type)
   (forall (?tagutableu408_326 c_unsorted)
   (forall (?mutableu407_327 c_unsorted)
   (forall (?thisu406_328 c_unsorted)
   (iff
   (fully_packed
   (c_sort (tag_table ?t1u0_325) ?tagutableu408_326) (c_sort
                                                     (memory
                                                     ?t1u0_325 (tag_id
                                                               ?t1u0_325)) ?mutableu407_327) 
   (c_sort (pointer ?t1u0_325) ?thisu406_328))
   (= (c_sort
      (tag_id ?t1u0_325) (smtlib__select
                         (c_sort
                         (memory ?t1u0_325 (tag_id ?t1u0_325)) ?mutableu407_327) 
                         (c_sort (pointer ?t1u0_325) ?thisu406_328)))
   (c_sort
   (tag_id ?t1u0_325) (typeof
                      (c_sort (tag_table ?t1u0_325) ?tagutableu408_326) 
                      (c_sort (pointer ?t1u0_325) ?thisu406_328)))))))))

;;;; Why logic bw_compl
:extrafuns ((bw_compl Int Int))

;;;; Why logic bw_and
:extrafuns ((bw_and Int Int Int))

;; Why axiom bw_and_not_null
 :assumption
   (forall (?au414_329 Int)
   (forall (?bu413_330 Int)
   (implies (not (= (bw_and ?au414_329 ?bu413_330) 0))
   (and (not (= ?au414_329 0)) (not (= ?bu413_330 0))))))

;;;; Why logic bw_xor
:extrafuns ((bw_xor Int Int Int))

;;;; Why logic bw_or
:extrafuns ((bw_or Int Int Int))

;;;; Why logic lsl
:extrafuns ((lsl Int Int Int))

;; Why axiom lsl_left_positive_returns_positive
 :assumption
   (forall (?au416_331 Int)
   (forall (?bu415_332 Int)
   (implies (and (<= 0 ?au416_331) (<= 0 ?bu415_332))
   (<= 0 (lsl ?au416_331 ?bu415_332)))))

;; Why axiom lsl_left_positive_monotone
 :assumption
   (forall (?a1u419_333 Int)
   (forall (?a2u418_334 Int)
   (forall (?bu417_335 Int)
   (implies
   (and (<= 0 ?a1u419_333)
   (and (<= ?a1u419_333 ?a2u418_334) (<= 0 ?bu417_335)))
   (<= (lsl ?a1u419_333 ?bu417_335) (lsl ?a2u418_334 ?bu417_335))))))

;;;; Why logic lsr
:extrafuns ((lsr Int Int Int))

;; Why axiom lsr_left_positive_returns_positive
 :assumption
   (forall (?au421_336 Int)
   (forall (?bu420_337 Int)
   (implies (and (<= 0 ?au421_336) (<= 0 ?bu420_337))
   (<= 0 (lsr ?au421_336 ?bu420_337)))))

;; Why axiom lsr_left_positive_decreases
 :assumption
   (forall (?au423_338 Int)
   (forall (?bu422_339 Int)
   (implies (and (<= 0 ?au423_338) (<= 0 ?bu422_339))
   (<= (lsr ?au423_338 ?bu422_339) ?au423_338))))

;;;; Why logic asr
:extrafuns ((asr Int Int Int))

;; Why axiom asr_positive_on_positive
 :assumption
   (forall (?au425_340 Int)
   (forall (?bu424_341 Int)
   (implies (and (<= 0 ?au425_340) (<= 0 ?bu424_341))
   (<= 0 (asr ?au425_340 ?bu424_341)))))

;; Why axiom asr_decreases_on_positive
 :assumption
   (forall (?au427_342 Int)
   (forall (?bu426_343 Int)
   (implies (and (<= 0 ?au427_342) (<= 0 ?bu426_343))
   (<= (asr ?au427_342 ?bu426_343) ?au427_342))))

;; Why axiom asr_lsr_same_on_positive
 :assumption
   (forall (?au429_344 Int)
   (forall (?bu428_345 Int)
   (implies (and (<= 0 ?au429_344) (<= 0 ?bu428_345))
   (= (asr ?au429_344 ?bu428_345) (lsr ?au429_344 ?bu428_345)))))

;; Why axiom lsl_of_lsr_decreases_on_positive
 :assumption
   (forall (?au431_346 Int)
   (forall (?bu430_347 Int)
   (implies (and (<= 0 ?au431_346) (<= 0 ?bu430_347))
   (<= (lsl (lsr ?au431_346 ?bu430_347) ?bu430_347) ?au431_346))))

;; Why axiom lsr_of_lsl_identity_on_positive
 :assumption
   (forall (?au433_348 Int)
   (forall (?bu432_349 Int)
   (implies (and (<= 0 ?au433_348) (<= 0 ?bu432_349))
   (= (lsr (lsl ?au433_348 ?bu432_349) ?bu432_349) ?au433_348))))

;;;; Why logic alloc_extends
:extrapreds ((alloc_extends c_sorted c_sorted))

;;;; Why logic alloc_fresh
:extrapreds ((alloc_fresh c_sorted c_sorted Int))

;; Why axiom alloc_fresh_def
 :assumption
   (forall (?t1u0_350 c_type)
   (forall (?au437_351 c_unsorted)
   (forall (?pu436_352 c_unsorted)
   (forall (?nu435_353 Int)
   (iff
   (alloc_fresh
   (c_sort (alloc_table ?t1u0_350) ?au437_351) (c_sort
                                               (pointer ?t1u0_350) ?pu436_352) ?nu435_353)
   (forall (?iu434_354 Int)
   (implies (and (<= 0 ?iu434_354) (< ?iu434_354 ?nu435_353))
   (not
   (valid
   (c_sort (alloc_table ?t1u0_350) ?au437_351) (c_sort
                                               (pointer ?t1u0_350) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   ?t1u0_350) ?pu436_352) ?iu434_354)))))))))))

;; Why axiom alloc_extends_offset_min
 :assumption
   (forall (?t1u0_355 c_type)
   (forall (?a1u440_356 c_unsorted)
   (forall (?a2u439_357 c_unsorted)
   (implies
   (alloc_extends
   (c_sort (alloc_table ?t1u0_355) ?a1u440_356) (c_sort
                                                (alloc_table ?t1u0_355) ?a2u439_357))
   (forall (?pu438_358 c_unsorted)
   (implies
   (valid
   (c_sort (alloc_table ?t1u0_355) ?a1u440_356) (c_sort
                                                (pointer ?t1u0_355) ?pu438_358))
   (= (offset_min
      (c_sort (alloc_table ?t1u0_355) ?a1u440_356) (c_sort
                                                   (pointer ?t1u0_355) ?pu438_358))
   (offset_min
   (c_sort (alloc_table ?t1u0_355) ?a2u439_357) (c_sort
                                                (pointer ?t1u0_355) ?pu438_358)))))))))

;; Why axiom alloc_extends_offset_max
 :assumption
   (forall (?t1u0_359 c_type)
   (forall (?a1u443_360 c_unsorted)
   (forall (?a2u442_361 c_unsorted)
   (implies
   (alloc_extends
   (c_sort (alloc_table ?t1u0_359) ?a1u443_360) (c_sort
                                                (alloc_table ?t1u0_359) ?a2u442_361))
   (forall (?pu441_362 c_unsorted)
   (implies
   (valid
   (c_sort (alloc_table ?t1u0_359) ?a1u443_360) (c_sort
                                                (pointer ?t1u0_359) ?pu441_362))
   (= (offset_max
      (c_sort (alloc_table ?t1u0_359) ?a1u443_360) (c_sort
                                                   (pointer ?t1u0_359) ?pu441_362))
   (offset_max
   (c_sort (alloc_table ?t1u0_359) ?a2u442_361) (c_sort
                                                (pointer ?t1u0_359) ?pu441_362)))))))))

;; Why axiom alloc_extends_not_assigns_empty
 :assumption
   (forall (?t2u0_363 c_type)
   (forall (?t1u0_364 c_type)
   (forall (?a1u450_365 c_unsorted)
   (forall (?a2u449_366 c_unsorted)
   (forall (?m1u448_367 c_unsorted)
   (forall (?m2u447_368 c_unsorted)
   (forall (?lu446_369 c_unsorted)
   (forall (?pu445_370 c_unsorted)
   (forall (?nu444_371 Int)
   (implies
   (and
   (alloc_extends
   (c_sort (alloc_table ?t1u0_364) ?a1u450_365) (c_sort
                                                (alloc_table ?t1u0_364) ?a2u449_366))
   (and
   (alloc_fresh
   (c_sort (alloc_table ?t1u0_364) ?a1u450_365) (c_sort
                                                (pointer ?t1u0_364) ?pu445_370) ?nu444_371)
   (and
   (not_assigns
   (c_sort (alloc_table ?t1u0_364) ?a2u449_366) (c_sort
                                                (memory ?t1u0_364 ?t2u0_363) ?m1u448_367) 
   (c_sort (memory ?t1u0_364 ?t2u0_363) ?m2u447_368) (c_sort
                                                     (pset ?t1u0_364) ?lu446_369))
   (pset_included
   (c_sort (pset ?t1u0_364) ?lu446_369) (c_sort
                                        (pset ?t1u0_364) (pset_all
                                                         (c_sort
                                                         (pset ?t1u0_364) 
                                                         (pset_singleton
                                                         (c_sort
                                                         (pointer ?t1u0_364) ?pu445_370)))))))))
   (not_assigns
   (c_sort (alloc_table ?t1u0_364) ?a1u450_365) (c_sort
                                                (memory ?t1u0_364 ?t2u0_363) ?m1u448_367) 
   (c_sort (memory ?t1u0_364 ?t2u0_363) ?m2u447_368) (c_sort
                                                     (pset ?t1u0_364) pset_empty))))))))))))

;;;; Why logic alloc_extends_except
:extrapreds ((alloc_extends_except c_sorted c_sorted c_sorted))

;; Why axiom alloc_extends_except_offset_min
 :assumption
   (forall (?t1u0_372 c_type)
   (forall (?a1u454_373 c_unsorted)
   (forall (?a2u453_374 c_unsorted)
   (forall (?lu452_375 c_unsorted)
   (implies
   (alloc_extends_except
   (c_sort (alloc_table ?t1u0_372) ?a1u454_373) (c_sort
                                                (alloc_table ?t1u0_372) ?a2u453_374) 
   (c_sort (pset ?t1u0_372) ?lu452_375))
   (forall (?pu451_376 c_unsorted)
   (implies
   (and
   (valid
   (c_sort (alloc_table ?t1u0_372) ?a1u454_373) (c_sort
                                                (pointer ?t1u0_372) ?pu451_376))
   (not
   (in_pset
   (c_sort (pointer ?t1u0_372) ?pu451_376) (c_sort
                                           (pset ?t1u0_372) ?lu452_375))))
   (= (offset_min
      (c_sort (alloc_table ?t1u0_372) ?a1u454_373) (c_sort
                                                   (pointer ?t1u0_372) ?pu451_376))
   (offset_min
   (c_sort (alloc_table ?t1u0_372) ?a2u453_374) (c_sort
                                                (pointer ?t1u0_372) ?pu451_376))))))))))

;; Why axiom alloc_extends_except_offset_max
 :assumption
   (forall (?t1u0_377 c_type)
   (forall (?a1u458_378 c_unsorted)
   (forall (?a2u457_379 c_unsorted)
   (forall (?lu456_380 c_unsorted)
   (implies
   (alloc_extends_except
   (c_sort (alloc_table ?t1u0_377) ?a1u458_378) (c_sort
                                                (alloc_table ?t1u0_377) ?a2u457_379) 
   (c_sort (pset ?t1u0_377) ?lu456_380))
   (forall (?pu455_381 c_unsorted)
   (implies
   (and
   (valid
   (c_sort (alloc_table ?t1u0_377) ?a1u458_378) (c_sort
                                                (pointer ?t1u0_377) ?pu455_381))
   (not
   (in_pset
   (c_sort (pointer ?t1u0_377) ?pu455_381) (c_sort
                                           (pset ?t1u0_377) ?lu456_380))))
   (= (offset_max
      (c_sort (alloc_table ?t1u0_377) ?a1u458_378) (c_sort
                                                   (pointer ?t1u0_377) ?pu455_381))
   (offset_max
   (c_sort (alloc_table ?t1u0_377) ?a2u457_379) (c_sort
                                                (pointer ?t1u0_377) ?pu455_381))))))))))

;;;; Why logic mybag
:extrafuns ((mybag c_type c_type))

;;;; Why logic in_mybag
:extrapreds ((in_mybag c_sorted c_sorted))

;;;; Why logic disj_mybag
:extrapreds ((disj_mybag c_sorted c_sorted))

;; Why axiom disj_sym
 :assumption
   (forall (?t1u0_382 c_type)
   (forall (?s1u481_383 c_unsorted)
   (forall (?s2u480_384 c_unsorted)
   (implies
   (disj_mybag
   (c_sort (mybag ?t1u0_382) ?s1u481_383) (c_sort
                                          (mybag ?t1u0_382) ?s2u480_384))
   (disj_mybag
   (c_sort (mybag ?t1u0_382) ?s2u480_384) (c_sort
                                          (mybag ?t1u0_382) ?s1u481_383))))))

;;;; Why logic sub_mybag
:extrapreds ((sub_mybag c_sorted c_sorted))

;; Why axiom sub_refl
 :assumption
   (forall (?t1u0_385 c_type)
   (forall (?sau482_386 c_unsorted)
   (sub_mybag
   (c_sort (mybag (pointer ?t1u0_385)) ?sau482_386) (c_sort
                                                    (mybag
                                                    (pointer ?t1u0_385)) ?sau482_386))))

;; Why axiom sub_disj
 :assumption
   (forall (?t1u0_387 c_type)
   (forall (?s1u485_388 c_unsorted)
   (forall (?s2u484_389 c_unsorted)
   (forall (?s3u483_390 c_unsorted)
   (implies
   (disj_mybag
   (c_sort (mybag ?t1u0_387) ?s1u485_388) (c_sort
                                          (mybag ?t1u0_387) ?s3u483_390))
   (implies
   (sub_mybag
   (c_sort (mybag ?t1u0_387) ?s2u484_389) (c_sort
                                          (mybag ?t1u0_387) ?s3u483_390))
   (disj_mybag
   (c_sort (mybag ?t1u0_387) ?s1u485_388) (c_sort
                                          (mybag ?t1u0_387) ?s2u484_389))))))))

;; Why axiom sub_in
 :assumption
   (forall (?t1u0_391 c_type)
   (forall (?s1u488_392 c_unsorted)
   (forall (?s2u487_393 c_unsorted)
   (forall (?pu486_394 c_unsorted)
   (implies
   (not
   (in_mybag
   (c_sort ?t1u0_391 ?pu486_394) (c_sort (mybag ?t1u0_391) ?s2u487_393)))
   (implies
   (sub_mybag
   (c_sort (mybag ?t1u0_391) ?s1u488_392) (c_sort
                                          (mybag ?t1u0_391) ?s2u487_393))
   (not
   (in_mybag
   (c_sort ?t1u0_391 ?pu486_394) (c_sort (mybag ?t1u0_391) ?s1u488_392)))))))))

;; Why axiom sub_sub
 :assumption
   (forall (?t1u0_395 c_type)
   (forall (?s1u491_396 c_unsorted)
   (forall (?s2u490_397 c_unsorted)
   (forall (?s3u489_398 c_unsorted)
   (implies
   (sub_mybag
   (c_sort (mybag ?t1u0_395) ?s1u491_396) (c_sort
                                          (mybag ?t1u0_395) ?s2u490_397))
   (implies
   (sub_mybag
   (c_sort (mybag ?t1u0_395) ?s2u490_397) (c_sort
                                          (mybag ?t1u0_395) ?s3u489_398))
   (sub_mybag
   (c_sort (mybag ?t1u0_395) ?s1u491_396) (c_sort
                                          (mybag ?t1u0_395) ?s3u489_398))))))))

;;;; Why logic frame_between
:extrapreds ((frame_between c_sorted c_sorted c_sorted))

;; Why axiom frame_between_refl
 :assumption
   (forall (?t2u0_399 c_type)
   (forall (?t1u0_400 c_type)
   (forall (?sau493_401 c_unsorted)
   (forall (?mu492_402 c_unsorted)
   (frame_between
   (c_sort (mybag (pointer ?t1u0_400)) ?sau493_401) (c_sort
                                                    (memory
                                                    ?t1u0_400 ?t2u0_399) ?mu492_402) 
   (c_sort (memory ?t1u0_400 ?t2u0_399) ?mu492_402))))))

;; Why axiom frame_between_gen
 :assumption
   (forall (?t2u0_403 c_type)
   (forall (?t1u0_404 c_type)
   (forall (?sau498_405 c_unsorted)
   (forall (?m1u497_406 c_unsorted)
   (forall (?m2u496_407 c_unsorted)
   (forall (?pu495_408 c_unsorted)
   (forall (?vu494_409 c_unsorted)
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_404)) ?sau498_405) (c_sort
                                                    (memory
                                                    ?t1u0_404 ?t2u0_403) ?m1u497_406) 
   (c_sort (memory ?t1u0_404 ?t2u0_403) ?m2u496_407))
   (implies
   (in_mybag
   (c_sort (pointer ?t1u0_404) ?pu495_408) (c_sort
                                           (mybag (pointer ?t1u0_404)) ?sau498_405))
   (frame_between
   (c_sort (mybag (pointer ?t1u0_404)) ?sau498_405) (c_sort
                                                    (memory
                                                    ?t1u0_404 ?t2u0_403) 
                                                    (smtlib__store
                                                    (c_sort
                                                    (memory
                                                    ?t1u0_404 ?t2u0_403) ?m1u497_406) 
                                                    (c_sort
                                                    (pointer ?t1u0_404) ?pu495_408) 
                                                    (c_sort
                                                    ?t2u0_403 ?vu494_409))) 
   (c_sort (memory ?t1u0_404 ?t2u0_403) ?m2u496_407)))))))))))

;; Why axiom frame_between_gen2
 :assumption
   (forall (?t2u0_410 c_type)
   (forall (?t1u0_411 c_type)
   (forall (?sau502_412 c_unsorted)
   (forall (?m1u501_413 c_unsorted)
   (forall (?m2u500_414 c_unsorted)
   (forall (?m3u499_415 c_unsorted)
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_411)) ?sau502_412) (c_sort
                                                    (memory
                                                    ?t1u0_411 ?t2u0_410) ?m1u501_413) 
   (c_sort (memory ?t1u0_411 ?t2u0_410) ?m2u500_414))
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_411)) ?sau502_412) (c_sort
                                                    (memory
                                                    ?t1u0_411 ?t2u0_410) ?m2u500_414) 
   (c_sort (memory ?t1u0_411 ?t2u0_410) ?m3u499_415))
   (frame_between
   (c_sort (mybag (pointer ?t1u0_411)) ?sau502_412) (c_sort
                                                    (memory
                                                    ?t1u0_411 ?t2u0_410) ?m1u501_413) 
   (c_sort (memory ?t1u0_411 ?t2u0_410) ?m3u499_415))))))))))

;; Why axiom frame_between_gen_sub1
 :assumption
   (forall (?t2u0_416 c_type)
   (forall (?t1u0_417 c_type)
   (forall (?s12u508_418 c_unsorted)
   (forall (?s23u507_419 c_unsorted)
   (forall (?s13u506_420 c_unsorted)
   (forall (?m1u505_421 c_unsorted)
   (forall (?m2u504_422 c_unsorted)
   (forall (?m3u503_423 c_unsorted)
   (implies
   (sub_mybag
   (c_sort (mybag (pointer ?t1u0_417)) ?s12u508_418) (c_sort
                                                     (mybag
                                                     (pointer ?t1u0_417)) ?s13u506_420))
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_417)) ?s12u508_418) (c_sort
                                                     (memory
                                                     ?t1u0_417 ?t2u0_416) ?m1u505_421) 
   (c_sort (memory ?t1u0_417 ?t2u0_416) ?m2u504_422))
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_417)) ?s23u507_419) (c_sort
                                                     (memory
                                                     ?t1u0_417 ?t2u0_416) ?m2u504_422) 
   (c_sort (memory ?t1u0_417 ?t2u0_416) ?m3u503_423))
   (frame_between
   (c_sort (mybag (pointer ?t1u0_417)) ?s13u506_420) (c_sort
                                                     (memory
                                                     ?t1u0_417 ?t2u0_416) ?m1u505_421) 
   (c_sort (memory ?t1u0_417 ?t2u0_416) ?m3u503_423)))))))))))))

;; Why axiom frame_between_gen_sub2
 :assumption
   (forall (?t2u0_424 c_type)
   (forall (?t1u0_425 c_type)
   (forall (?s12u514_426 c_unsorted)
   (forall (?s23u513_427 c_unsorted)
   (forall (?s13u512_428 c_unsorted)
   (forall (?m1u511_429 c_unsorted)
   (forall (?m2u510_430 c_unsorted)
   (forall (?m3u509_431 c_unsorted)
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_425)) ?s12u514_426) (c_sort
                                                     (memory
                                                     ?t1u0_425 ?t2u0_424) ?m1u511_429) 
   (c_sort (memory ?t1u0_425 ?t2u0_424) ?m2u510_430))
   (implies
   (sub_mybag
   (c_sort (mybag (pointer ?t1u0_425)) ?s23u513_427) (c_sort
                                                     (mybag
                                                     (pointer ?t1u0_425)) ?s13u512_428))
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_425)) ?s23u513_427) (c_sort
                                                     (memory
                                                     ?t1u0_425 ?t2u0_424) ?m2u510_430) 
   (c_sort (memory ?t1u0_425 ?t2u0_424) ?m3u509_431))
   (frame_between
   (c_sort (mybag (pointer ?t1u0_425)) ?s13u512_428) (c_sort
                                                     (memory
                                                     ?t1u0_425 ?t2u0_424) ?m1u511_429) 
   (c_sort (memory ?t1u0_425 ?t2u0_424) ?m3u509_431)))))))))))))

;; Why axiom frame_between_pointer
 :assumption
   (forall (?t2u0_432 c_type)
   (forall (?t1u0_433 c_type)
   (forall (?sau519_434 c_unsorted)
   (forall (?m1u518_435 c_unsorted)
   (forall (?m2u517_436 c_unsorted)
   (forall (?pu516_437 c_unsorted)
   (forall (?vu515_438 c_unsorted)
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_433)) ?sau519_434) (c_sort
                                                    (memory
                                                    ?t1u0_433 ?t2u0_432) ?m1u518_435) 
   (c_sort (memory ?t1u0_433 ?t2u0_432) ?m2u517_436))
   (implies
   (not
   (in_mybag
   (c_sort (pointer ?t1u0_433) ?pu516_437) (c_sort
                                           (mybag (pointer ?t1u0_433)) ?sau519_434)))
   (= (c_sort
      ?t2u0_432 (smtlib__select
                (c_sort (memory ?t1u0_433 ?t2u0_432) ?m1u518_435) (c_sort
                                                                  (pointer
                                                                  ?t1u0_433) ?pu516_437)))
   (c_sort
   ?t2u0_432 (smtlib__select
             (c_sort (memory ?t1u0_433 ?t2u0_432) ?m2u517_436) (c_sort
                                                               (pointer
                                                               ?t1u0_433) ?pu516_437)))))))))))))

;; Why axiom frame_between_sub
 :assumption
   (forall (?t2u0_439 c_type)
   (forall (?t1u0_440 c_type)
   (forall (?sau523_441 c_unsorted)
   (forall (?sbu522_442 c_unsorted)
   (forall (?m1u521_443 c_unsorted)
   (forall (?m2u520_444 c_unsorted)
   (implies
   (frame_between
   (c_sort (mybag (pointer ?t1u0_440)) ?sau523_441) (c_sort
                                                    (memory
                                                    ?t1u0_440 ?t2u0_439) ?m1u521_443) 
   (c_sort (memory ?t1u0_440 ?t2u0_439) ?m2u520_444))
   (implies
   (sub_mybag
   (c_sort (mybag (pointer ?t1u0_440)) ?sau523_441) (c_sort
                                                    (mybag
                                                    (pointer ?t1u0_440)) ?sbu522_442))
   (frame_between
   (c_sort (mybag (pointer ?t1u0_440)) ?sbu522_442) (c_sort
                                                    (memory
                                                    ?t1u0_440 ?t2u0_439) ?m1u521_443) 
   (c_sort (memory ?t1u0_440 ?t2u0_439) ?m2u520_444))))))))))

;;;; Why logic charP
:extrafuns ((charP  c_type))

;;;; Why logic int32
:extrafuns ((int32  c_type))

;;;; Why logic int8
:extrafuns ((int8  c_type))

;;;; Why logic intP
:extrafuns ((intP  c_type))

;;;; Why logic padding
:extrafuns ((padding  c_type))

;;;; Why logic uint8
:extrafuns ((uint8  c_type))

;;;; Why logic unsigned_charP
:extrafuns ((unsigned_charP  c_type))

;;;; Why logic voidP
:extrafuns ((voidP  c_type))

;;;; Why logic integer_of_int32
:extrafuns ((integer_of_int32 c_sorted Int))

;;;; Why logic bubble_sorted
:extrapreds ((bubble_sorted c_sorted Int Int c_sorted))

;; Why axiom bubble_sorted_def
 :assumption
   (forall (?au0u0u528_445 c_unsorted)
   (forall (?startuiu527_446 Int)
   (forall (?enduiu526_447 Int)
   (forall (?intPuintMuau0u3u525_448 c_unsorted)
   (iff
   (bubble_sorted
   (c_sort (pointer intP) ?au0u0u528_445) ?startuiu527_446 ?enduiu526_447 
   (c_sort (memory intP int32) ?intPuintMuau0u3u525_448))
   (forall (?k1u524_449 Int)
   (implies
   (and (<= ?startuiu527_446 ?k1u524_449) (< ?k1u524_449 ?enduiu526_447))
   (<= (integer_of_int32
       (c_sort
       int32 (smtlib__select
             (c_sort (memory intP int32) ?intPuintMuau0u3u525_448) (c_sort
                                                                   (pointer
                                                                   intP) 
                                                                   (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?au0u0u528_445) ?k1u524_449))))) 
   (integer_of_int32
   (c_sort
   int32 (smtlib__select
         (c_sort (memory intP int32) ?intPuintMuau0u3u525_448) (c_sort
                                                               (pointer intP) 
                                                               (shift
                                                               (c_sort
                                                               (pointer intP) ?au0u0u528_445) 
                                                               (+ ?k1u524_449 1))))))))))))))

;;;; Why logic charP_tag
:extrafuns ((charP_tag  c_unsorted))

;; Why axiom charP_int
 :assumption (= (int_of_tag (c_sort (tag_id charP) charP_tag)) 1)

;;;; Why logic charP_of_pointer_address
:extrafuns ((charP_of_pointer_address c_sorted c_unsorted))

;; Why axiom charP_of_pointer_address_of_pointer_addr
 :assumption
   (forall (?pu529_450 c_unsorted)
   (= (c_sort (pointer charP) ?pu529_450)
   (c_sort
   (pointer charP) (charP_of_pointer_address
                   (c_sort
                   (pointer c_unit) (pointer_address
                                    (c_sort (pointer charP) ?pu529_450)))))))

;; Why axiom charP_parenttag_bottom
 :assumption
   (parenttag
   (c_sort (tag_id charP) charP_tag) (c_sort (tag_id charP) bottom_tag))

;; Why axiom charP_tags
 :assumption
   (forall (?xu531_451 c_unsorted)
   (forall (?charPutagutableu530_452 c_unsorted)
   (instanceof
   (c_sort (tag_table charP) ?charPutagutableu530_452) (c_sort
                                                       (pointer charP) ?xu531_451) 
   (c_sort (tag_id charP) charP_tag))))

;;;; Why logic dom
:extrapreds ((dom Int Int))

;; Why axiom dom_def
 :assumption
   (forall (?ku0u533_453 Int)
   (forall (?nu532_454 Int)
   (iff (dom ?ku0u533_453 ?nu532_454)
   (and (>= ?ku0u533_453 0) (<= ?ku0u533_453 (- ?nu532_454 1))))))

;;;; Why logic eq_int32
:extrapreds ((eq_int32 c_sorted c_sorted))

;; Why axiom eq_int32_def
 :assumption
   (forall (?xu535_455 c_unsorted)
   (forall (?yu534_456 c_unsorted)
   (iff (eq_int32 (c_sort int32 ?xu535_455) (c_sort int32 ?yu534_456))
   (= (integer_of_int32 (c_sort int32 ?xu535_455))
   (integer_of_int32 (c_sort int32 ?yu534_456))))))

;;;; Why logic integer_of_int8
:extrafuns ((integer_of_int8 c_sorted Int))

;;;; Why logic eq_int8
:extrapreds ((eq_int8 c_sorted c_sorted))

;; Why axiom eq_int8_def
 :assumption
   (forall (?xu537_457 c_unsorted)
   (forall (?yu536_458 c_unsorted)
   (iff (eq_int8 (c_sort int8 ?xu537_457) (c_sort int8 ?yu536_458))
   (= (integer_of_int8 (c_sort int8 ?xu537_457))
   (integer_of_int8 (c_sort int8 ?yu536_458))))))

;;;; Why logic integer_of_uint8
:extrafuns ((integer_of_uint8 c_sorted Int))

;;;; Why logic eq_uint8
:extrapreds ((eq_uint8 c_sorted c_sorted))

;; Why axiom eq_uint8_def
 :assumption
   (forall (?xu539_459 c_unsorted)
   (forall (?yu538_460 c_unsorted)
   (iff (eq_uint8 (c_sort uint8 ?xu539_459) (c_sort uint8 ?yu538_460))
   (= (integer_of_uint8 (c_sort uint8 ?xu539_459))
   (integer_of_uint8 (c_sort uint8 ?yu538_460))))))

;;;; Why logic int32_of_integer
:extrafuns ((int32_of_integer Int c_unsorted))

;; Why axiom int32_coerce
 :assumption
   (forall (?xu540_461 Int)
   (implies (and (<= (- 2147483648) ?xu540_461) (<= ?xu540_461 2147483647))
   (= (integer_of_int32 (c_sort int32 (int32_of_integer ?xu540_461)))
   ?xu540_461)))

;; Why axiom int32_extensionality
 :assumption
   (forall (?xu542_462 c_unsorted)
   (forall (?yu541_463 c_unsorted)
   (implies
   (= (integer_of_int32 (c_sort int32 ?xu542_462))
   (integer_of_int32 (c_sort int32 ?yu541_463)))
   (= (c_sort int32 ?xu542_462) (c_sort int32 ?yu541_463)))))

;; Why axiom int32_range
 :assumption
   (forall (?xu543_464 c_unsorted)
   (and (<= (- 2147483648) (integer_of_int32 (c_sort int32 ?xu543_464)))
   (<= (integer_of_int32 (c_sort int32 ?xu543_464)) 2147483647)))

;;;; Why logic int8_of_integer
:extrafuns ((int8_of_integer Int c_unsorted))

;; Why axiom int8_coerce
 :assumption
   (forall (?xu544_465 Int)
   (implies (and (<= (- 128) ?xu544_465) (<= ?xu544_465 127))
   (= (integer_of_int8 (c_sort int8 (int8_of_integer ?xu544_465)))
   ?xu544_465)))

;; Why axiom int8_extensionality
 :assumption
   (forall (?xu546_466 c_unsorted)
   (forall (?yu545_467 c_unsorted)
   (implies
   (= (integer_of_int8 (c_sort int8 ?xu546_466))
   (integer_of_int8 (c_sort int8 ?yu545_467)))
   (= (c_sort int8 ?xu546_466) (c_sort int8 ?yu545_467)))))

;; Why axiom int8_range
 :assumption
   (forall (?xu547_468 c_unsorted)
   (and (<= (- 128) (integer_of_int8 (c_sort int8 ?xu547_468)))
   (<= (integer_of_int8 (c_sort int8 ?xu547_468)) 127)))

;;;; Why logic intP_tag
:extrafuns ((intP_tag  c_unsorted))

;; Why axiom intP_int
 :assumption (= (int_of_tag (c_sort (tag_id intP) intP_tag)) 1)

;;;; Why logic intP_of_pointer_address
:extrafuns ((intP_of_pointer_address c_sorted c_unsorted))

;; Why axiom intP_of_pointer_address_of_pointer_addr
 :assumption
   (forall (?pu548_469 c_unsorted)
   (= (c_sort (pointer intP) ?pu548_469)
   (c_sort
   (pointer intP) (intP_of_pointer_address
                  (c_sort
                  (pointer c_unit) (pointer_address
                                   (c_sort (pointer intP) ?pu548_469)))))))

;; Why axiom intP_parenttag_bottom
 :assumption
   (parenttag
   (c_sort (tag_id intP) intP_tag) (c_sort (tag_id intP) bottom_tag))

;; Why axiom intP_tags
 :assumption
   (forall (?xu550_470 c_unsorted)
   (forall (?intPutagutableu549_471 c_unsorted)
   (instanceof
   (c_sort (tag_table intP) ?intPutagutableu549_471) (c_sort
                                                     (pointer intP) ?xu550_470) 
   (c_sort (tag_id intP) intP_tag))))

;;;; Why logic left_valid_struct_charP
:extrapreds ((left_valid_struct_charP c_sorted Int c_sorted))

;; Why axiom left_valid_struct_charP_def
 :assumption
   (forall (?pu553_472 c_unsorted)
   (forall (?au552_473 Int)
   (forall (?charPuallocutableu551_474 c_unsorted)
   (iff
   (left_valid_struct_charP
   (c_sort (pointer charP) ?pu553_472) ?au552_473 (c_sort
                                                  (alloc_table charP) ?charPuallocutableu551_474))
   (<= (offset_min
       (c_sort (alloc_table charP) ?charPuallocutableu551_474) (c_sort
                                                               (pointer
                                                               charP) ?pu553_472)) ?au552_473)))))

;;;; Why logic left_valid_struct_intP
:extrapreds ((left_valid_struct_intP c_sorted Int c_sorted))

;; Why axiom left_valid_struct_intP_def
 :assumption
   (forall (?pu556_475 c_unsorted)
   (forall (?au555_476 Int)
   (forall (?intPuallocutableu554_477 c_unsorted)
   (iff
   (left_valid_struct_intP
   (c_sort (pointer intP) ?pu556_475) ?au555_476 (c_sort
                                                 (alloc_table intP) ?intPuallocutableu554_477))
   (<= (offset_min
       (c_sort (alloc_table intP) ?intPuallocutableu554_477) (c_sort
                                                             (pointer intP) ?pu556_475)) ?au555_476)))))

;;;; Why logic left_valid_struct_unsigned_charP
:extrapreds ((left_valid_struct_unsigned_charP c_sorted Int c_sorted))

;; Why axiom left_valid_struct_unsigned_charP_def
 :assumption
   (forall (?pu559_478 c_unsorted)
   (forall (?au558_479 Int)
   (forall (?unsigneducharPuallocutableu557_480 c_unsorted)
   (iff
   (left_valid_struct_unsigned_charP
   (c_sort (pointer unsigned_charP) ?pu559_478) ?au558_479 (c_sort
                                                           (alloc_table
                                                           unsigned_charP) ?unsigneducharPuallocutableu557_480))
   (<= (offset_min
       (c_sort
       (alloc_table unsigned_charP) ?unsigneducharPuallocutableu557_480) 
       (c_sort (pointer unsigned_charP) ?pu559_478)) ?au558_479)))))

;;;; Why logic left_valid_struct_voidP
:extrapreds ((left_valid_struct_voidP c_sorted Int c_sorted))

;; Why axiom left_valid_struct_voidP_def
 :assumption
   (forall (?pu562_481 c_unsorted)
   (forall (?au561_482 Int)
   (forall (?voidPuallocutableu560_483 c_unsorted)
   (iff
   (left_valid_struct_voidP
   (c_sort (pointer voidP) ?pu562_481) ?au561_482 (c_sort
                                                  (alloc_table voidP) ?voidPuallocutableu560_483))
   (<= (offset_min
       (c_sort (alloc_table voidP) ?voidPuallocutableu560_483) (c_sort
                                                               (pointer
                                                               voidP) ?pu562_481)) ?au561_482)))))

;; Why axiom pointer_addr_of_charP_of_pointer_address
 :assumption
   (forall (?pu563_484 c_unsorted)
   (= (c_sort (pointer c_unit) ?pu563_484)
   (c_sort
   (pointer c_unit) (pointer_address
                    (c_sort
                    (pointer charP) (charP_of_pointer_address
                                    (c_sort (pointer c_unit) ?pu563_484)))))))

;; Why axiom pointer_addr_of_intP_of_pointer_address
 :assumption
   (forall (?pu564_485 c_unsorted)
   (= (c_sort (pointer c_unit) ?pu564_485)
   (c_sort
   (pointer c_unit) (pointer_address
                    (c_sort
                    (pointer intP) (intP_of_pointer_address
                                   (c_sort (pointer c_unit) ?pu564_485)))))))

;;;; Why logic unsigned_charP_of_pointer_address
:extrafuns ((unsigned_charP_of_pointer_address c_sorted c_unsorted))

;; Why axiom pointer_addr_of_unsigned_charP_of_pointer_address
 :assumption
   (forall (?pu565_486 c_unsorted)
   (= (c_sort (pointer c_unit) ?pu565_486)
   (c_sort
   (pointer c_unit) (pointer_address
                    (c_sort
                    (pointer unsigned_charP) (unsigned_charP_of_pointer_address
                                             (c_sort
                                             (pointer c_unit) ?pu565_486)))))))

;;;; Why logic voidP_of_pointer_address
:extrafuns ((voidP_of_pointer_address c_sorted c_unsorted))

;; Why axiom pointer_addr_of_voidP_of_pointer_address
 :assumption
   (forall (?pu566_487 c_unsorted)
   (= (c_sort (pointer c_unit) ?pu566_487)
   (c_sort
   (pointer c_unit) (pointer_address
                    (c_sort
                    (pointer voidP) (voidP_of_pointer_address
                                    (c_sort (pointer c_unit) ?pu566_487)))))))

;;;; Why logic right_valid_struct_charP
:extrapreds ((right_valid_struct_charP c_sorted Int c_sorted))

;; Why axiom right_valid_struct_charP_def
 :assumption
   (forall (?pu569_488 c_unsorted)
   (forall (?bu568_489 Int)
   (forall (?charPuallocutableu567_490 c_unsorted)
   (iff
   (right_valid_struct_charP
   (c_sort (pointer charP) ?pu569_488) ?bu568_489 (c_sort
                                                  (alloc_table charP) ?charPuallocutableu567_490))
   (>= (offset_max
       (c_sort (alloc_table charP) ?charPuallocutableu567_490) (c_sort
                                                               (pointer
                                                               charP) ?pu569_488)) ?bu568_489)))))

;;;; Why logic right_valid_struct_intP
:extrapreds ((right_valid_struct_intP c_sorted Int c_sorted))

;; Why axiom right_valid_struct_intP_def
 :assumption
   (forall (?pu572_491 c_unsorted)
   (forall (?bu571_492 Int)
   (forall (?intPuallocutableu570_493 c_unsorted)
   (iff
   (right_valid_struct_intP
   (c_sort (pointer intP) ?pu572_491) ?bu571_492 (c_sort
                                                 (alloc_table intP) ?intPuallocutableu570_493))
   (>= (offset_max
       (c_sort (alloc_table intP) ?intPuallocutableu570_493) (c_sort
                                                             (pointer intP) ?pu572_491)) ?bu571_492)))))

;;;; Why logic right_valid_struct_unsigned_charP
:extrapreds ((right_valid_struct_unsigned_charP c_sorted Int c_sorted))

;; Why axiom right_valid_struct_unsigned_charP_def
 :assumption
   (forall (?pu575_494 c_unsorted)
   (forall (?bu574_495 Int)
   (forall (?unsigneducharPuallocutableu573_496 c_unsorted)
   (iff
   (right_valid_struct_unsigned_charP
   (c_sort (pointer unsigned_charP) ?pu575_494) ?bu574_495 (c_sort
                                                           (alloc_table
                                                           unsigned_charP) ?unsigneducharPuallocutableu573_496))
   (>= (offset_max
       (c_sort
       (alloc_table unsigned_charP) ?unsigneducharPuallocutableu573_496) 
       (c_sort (pointer unsigned_charP) ?pu575_494)) ?bu574_495)))))

;;;; Why logic right_valid_struct_voidP
:extrapreds ((right_valid_struct_voidP c_sorted Int c_sorted))

;; Why axiom right_valid_struct_voidP_def
 :assumption
   (forall (?pu578_497 c_unsorted)
   (forall (?bu577_498 Int)
   (forall (?voidPuallocutableu576_499 c_unsorted)
   (iff
   (right_valid_struct_voidP
   (c_sort (pointer voidP) ?pu578_497) ?bu577_498 (c_sort
                                                  (alloc_table voidP) ?voidPuallocutableu576_499))
   (>= (offset_max
       (c_sort (alloc_table voidP) ?voidPuallocutableu576_499) (c_sort
                                                               (pointer
                                                               voidP) ?pu578_497)) ?bu577_498)))))

;;;; Why logic strict_valid_root_charP
:extrapreds ((strict_valid_root_charP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_root_charP_def
 :assumption
   (forall (?pu582_500 c_unsorted)
   (forall (?au581_501 Int)
   (forall (?bu580_502 Int)
   (forall (?charPuallocutableu579_503 c_unsorted)
   (iff
   (strict_valid_root_charP
   (c_sort (pointer charP) ?pu582_500) ?au581_501 ?bu580_502 (c_sort
                                                             (alloc_table
                                                             charP) ?charPuallocutableu579_503))
   (and
   (= (offset_min
      (c_sort (alloc_table charP) ?charPuallocutableu579_503) (c_sort
                                                              (pointer charP) ?pu582_500))
   ?au581_501)
   (= (offset_max
      (c_sort (alloc_table charP) ?charPuallocutableu579_503) (c_sort
                                                              (pointer charP) ?pu582_500))
   ?bu580_502)))))))

;;;; Why logic strict_valid_root_intP
:extrapreds ((strict_valid_root_intP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_root_intP_def
 :assumption
   (forall (?pu586_504 c_unsorted)
   (forall (?au585_505 Int)
   (forall (?bu584_506 Int)
   (forall (?intPuallocutableu583_507 c_unsorted)
   (iff
   (strict_valid_root_intP
   (c_sort (pointer intP) ?pu586_504) ?au585_505 ?bu584_506 (c_sort
                                                            (alloc_table
                                                            intP) ?intPuallocutableu583_507))
   (and
   (= (offset_min
      (c_sort (alloc_table intP) ?intPuallocutableu583_507) (c_sort
                                                            (pointer intP) ?pu586_504))
   ?au585_505)
   (= (offset_max
      (c_sort (alloc_table intP) ?intPuallocutableu583_507) (c_sort
                                                            (pointer intP) ?pu586_504))
   ?bu584_506)))))))

;;;; Why logic strict_valid_root_unsigned_charP
:extrapreds ((strict_valid_root_unsigned_charP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_root_unsigned_charP_def
 :assumption
   (forall (?pu590_508 c_unsorted)
   (forall (?au589_509 Int)
   (forall (?bu588_510 Int)
   (forall (?unsigneducharPuallocutableu587_511 c_unsorted)
   (iff
   (strict_valid_root_unsigned_charP
   (c_sort (pointer unsigned_charP) ?pu590_508) ?au589_509 ?bu588_510 
   (c_sort (alloc_table unsigned_charP) ?unsigneducharPuallocutableu587_511))
   (and
   (= (offset_min
      (c_sort
      (alloc_table unsigned_charP) ?unsigneducharPuallocutableu587_511) 
      (c_sort (pointer unsigned_charP) ?pu590_508))
   ?au589_509)
   (= (offset_max
      (c_sort
      (alloc_table unsigned_charP) ?unsigneducharPuallocutableu587_511) 
      (c_sort (pointer unsigned_charP) ?pu590_508))
   ?bu588_510)))))))

;;;; Why logic strict_valid_root_voidP
:extrapreds ((strict_valid_root_voidP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_root_voidP_def
 :assumption
   (forall (?pu594_512 c_unsorted)
   (forall (?au593_513 Int)
   (forall (?bu592_514 Int)
   (forall (?voidPuallocutableu591_515 c_unsorted)
   (iff
   (strict_valid_root_voidP
   (c_sort (pointer voidP) ?pu594_512) ?au593_513 ?bu592_514 (c_sort
                                                             (alloc_table
                                                             voidP) ?voidPuallocutableu591_515))
   (and
   (= (offset_min
      (c_sort (alloc_table voidP) ?voidPuallocutableu591_515) (c_sort
                                                              (pointer voidP) ?pu594_512))
   ?au593_513)
   (= (offset_max
      (c_sort (alloc_table voidP) ?voidPuallocutableu591_515) (c_sort
                                                              (pointer voidP) ?pu594_512))
   ?bu592_514)))))))

;;;; Why logic strict_valid_struct_charP
:extrapreds ((strict_valid_struct_charP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_struct_charP_def
 :assumption
   (forall (?pu598_516 c_unsorted)
   (forall (?au597_517 Int)
   (forall (?bu596_518 Int)
   (forall (?charPuallocutableu595_519 c_unsorted)
   (iff
   (strict_valid_struct_charP
   (c_sort (pointer charP) ?pu598_516) ?au597_517 ?bu596_518 (c_sort
                                                             (alloc_table
                                                             charP) ?charPuallocutableu595_519))
   (and
   (= (offset_min
      (c_sort (alloc_table charP) ?charPuallocutableu595_519) (c_sort
                                                              (pointer charP) ?pu598_516))
   ?au597_517)
   (= (offset_max
      (c_sort (alloc_table charP) ?charPuallocutableu595_519) (c_sort
                                                              (pointer charP) ?pu598_516))
   ?bu596_518)))))))

;;;; Why logic strict_valid_struct_intP
:extrapreds ((strict_valid_struct_intP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_struct_intP_def
 :assumption
   (forall (?pu602_520 c_unsorted)
   (forall (?au601_521 Int)
   (forall (?bu600_522 Int)
   (forall (?intPuallocutableu599_523 c_unsorted)
   (iff
   (strict_valid_struct_intP
   (c_sort (pointer intP) ?pu602_520) ?au601_521 ?bu600_522 (c_sort
                                                            (alloc_table
                                                            intP) ?intPuallocutableu599_523))
   (and
   (= (offset_min
      (c_sort (alloc_table intP) ?intPuallocutableu599_523) (c_sort
                                                            (pointer intP) ?pu602_520))
   ?au601_521)
   (= (offset_max
      (c_sort (alloc_table intP) ?intPuallocutableu599_523) (c_sort
                                                            (pointer intP) ?pu602_520))
   ?bu600_522)))))))

;;;; Why logic strict_valid_struct_unsigned_charP
:extrapreds ((strict_valid_struct_unsigned_charP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_struct_unsigned_charP_def
 :assumption
   (forall (?pu606_524 c_unsorted)
   (forall (?au605_525 Int)
   (forall (?bu604_526 Int)
   (forall (?unsigneducharPuallocutableu603_527 c_unsorted)
   (iff
   (strict_valid_struct_unsigned_charP
   (c_sort (pointer unsigned_charP) ?pu606_524) ?au605_525 ?bu604_526 
   (c_sort (alloc_table unsigned_charP) ?unsigneducharPuallocutableu603_527))
   (and
   (= (offset_min
      (c_sort
      (alloc_table unsigned_charP) ?unsigneducharPuallocutableu603_527) 
      (c_sort (pointer unsigned_charP) ?pu606_524))
   ?au605_525)
   (= (offset_max
      (c_sort
      (alloc_table unsigned_charP) ?unsigneducharPuallocutableu603_527) 
      (c_sort (pointer unsigned_charP) ?pu606_524))
   ?bu604_526)))))))

;;;; Why logic strict_valid_struct_voidP
:extrapreds ((strict_valid_struct_voidP c_sorted Int Int c_sorted))

;; Why axiom strict_valid_struct_voidP_def
 :assumption
   (forall (?pu610_528 c_unsorted)
   (forall (?au609_529 Int)
   (forall (?bu608_530 Int)
   (forall (?voidPuallocutableu607_531 c_unsorted)
   (iff
   (strict_valid_struct_voidP
   (c_sort (pointer voidP) ?pu610_528) ?au609_529 ?bu608_530 (c_sort
                                                             (alloc_table
                                                             voidP) ?voidPuallocutableu607_531))
   (and
   (= (offset_min
      (c_sort (alloc_table voidP) ?voidPuallocutableu607_531) (c_sort
                                                              (pointer voidP) ?pu610_528))
   ?au609_529)
   (= (offset_max
      (c_sort (alloc_table voidP) ?voidPuallocutableu607_531) (c_sort
                                                              (pointer voidP) ?pu610_528))
   ?bu608_530)))))))

;;;; Why logic swapped
:extrapreds ((swapped c_sorted Int Int c_sorted c_sorted))

;; Why axiom swapped_def
 :assumption
   (forall (?au616_532 c_unsorted)
   (forall (?iu1u615_533 Int)
   (forall (?ju0u614_534 Int)
   (forall (?intPuintMuau1uatuL2u613_535 c_unsorted)
   (forall (?intPuintMuau1uatuL1u612_536 c_unsorted)
   (iff
   (swapped
   (c_sort (pointer intP) ?au616_532) ?iu1u615_533 ?ju0u614_534 (c_sort
                                                                (memory
                                                                intP int32) ?intPuintMuau1uatuL2u613_535) 
   (c_sort (memory intP int32) ?intPuintMuau1uatuL1u612_536))
   (and
   (= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intPuintMuau1uatuL1u612_536) 
            (c_sort
            (pointer intP) (shift
                           (c_sort (pointer intP) ?au616_532) ?iu1u615_533)))))
   (integer_of_int32
   (c_sort
   int32 (smtlib__select
         (c_sort (memory intP int32) ?intPuintMuau1uatuL2u613_535) (c_sort
                                                                   (pointer
                                                                   intP) 
                                                                   (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?au616_532) ?ju0u614_534))))))
   (and
   (= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intPuintMuau1uatuL1u612_536) 
            (c_sort
            (pointer intP) (shift
                           (c_sort (pointer intP) ?au616_532) ?ju0u614_534)))))
   (integer_of_int32
   (c_sort
   int32 (smtlib__select
         (c_sort (memory intP int32) ?intPuintMuau1uatuL2u613_535) (c_sort
                                                                   (pointer
                                                                   intP) 
                                                                   (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?au616_532) ?iu1u615_533))))))
   (forall (?ku611_537 Int)
   (implies
   (and (not (= ?ku611_537 ?iu1u615_533)) (not (= ?ku611_537 ?ju0u614_534)))
   (= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intPuintMuau1uatuL1u612_536) 
            (c_sort
            (pointer intP) (shift
                           (c_sort (pointer intP) ?au616_532) ?ku611_537)))))
   (integer_of_int32
   (c_sort
   int32 (smtlib__select
         (c_sort (memory intP int32) ?intPuintMuau1uatuL2u613_535) (c_sort
                                                                   (pointer
                                                                   intP) 
                                                                   (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?au616_532) ?ku611_537))))))))))))))))

;;;; Why logic uint8_of_integer
:extrafuns ((uint8_of_integer Int c_unsorted))

;; Why axiom uint8_coerce
 :assumption
   (forall (?xu617_538 Int)
   (implies (and (<= 0 ?xu617_538) (<= ?xu617_538 255))
   (= (integer_of_uint8 (c_sort uint8 (uint8_of_integer ?xu617_538)))
   ?xu617_538)))

;; Why axiom uint8_extensionality
 :assumption
   (forall (?xu619_539 c_unsorted)
   (forall (?yu618_540 c_unsorted)
   (implies
   (= (integer_of_uint8 (c_sort uint8 ?xu619_539))
   (integer_of_uint8 (c_sort uint8 ?yu618_540)))
   (= (c_sort uint8 ?xu619_539) (c_sort uint8 ?yu618_540)))))

;; Why axiom uint8_range
 :assumption
   (forall (?xu620_541 c_unsorted)
   (and (<= 0 (integer_of_uint8 (c_sort uint8 ?xu620_541)))
   (<= (integer_of_uint8 (c_sort uint8 ?xu620_541)) 255)))

;;;; Why logic unsigned_charP_tag
:extrafuns ((unsigned_charP_tag  c_unsorted))

;; Why axiom unsigned_charP_int
 :assumption
   (= (int_of_tag (c_sort (tag_id unsigned_charP) unsigned_charP_tag)) 1)

;; Why axiom unsigned_charP_of_pointer_address_of_pointer_addr
 :assumption
   (forall (?pu621_542 c_unsorted)
   (= (c_sort (pointer unsigned_charP) ?pu621_542)
   (c_sort
   (pointer unsigned_charP) (unsigned_charP_of_pointer_address
                            (c_sort
                            (pointer c_unit) (pointer_address
                                             (c_sort
                                             (pointer unsigned_charP) ?pu621_542)))))))

;; Why axiom unsigned_charP_parenttag_bottom
 :assumption
   (parenttag
   (c_sort (tag_id unsigned_charP) unsigned_charP_tag) (c_sort
                                                       (tag_id
                                                       unsigned_charP) bottom_tag))

;; Why axiom unsigned_charP_tags
 :assumption
   (forall (?xu623_543 c_unsorted)
   (forall (?unsigneducharPutagutableu622_544 c_unsorted)
   (instanceof
   (c_sort (tag_table unsigned_charP) ?unsigneducharPutagutableu622_544) 
   (c_sort (pointer unsigned_charP) ?xu623_543) (c_sort
                                                (tag_id unsigned_charP) unsigned_charP_tag))))

;;;; Why logic valid_root_charP
:extrapreds ((valid_root_charP c_sorted Int Int c_sorted))

;; Why axiom valid_root_charP_def
 :assumption
   (forall (?pu627_545 c_unsorted)
   (forall (?au626_546 Int)
   (forall (?bu625_547 Int)
   (forall (?charPuallocutableu624_548 c_unsorted)
   (iff
   (valid_root_charP
   (c_sort (pointer charP) ?pu627_545) ?au626_546 ?bu625_547 (c_sort
                                                             (alloc_table
                                                             charP) ?charPuallocutableu624_548))
   (and
   (<= (offset_min
       (c_sort (alloc_table charP) ?charPuallocutableu624_548) (c_sort
                                                               (pointer
                                                               charP) ?pu627_545)) ?au626_546)
   (>= (offset_max
       (c_sort (alloc_table charP) ?charPuallocutableu624_548) (c_sort
                                                               (pointer
                                                               charP) ?pu627_545)) ?bu625_547)))))))

;;;; Why logic valid_root_intP
:extrapreds ((valid_root_intP c_sorted Int Int c_sorted))

;; Why axiom valid_root_intP_def
 :assumption
   (forall (?pu631_549 c_unsorted)
   (forall (?au630_550 Int)
   (forall (?bu629_551 Int)
   (forall (?intPuallocutableu628_552 c_unsorted)
   (iff
   (valid_root_intP
   (c_sort (pointer intP) ?pu631_549) ?au630_550 ?bu629_551 (c_sort
                                                            (alloc_table
                                                            intP) ?intPuallocutableu628_552))
   (and
   (<= (offset_min
       (c_sort (alloc_table intP) ?intPuallocutableu628_552) (c_sort
                                                             (pointer intP) ?pu631_549)) ?au630_550)
   (>= (offset_max
       (c_sort (alloc_table intP) ?intPuallocutableu628_552) (c_sort
                                                             (pointer intP) ?pu631_549)) ?bu629_551)))))))

;;;; Why logic valid_root_unsigned_charP
:extrapreds ((valid_root_unsigned_charP c_sorted Int Int c_sorted))

;; Why axiom valid_root_unsigned_charP_def
 :assumption
   (forall (?pu635_553 c_unsorted)
   (forall (?au634_554 Int)
   (forall (?bu633_555 Int)
   (forall (?unsigneducharPuallocutableu632_556 c_unsorted)
   (iff
   (valid_root_unsigned_charP
   (c_sort (pointer unsigned_charP) ?pu635_553) ?au634_554 ?bu633_555 
   (c_sort (alloc_table unsigned_charP) ?unsigneducharPuallocutableu632_556))
   (and
   (<= (offset_min
       (c_sort
       (alloc_table unsigned_charP) ?unsigneducharPuallocutableu632_556) 
       (c_sort (pointer unsigned_charP) ?pu635_553)) ?au634_554)
   (>= (offset_max
       (c_sort
       (alloc_table unsigned_charP) ?unsigneducharPuallocutableu632_556) 
       (c_sort (pointer unsigned_charP) ?pu635_553)) ?bu633_555)))))))

;;;; Why logic valid_root_voidP
:extrapreds ((valid_root_voidP c_sorted Int Int c_sorted))

;; Why axiom valid_root_voidP_def
 :assumption
   (forall (?pu639_557 c_unsorted)
   (forall (?au638_558 Int)
   (forall (?bu637_559 Int)
   (forall (?voidPuallocutableu636_560 c_unsorted)
   (iff
   (valid_root_voidP
   (c_sort (pointer voidP) ?pu639_557) ?au638_558 ?bu637_559 (c_sort
                                                             (alloc_table
                                                             voidP) ?voidPuallocutableu636_560))
   (and
   (<= (offset_min
       (c_sort (alloc_table voidP) ?voidPuallocutableu636_560) (c_sort
                                                               (pointer
                                                               voidP) ?pu639_557)) ?au638_558)
   (>= (offset_max
       (c_sort (alloc_table voidP) ?voidPuallocutableu636_560) (c_sort
                                                               (pointer
                                                               voidP) ?pu639_557)) ?bu637_559)))))))

;;;; Why logic valid_struct_charP
:extrapreds ((valid_struct_charP c_sorted Int Int c_sorted))

;; Why axiom valid_struct_charP_def
 :assumption
   (forall (?pu643_561 c_unsorted)
   (forall (?au642_562 Int)
   (forall (?bu641_563 Int)
   (forall (?charPuallocutableu640_564 c_unsorted)
   (iff
   (valid_struct_charP
   (c_sort (pointer charP) ?pu643_561) ?au642_562 ?bu641_563 (c_sort
                                                             (alloc_table
                                                             charP) ?charPuallocutableu640_564))
   (and
   (<= (offset_min
       (c_sort (alloc_table charP) ?charPuallocutableu640_564) (c_sort
                                                               (pointer
                                                               charP) ?pu643_561)) ?au642_562)
   (>= (offset_max
       (c_sort (alloc_table charP) ?charPuallocutableu640_564) (c_sort
                                                               (pointer
                                                               charP) ?pu643_561)) ?bu641_563)))))))

;;;; Why logic valid_struct_intP
:extrapreds ((valid_struct_intP c_sorted Int Int c_sorted))

;; Why axiom valid_struct_intP_def
 :assumption
   (forall (?pu647_565 c_unsorted)
   (forall (?au646_566 Int)
   (forall (?bu645_567 Int)
   (forall (?intPuallocutableu644_568 c_unsorted)
   (iff
   (valid_struct_intP
   (c_sort (pointer intP) ?pu647_565) ?au646_566 ?bu645_567 (c_sort
                                                            (alloc_table
                                                            intP) ?intPuallocutableu644_568))
   (and
   (<= (offset_min
       (c_sort (alloc_table intP) ?intPuallocutableu644_568) (c_sort
                                                             (pointer intP) ?pu647_565)) ?au646_566)
   (>= (offset_max
       (c_sort (alloc_table intP) ?intPuallocutableu644_568) (c_sort
                                                             (pointer intP) ?pu647_565)) ?bu645_567)))))))

;;;; Why logic valid_struct_unsigned_charP
:extrapreds ((valid_struct_unsigned_charP c_sorted Int Int c_sorted))

;; Why axiom valid_struct_unsigned_charP_def
 :assumption
   (forall (?pu651_569 c_unsorted)
   (forall (?au650_570 Int)
   (forall (?bu649_571 Int)
   (forall (?unsigneducharPuallocutableu648_572 c_unsorted)
   (iff
   (valid_struct_unsigned_charP
   (c_sort (pointer unsigned_charP) ?pu651_569) ?au650_570 ?bu649_571 
   (c_sort (alloc_table unsigned_charP) ?unsigneducharPuallocutableu648_572))
   (and
   (<= (offset_min
       (c_sort
       (alloc_table unsigned_charP) ?unsigneducharPuallocutableu648_572) 
       (c_sort (pointer unsigned_charP) ?pu651_569)) ?au650_570)
   (>= (offset_max
       (c_sort
       (alloc_table unsigned_charP) ?unsigneducharPuallocutableu648_572) 
       (c_sort (pointer unsigned_charP) ?pu651_569)) ?bu649_571)))))))

;;;; Why logic valid_struct_voidP
:extrapreds ((valid_struct_voidP c_sorted Int Int c_sorted))

;; Why axiom valid_struct_voidP_def
 :assumption
   (forall (?pu655_573 c_unsorted)
   (forall (?au654_574 Int)
   (forall (?bu653_575 Int)
   (forall (?voidPuallocutableu652_576 c_unsorted)
   (iff
   (valid_struct_voidP
   (c_sort (pointer voidP) ?pu655_573) ?au654_574 ?bu653_575 (c_sort
                                                             (alloc_table
                                                             voidP) ?voidPuallocutableu652_576))
   (and
   (<= (offset_min
       (c_sort (alloc_table voidP) ?voidPuallocutableu652_576) (c_sort
                                                               (pointer
                                                               voidP) ?pu655_573)) ?au654_574)
   (>= (offset_max
       (c_sort (alloc_table voidP) ?voidPuallocutableu652_576) (c_sort
                                                               (pointer
                                                               voidP) ?pu655_573)) ?bu653_575)))))))

;;;; Why logic voidP_tag
:extrafuns ((voidP_tag  c_unsorted))

;; Why axiom voidP_int
 :assumption (= (int_of_tag (c_sort (tag_id voidP) voidP_tag)) 1)

;; Why axiom voidP_of_pointer_address_of_pointer_addr
 :assumption
   (forall (?pu656_577 c_unsorted)
   (= (c_sort (pointer voidP) ?pu656_577)
   (c_sort
   (pointer voidP) (voidP_of_pointer_address
                   (c_sort
                   (pointer c_unit) (pointer_address
                                    (c_sort (pointer voidP) ?pu656_577)))))))

;; Why axiom voidP_parenttag_bottom
 :assumption
   (parenttag
   (c_sort (tag_id voidP) voidP_tag) (c_sort (tag_id voidP) bottom_tag))

;; Why axiom voidP_tags
 :assumption
   (forall (?xu658_578 c_unsorted)
   (forall (?voidPutagutableu657_579 c_unsorted)
   (instanceof
   (c_sort (tag_table voidP) ?voidPutagutableu657_579) (c_sort
                                                       (pointer voidP) ?xu658_578) 
   (c_sort (tag_id voidP) voidP_tag))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 21, characters 35-59
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u720_580 Int)
  (forall (?i1u2u719_581 Int)
  (implies
  (and (>= ?i2u1u720_580 0)
  (and (< ?i2u1u720_580 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u719_581 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u719_581 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u719_581))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u720_580)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u718_582 Int)
  (implies
  (and (> ?i1u1u718_582 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u718_582 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u718_582)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (<= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?k1u524_583 Int)
  (implies
  (and (<= 0 ?k1u524_583)
  (< ?k1u524_583 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?k1u524_583))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) 
                                                                   (+ ?k1u524_583 1)))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 33, characters 24-118
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?i2_1 Int)
  (forall (?i1_2 Int)
  (implies
  (and (>= ?i2_1 0)
  (and (< ?i2_1 (integer_of_int32 (c_sort int32 ?k_2)))
  (and (>= ?i1_2 (integer_of_int32 (c_sort int32 ?k_2)))
  (< ?i1_2 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1_2))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2_1)))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 32, characters 24-99
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_584 Int)
  (implies
  (and (> ?i1u1u750_584 (integer_of_int32 (c_sort int32 ?k_2)))
  (< ?i1u1u750_584 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u750_584)))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 31, characters 24-51
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?k1u524_585 Int)
  (implies
  (and (<= (integer_of_int32 (c_sort int32 ?k_2)) ?k1u524_585)
  (< ?k1u524_585 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?k1u524_585))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) 
                                                                   (+ ?k1u524_585 1)))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 30, characters 24-30
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (>= (integer_of_int32 (c_sort int32 ?k_2)) 0))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 30, characters 34-40
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (<= (integer_of_int32 (c_sort int32 ?k_2)) (integer_of_int32
                                             (c_sort int32 ?n_1))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 110, characters 6-4838
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?pu355_586 c_unsorted)
  (implies
  (and
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?pu355_586)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?pu355_586)) 0))
  (not
  (in_pset
  (c_sort (pointer intP) ?pu355_586) (c_sort
                                     (pset intP) (pset_range
                                                 (c_sort
                                                 (pset intP) (pset_singleton
                                                             (c_sort
                                                             (pointer intP) ?a_1))) 0 
                                                 (- (integer_of_int32
                                                    (c_sort int32 ?n_1)) 1))))))
  (= (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                       (pointer intP) ?pu355_586)))
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) ?pu355_586))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 43, characters 27-124
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_587 Int)
  (forall (?i1u2u751_588 Int)
  (implies
  (and (>= ?i2u1u752_587 0)
  (and (< ?i2u1u752_587 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_588 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_588 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_588))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_587)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_589 Int)
  (implies
  (and (> ?i1u1u750_589 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_589 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_589)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i1_0 Int)
  (forall (?i2_0 Int)
  (implies
  (and (>= ?i2_0 0)
  (and (< ?i2_0 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1_0 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1_0 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1_0))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2_0)))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 42, characters 27-54
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_590 Int)
  (forall (?i1u2u751_591 Int)
  (implies
  (and (>= ?i2u1u752_590 0)
  (and (< ?i2u1u752_590 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_591 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_591 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_591))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_590)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_592 Int)
  (implies
  (and (> ?i1u1u750_592 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_592 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_592)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?k1u524_593 Int)
  (implies
  (and (<= (integer_of_int32 (c_sort int32 ?k_2_0)) ?k1u524_593)
  (< ?k1u524_593 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?k1u524_593))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (+ ?k1u524_593 1)))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 41, characters 27-84
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_594 Int)
  (forall (?i1u2u751_595 Int)
  (implies
  (and (>= ?i2u1u752_594 0)
  (and (< ?i2u1u752_594 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_595 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_595 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_595))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_594)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_596 Int)
  (implies
  (and (> ?i1u1u750_596 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_596 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_596)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?j_1 Int)
  (implies (and (>= ?j_1 0) (< ?j_1 (integer_of_int32 (c_sort int32 ?i_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?j_1))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 28-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_597 Int)
  (forall (?i1u2u751_598 Int)
  (implies
  (and (>= ?i2u1u752_597 0)
  (and (< ?i2u1u752_597 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_598 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_598 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_598))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_597)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_599 Int)
  (implies
  (and (> ?i1u1u750_599 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_599 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_599)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (>= (integer_of_int32 (c_sort int32 ?i_0)) 0)))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 40-45
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_600 Int)
  (forall (?i1u2u751_601 Int)
  (implies
  (and (>= ?i2u1u752_600 0)
  (and (< ?i2u1u752_600 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_601 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_601 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_601))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_600)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_602 Int)
  (implies
  (and (> ?i1u1u750_602 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_602 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_602)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (< (integer_of_int32 (c_sort int32 ?i_0)) (integer_of_int32
                                            (c_sort int32 ?k_2_0)))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 51-57
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_603 Int)
  (forall (?i1u2u751_604 Int)
  (implies
  (and (>= ?i2u1u752_603 0)
  (and (< ?i2u1u752_603 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_604 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_604 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_604))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_603)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_605 Int)
  (implies
  (and (> ?i1u1u750_605 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_605 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_605)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (<= (integer_of_int32 (c_sort int32 ?i_0)) (integer_of_int32
                                             (c_sort int32 ?n_1)))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 51, characters 50-56
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_606 Int)
  (forall (?i1u2u751_607 Int)
  (implies
  (and (>= ?i2u1u752_606 0)
  (and (< ?i2u1u752_606 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_607 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_607 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_607))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_606)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_608 Int)
  (implies
  (and (> ?i1u1u750_608 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_608 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_608)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_609 Int)
  (forall (?i2u0u748_610 Int)
  (implies
  (and (>= ?i2u0u748_610 0)
  (and (< ?i2u0u748_610 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_609 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_609 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_609))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_610)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_611 Int)
  (implies
  (and (>= ?ju1u747_611 0)
  (< ?ju1u747_611 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_611))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (>= (integer_of_int32 (c_sort int32 ?n_1)) 0))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 52, characters 50-70
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_612 Int)
  (forall (?i1u2u751_613 Int)
  (implies
  (and (>= ?i2u1u752_612 0)
  (and (< ?i2u1u752_612 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_613 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_613 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_613))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_612)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_614 Int)
  (implies
  (and (> ?i1u1u750_614 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_614 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_614)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_615 Int)
  (forall (?i2u0u748_616 Int)
  (implies
  (and (>= ?i2u0u748_616 0)
  (and (< ?i2u0u748_616 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_615 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_615 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_615))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_616)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_617 Int)
  (implies
  (and (>= ?ju1u747_617 0)
  (< ?ju1u747_617 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_617))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 52, characters 50-70
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_618 Int)
  (forall (?i1u2u751_619 Int)
  (implies
  (and (>= ?i2u1u752_618 0)
  (and (< ?i2u1u752_618 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_619 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_619 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_619))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_618)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_620 Int)
  (implies
  (and (> ?i1u1u750_620 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_620 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_620)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_621 Int)
  (forall (?i2u0u748_622 Int)
  (implies
  (and (>= ?i2u0u748_622 0)
  (and (< ?i2u0u748_622 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_621 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_621 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_621))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_622)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_623 Int)
  (implies
  (and (>= ?ju1u747_623 0)
  (< ?ju1u747_623 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_623))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 53, characters 49-80
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_624 Int)
  (forall (?i1u2u751_625 Int)
  (implies
  (and (>= ?i2u1u752_624 0)
  (and (< ?i2u1u752_624 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_625 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_625 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_625))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_624)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_626 Int)
  (implies
  (and (> ?i1u1u750_626 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_626 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_626)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_627 Int)
  (forall (?i2u0u748_628 Int)
  (implies
  (and (>= ?i2u0u748_628 0)
  (and (< ?i2u0u748_628 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_627 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_627 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_627))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_628)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_629 Int)
  (implies
  (and (>= ?ju1u747_629 0)
  (< ?ju1u747_629 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_629))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 53, characters 49-80
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_630 Int)
  (forall (?i1u2u751_631 Int)
  (implies
  (and (>= ?i2u1u752_630 0)
  (and (< ?i2u1u752_630 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_631 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_631 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_631))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_630)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_632 Int)
  (implies
  (and (> ?i1u1u750_632 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_632 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_632)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_633 Int)
  (forall (?i2u0u748_634 Int)
  (implies
  (and (>= ?i2u0u748_634 0)
  (and (< ?i2u0u748_634 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_633 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_633 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_633))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_634)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_635 Int)
  (implies
  (and (>= ?ju1u747_635 0)
  (< ?ju1u747_635 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_635))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 54, characters 50-71
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_636 Int)
  (forall (?i1u2u751_637 Int)
  (implies
  (and (>= ?i2u1u752_636 0)
  (and (< ?i2u1u752_636 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_637 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_637 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_637))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_636)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_638 Int)
  (implies
  (and (> ?i1u1u750_638 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_638 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_638)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_639 Int)
  (forall (?i2u0u748_640 Int)
  (implies
  (and (>= ?i2u0u748_640 0)
  (and (< ?i2u0u748_640 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_639 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_639 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_639))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_640)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_641 Int)
  (implies
  (and (>= ?ju1u747_641 0)
  (< ?ju1u747_641 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_641))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 54, characters 50-71
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_642 Int)
  (forall (?i1u2u751_643 Int)
  (implies
  (and (>= ?i2u1u752_642 0)
  (and (< ?i2u1u752_642 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_643 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_643 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_643))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_642)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_644 Int)
  (implies
  (and (> ?i1u1u750_644 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_644 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_644)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_645 Int)
  (forall (?i2u0u748_646 Int)
  (implies
  (and (>= ?i2u0u748_646 0)
  (and (< ?i2u0u748_646 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_645 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_645 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_645))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_646)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_647 Int)
  (implies
  (and (>= ?ju1u747_647 0)
  (< ?ju1u747_647 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_647))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 43, characters 27-124
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_648 Int)
  (forall (?i1u2u751_649 Int)
  (implies
  (and (>= ?i2u1u752_648 0)
  (and (< ?i2u1u752_648 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_649 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_649 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_649))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_648)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_650 Int)
  (implies
  (and (> ?i1u1u750_650 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_650 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_650)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_651 Int)
  (forall (?i2u0u748_652 Int)
  (implies
  (and (>= ?i2u0u748_652 0)
  (and (< ?i2u0u748_652 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_651 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_651 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_651))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_652)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_653 Int)
  (implies
  (and (>= ?ju1u747_653 0)
  (< ?ju1u747_653 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_653))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_654 Int)
  (implies (dom ?i1u701_654 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_655 Int) (and
                            (dom
                            ?i2u700_655 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_654)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_655))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_656 Int)
  (implies
  (and (<= 0 ?ku1u699_656)
  (and (< ?ku1u699_656 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_656 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_656 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_656)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_656))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (forall (?i1_0 Int)
  (forall (?i2_0 Int)
  (implies
  (and (>= ?i2_0 0)
  (and (< ?i2_0 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1_0 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1_0 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1_0))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2_0))))))))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 42, characters 27-54
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_657 Int)
  (forall (?i1u2u751_658 Int)
  (implies
  (and (>= ?i2u1u752_657 0)
  (and (< ?i2u1u752_657 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_658 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_658 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_658))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_657)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_659 Int)
  (implies
  (and (> ?i1u1u750_659 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_659 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_659)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_660 Int)
  (forall (?i2u0u748_661 Int)
  (implies
  (and (>= ?i2u0u748_661 0)
  (and (< ?i2u0u748_661 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_660 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_660 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_660))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_661)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_662 Int)
  (implies
  (and (>= ?ju1u747_662 0)
  (< ?ju1u747_662 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_662))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_663 Int)
  (implies (dom ?i1u701_663 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_664 Int) (and
                            (dom
                            ?i2u700_664 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_663)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_664))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_665 Int)
  (implies
  (and (<= 0 ?ku1u699_665)
  (and (< ?ku1u699_665 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_665 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_665 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_665)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_665))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (forall (?k1u524_666 Int)
  (implies
  (and (<= (integer_of_int32 (c_sort int32 ?k_2_0)) ?k1u524_666)
  (< ?k1u524_666 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?k1u524_666))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (+ ?k1u524_666 1))))))))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 41, characters 27-84
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_667 Int)
  (forall (?i1u2u751_668 Int)
  (implies
  (and (>= ?i2u1u752_667 0)
  (and (< ?i2u1u752_667 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_668 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_668 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_668))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_667)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_669 Int)
  (implies
  (and (> ?i1u1u750_669 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_669 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_669)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_670 Int)
  (forall (?i2u0u748_671 Int)
  (implies
  (and (>= ?i2u0u748_671 0)
  (and (< ?i2u0u748_671 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_670 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_670 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_670))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_671)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_672 Int)
  (implies
  (and (>= ?ju1u747_672 0)
  (< ?ju1u747_672 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_672))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_673 Int)
  (implies (dom ?i1u701_673 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_674 Int) (and
                            (dom
                            ?i2u700_674 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_673)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_674))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_675 Int)
  (implies
  (and (<= 0 ?ku1u699_675)
  (and (< ?ku1u699_675 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_675 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_675 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_675)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_675))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (forall (?j_1 Int)
  (implies
  (and (>= ?j_1 0) (< ?j_1 (integer_of_int32 (c_sort int32 ?i_0_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?j_1))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_1)))))))))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 28-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_676 Int)
  (forall (?i1u2u751_677 Int)
  (implies
  (and (>= ?i2u1u752_676 0)
  (and (< ?i2u1u752_676 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_677 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_677 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_677))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_676)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_678 Int)
  (implies
  (and (> ?i1u1u750_678 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_678 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_678)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_679 Int)
  (forall (?i2u0u748_680 Int)
  (implies
  (and (>= ?i2u0u748_680 0)
  (and (< ?i2u0u748_680 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_679 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_679 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_679))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_680)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_681 Int)
  (implies
  (and (>= ?ju1u747_681 0)
  (< ?ju1u747_681 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_681))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_682 Int)
  (implies (dom ?i1u701_682 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_683 Int) (and
                            (dom
                            ?i2u700_683 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_682)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_683))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_684 Int)
  (implies
  (and (<= 0 ?ku1u699_684)
  (and (< ?ku1u699_684 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_684 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_684 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_684)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_684))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (>= (integer_of_int32 (c_sort int32 ?i_0_1)) 0))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 40-45
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_685 Int)
  (forall (?i1u2u751_686 Int)
  (implies
  (and (>= ?i2u1u752_685 0)
  (and (< ?i2u1u752_685 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_686 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_686 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_686))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_685)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_687 Int)
  (implies
  (and (> ?i1u1u750_687 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_687 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_687)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_688 Int)
  (forall (?i2u0u748_689 Int)
  (implies
  (and (>= ?i2u0u748_689 0)
  (and (< ?i2u0u748_689 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_688 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_688 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_688))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_689)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_690 Int)
  (implies
  (and (>= ?ju1u747_690 0)
  (< ?ju1u747_690 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_690))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_691 Int)
  (implies (dom ?i1u701_691 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_692 Int) (and
                            (dom
                            ?i2u700_692 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_691)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_692))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_693 Int)
  (implies
  (and (<= 0 ?ku1u699_693)
  (and (< ?ku1u699_693 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_693 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_693 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_693)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_693))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (< (integer_of_int32 (c_sort int32 ?i_0_1)) (integer_of_int32
                                              (c_sort int32 ?k_2_0))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 51-57
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_694 Int)
  (forall (?i1u2u751_695 Int)
  (implies
  (and (>= ?i2u1u752_694 0)
  (and (< ?i2u1u752_694 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_695 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_695 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_695))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_694)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_696 Int)
  (implies
  (and (> ?i1u1u750_696 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_696 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_696)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_697 Int)
  (forall (?i2u0u748_698 Int)
  (implies
  (and (>= ?i2u0u748_698 0)
  (and (< ?i2u0u748_698 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_697 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_697 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_697))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_698)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_699 Int)
  (implies
  (and (>= ?ju1u747_699 0)
  (< ?ju1u747_699 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_699))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_700 Int)
  (implies (dom ?i1u701_700 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_701 Int) (and
                            (dom
                            ?i2u700_701 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_700)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_701))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_702 Int)
  (implies
  (and (<= 0 ?ku1u699_702)
  (and (< ?ku1u699_702 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_702 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_702 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_702)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_702))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (<= (integer_of_int32 (c_sort int32 ?i_0_1)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 134, characters 15-3726
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_703 Int)
  (forall (?i1u2u751_704 Int)
  (implies
  (and (>= ?i2u1u752_703 0)
  (and (< ?i2u1u752_703 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_704 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_704 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_704))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_703)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_705 Int)
  (implies
  (and (> ?i1u1u750_705 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_705 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_705)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_706 Int)
  (forall (?i2u0u748_707 Int)
  (implies
  (and (>= ?i2u0u748_707 0)
  (and (< ?i2u0u748_707 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_706 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_706 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_706))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_707)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_708 Int)
  (implies
  (and (>= ?ju1u747_708 0)
  (< ?ju1u747_708 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_708))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?intP_intM_a_4_2 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u701_709 Int)
  (implies (dom ?i1u701_709 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u700_710 Int) (and
                            (dom
                            ?i2u700_710 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_1) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u701_709)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_2) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u700_710))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_2) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1))
  (forall (?ku1u699_711 Int)
  (implies
  (and (<= 0 ?ku1u699_711)
  (and (< ?ku1u699_711 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u699_711 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u699_711 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u699_711)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u699_711))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (forall (?pu355_712 c_unsorted)
  (implies
  (and
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?pu355_712)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?pu355_712)) 0))
  (not
  (in_pset
  (c_sort (pointer intP) ?pu355_712) (c_sort
                                     (pset intP) (pset_range
                                                 (c_sort
                                                 (pset intP) (pset_singleton
                                                             (c_sort
                                                             (pointer intP) ?a_1))) 0 
                                                 (- (integer_of_int32
                                                    (c_sort int32 ?n_1)) 1))))))
  (= (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_2) (c_sort
                                                         (pointer intP) ?pu355_712)))
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) ?pu355_712)))))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 43, characters 27-124
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_713 Int)
  (forall (?i1u2u751_714 Int)
  (implies
  (and (>= ?i2u1u752_713 0)
  (and (< ?i2u1u752_713 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_714 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_714 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_714))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_713)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_715 Int)
  (implies
  (and (> ?i1u1u750_715 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_715 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_715)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_716 Int)
  (forall (?i2u0u748_717 Int)
  (implies
  (and (>= ?i2u0u748_717 0)
  (and (< ?i2u0u748_717 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_716 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_716 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_716))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_717)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_718 Int)
  (implies
  (and (>= ?ju1u747_718 0)
  (< ?ju1u747_718 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_718))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (forall (?i1_0 Int)
  (forall (?i2_0 Int)
  (implies
  (and (>= ?i2_0 0)
  (and (< ?i2_0 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1_0 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1_0 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1_0))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2_0))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 42, characters 27-54
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_719 Int)
  (forall (?i1u2u751_720 Int)
  (implies
  (and (>= ?i2u1u752_719 0)
  (and (< ?i2u1u752_719 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_720 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_720 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_720))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_719)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_721 Int)
  (implies
  (and (> ?i1u1u750_721 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_721 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_721)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_722 Int)
  (forall (?i2u0u748_723 Int)
  (implies
  (and (>= ?i2u0u748_723 0)
  (and (< ?i2u0u748_723 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_722 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_722 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_722))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_723)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_724 Int)
  (implies
  (and (>= ?ju1u747_724 0)
  (< ?ju1u747_724 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_724))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (forall (?k1u524_725 Int)
  (implies
  (and (<= (integer_of_int32 (c_sort int32 ?k_2_0)) ?k1u524_725)
  (< ?k1u524_725 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?k1u524_725))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (+ ?k1u524_725 1))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 41, characters 27-84
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_726 Int)
  (forall (?i1u2u751_727 Int)
  (implies
  (and (>= ?i2u1u752_726 0)
  (and (< ?i2u1u752_726 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_727 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_727 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_727))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_726)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_728 Int)
  (implies
  (and (> ?i1u1u750_728 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_728 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_728)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_729 Int)
  (forall (?i2u0u748_730 Int)
  (implies
  (and (>= ?i2u0u748_730 0)
  (and (< ?i2u0u748_730 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_729 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_729 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_729))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_730)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_731 Int)
  (implies
  (and (>= ?ju1u747_731 0)
  (< ?ju1u747_731 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_731))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (forall (?j_1 Int)
  (implies
  (and (>= ?j_1 0) (< ?j_1 (integer_of_int32 (c_sort int32 ?i_0_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?j_1))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_1)))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 28-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_732 Int)
  (forall (?i1u2u751_733 Int)
  (implies
  (and (>= ?i2u1u752_732 0)
  (and (< ?i2u1u752_732 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_733 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_733 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_733))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_732)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_734 Int)
  (implies
  (and (> ?i1u1u750_734 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_734 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_734)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_735 Int)
  (forall (?i2u0u748_736 Int)
  (implies
  (and (>= ?i2u0u748_736 0)
  (and (< ?i2u0u748_736 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_735 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_735 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_735))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_736)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_737 Int)
  (implies
  (and (>= ?ju1u747_737 0)
  (< ?ju1u747_737 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_737))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (>= (integer_of_int32 (c_sort int32 ?i_0_1)) 0))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 40-45
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_738 Int)
  (forall (?i1u2u751_739 Int)
  (implies
  (and (>= ?i2u1u752_738 0)
  (and (< ?i2u1u752_738 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_739 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_739 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_739))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_738)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_740 Int)
  (implies
  (and (> ?i1u1u750_740 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_740 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_740)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_741 Int)
  (forall (?i2u0u748_742 Int)
  (implies
  (and (>= ?i2u0u748_742 0)
  (and (< ?i2u0u748_742 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_741 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_741 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_741))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_742)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_743 Int)
  (implies
  (and (>= ?ju1u747_743 0)
  (< ?ju1u747_743 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_743))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (< (integer_of_int32 (c_sort int32 ?i_0_1)) (integer_of_int32
                                              (c_sort int32 ?k_2_0))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 40, characters 51-57
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_744 Int)
  (forall (?i1u2u751_745 Int)
  (implies
  (and (>= ?i2u1u752_744 0)
  (and (< ?i2u1u752_744 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_745 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_745 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_745))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_744)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_746 Int)
  (implies
  (and (> ?i1u1u750_746 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_746 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_746)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_747 Int)
  (forall (?i2u0u748_748 Int)
  (implies
  (and (>= ?i2u0u748_748 0)
  (and (< ?i2u0u748_748 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_747 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_747 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_747))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_748)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_749 Int)
  (implies
  (and (>= ?ju1u747_749 0)
  (< ?ju1u747_749 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_749))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (<= (integer_of_int32 (c_sort int32 ?i_0_1)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 33, characters 24-118
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_750 Int)
  (forall (?i1u2u751_751 Int)
  (implies
  (and (>= ?i2u1u752_750 0)
  (and (< ?i2u1u752_750 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_751 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_751 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_751))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_750)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_752 Int)
  (implies
  (and (> ?i1u1u750_752 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_752 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_752)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_753 Int)
  (forall (?i2u0u748_754 Int)
  (implies
  (and (>= ?i2u0u748_754 0)
  (and (< ?i2u0u748_754 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_753 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_753 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_753))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_754)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_755 Int)
  (implies
  (and (>= ?ju1u747_755 0)
  (< ?ju1u747_755 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_755))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (forall (?i2_1 Int)
  (forall (?i1_2 Int)
  (implies
  (and (>= ?i2_1 0)
  (and (< ?i2_1 (integer_of_int32 (c_sort int32 ?k_2_1)))
  (and (>= ?i1_2 (integer_of_int32 (c_sort int32 ?k_2_1)))
  (< ?i1_2 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1_2))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2_1)))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 32, characters 24-99
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_756 Int)
  (forall (?i1u2u751_757 Int)
  (implies
  (and (>= ?i2u1u752_756 0)
  (and (< ?i2u1u752_756 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_757 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_757 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_757))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_756)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_758 Int)
  (implies
  (and (> ?i1u1u750_758 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_758 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_758)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_759 Int)
  (forall (?i2u0u748_760 Int)
  (implies
  (and (>= ?i2u0u748_760 0)
  (and (< ?i2u0u748_760 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_759 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_759 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_759))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_760)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_761 Int)
  (implies
  (and (>= ?ju1u747_761 0)
  (< ?ju1u747_761 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_761))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_1))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_762 Int)
  (implies
  (and (> ?i1u1u750_762 (integer_of_int32 (c_sort int32 ?k_2_1)))
  (< ?i1u1u750_762 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_1))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_762)))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 31, characters 24-51
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_763 Int)
  (forall (?i1u2u751_764 Int)
  (implies
  (and (>= ?i2u1u752_763 0)
  (and (< ?i2u1u752_763 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_764 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_764 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_764))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_763)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_765 Int)
  (implies
  (and (> ?i1u1u750_765 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_765 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_765)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_766 Int)
  (forall (?i2u0u748_767 Int)
  (implies
  (and (>= ?i2u0u748_767 0)
  (and (< ?i2u0u748_767 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_766 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_766 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_766))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_767)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_768 Int)
  (implies
  (and (>= ?ju1u747_768 0)
  (< ?ju1u747_768 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_768))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (forall (?k1u524_769 Int)
  (implies
  (and (<= (integer_of_int32 (c_sort int32 ?k_2_1)) ?k1u524_769)
  (< ?k1u524_769 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?k1u524_769))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (+ ?k1u524_769 1)))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 30, characters 24-30
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_770 Int)
  (forall (?i1u2u751_771 Int)
  (implies
  (and (>= ?i2u1u752_770 0)
  (and (< ?i2u1u752_770 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_771 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_771 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_771))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_770)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_772 Int)
  (implies
  (and (> ?i1u1u750_772 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_772 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_772)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_773 Int)
  (forall (?i2u0u748_774 Int)
  (implies
  (and (>= ?i2u0u748_774 0)
  (and (< ?i2u0u748_774 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_773 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_773 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_773))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_774)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_775 Int)
  (implies
  (and (>= ?ju1u747_775 0)
  (< ?ju1u747_775 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_775))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (>= (integer_of_int32 (c_sort int32 ?k_2_1)) 0)))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 30, characters 34-40
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (forall (?intP_intM_a_4 c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4_0 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies
  (and
  (and
  (forall (?i2u1u752_776 Int)
  (forall (?i1u2u751_777 Int)
  (implies
  (and (>= ?i2u1u752_776 0)
  (and (< ?i2u1u752_776 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u751_777 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u751_777 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u2u751_777))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u1u752_776)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u750_778 Int)
  (implies
  (and (> ?i1u1u750_778 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u750_778 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i1u1u750_778)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u0u749_779 Int)
  (forall (?i2u0u748_780 Int)
  (implies
  (and (>= ?i2u0u748_780 0)
  (and (< ?i2u0u748_780 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u749_779 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u749_779 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u749_779))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u748_780)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_1))
  (and
  (forall (?ju1u747_781 Int)
  (implies
  (and (>= ?ju1u747_781 0)
  (< ?ju1u747_781 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u747_781))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 0 
                                                            (- (integer_of_int32
                                                               (c_sort
                                                               int32 ?n_1)) 1)))))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (<= (integer_of_int32 (c_sort int32 ?k_2_1)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 46, characters 21-26
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_782 Int)
  (forall (?i1u2u778_783 Int)
  (implies
  (and (>= ?i2u1u779_782 0)
  (and (< ?i2u1u779_782 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_783 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_783 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_783))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_782)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_784 Int)
  (implies
  (and (> ?i1u1u777_784 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_784 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_784)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_785 Int)
  (forall (?i2u0u781_786 Int)
  (implies
  (and (>= ?i2u0u781_786 0)
  (and (< ?i2u0u781_786 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_785 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_785 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_785))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_786)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_787 Int)
  (implies
  (and (>= ?ju1u780_787 0)
  (< ?ju1u780_787 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_787))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 46, characters 21-26
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_788 Int)
  (forall (?i1u2u778_789 Int)
  (implies
  (and (>= ?i2u1u779_788 0)
  (and (< ?i2u1u779_788 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_789 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_789 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_789))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_788)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_790 Int)
  (implies
  (and (> ?i1u1u777_790 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_790 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_790)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_791 Int)
  (forall (?i2u0u781_792 Int)
  (implies
  (and (>= ?i2u0u781_792 0)
  (and (< ?i2u0u781_792 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_791 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_791 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_791))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_792)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_793 Int)
  (implies
  (and (>= ?ju1u780_793 0)
  (< ?ju1u780_793 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_793))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647)))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 48, characters 18-26
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_794 Int)
  (forall (?i1u2u778_795 Int)
  (implies
  (and (>= ?i2u1u779_794 0)
  (and (< ?i2u1u779_794 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_795 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_795 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_795))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_794)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_796 Int)
  (implies
  (and (> ?i1u1u777_796 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_796 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_796)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_797 Int)
  (forall (?i2u0u781_798 Int)
  (implies
  (and (>= ?i2u0u781_798 0)
  (and (< ?i2u0u781_798 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_797 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_797 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_797))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_798)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_799 Int)
  (implies
  (and (>= ?ju1u780_799 0)
  (< ?ju1u780_799 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_799))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 48, characters 18-26
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_800 Int)
  (forall (?i1u2u778_801 Int)
  (implies
  (and (>= ?i2u1u779_800 0)
  (and (< ?i2u1u779_800 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_801 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_801 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_801))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_800)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_802 Int)
  (implies
  (and (> ?i1u1u777_802 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_802 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_802)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_803 Int)
  (forall (?i2u0u781_804 Int)
  (implies
  (and (>= ?i2u0u781_804 0)
  (and (< ?i2u0u781_804 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_803 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_803 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_803))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_804)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_805 Int)
  (implies
  (and (>= ?ju1u780_805 0)
  (< ?ju1u780_805 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_805))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1)))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 48, characters 29-41
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_806 Int)
  (forall (?i1u2u778_807 Int)
  (implies
  (and (>= ?i2u1u779_806 0)
  (and (< ?i2u1u779_806 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_807 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_807 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_807))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_806)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_808 Int)
  (implies
  (and (> ?i1u1u777_808 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_808 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_808)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_809 Int)
  (forall (?i2u0u781_810 Int)
  (implies
  (and (>= ?i2u0u781_810 0)
  (and (< ?i2u0u781_810 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_809 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_809 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_809))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_810)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_811 Int)
  (implies
  (and (>= ?ju1u780_811 0)
  (< ?ju1u780_811 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_811))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 48, characters 29-41
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_812 Int)
  (forall (?i1u2u778_813 Int)
  (implies
  (and (>= ?i2u1u779_812 0)
  (and (< ?i2u1u779_812 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_813 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_813 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_813))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_812)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_814 Int)
  (implies
  (and (> ?i1u1u777_814 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_814 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_814)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_815 Int)
  (forall (?i2u0u781_816 Int)
  (implies
  (and (>= ?i2u0u781_816 0)
  (and (< ?i2u0u781_816 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_815 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_815 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_815))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_816)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_817 Int)
  (implies
  (and (>= ?ju1u780_817 0)
  (< ?ju1u780_817 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_817))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 56, characters 32-37
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_818 Int)
  (forall (?i1u2u778_819 Int)
  (implies
  (and (>= ?i2u1u779_818 0)
  (and (< ?i2u1u779_818 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_819 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_819 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_819))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_818)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_820 Int)
  (implies
  (and (> ?i1u1u777_820 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_820 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_820)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_821 Int)
  (forall (?i2u0u781_822 Int)
  (implies
  (and (>= ?i2u0u781_822 0)
  (and (< ?i2u0u781_822 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_821 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_821 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_821))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_822)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_823 Int)
  (implies
  (and (>= ?ju1u780_823 0)
  (< ?ju1u780_823 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_823))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1)))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 56, characters 32-37
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_824 Int)
  (forall (?i1u2u778_825 Int)
  (implies
  (and (>= ?i2u1u779_824 0)
  (and (< ?i2u1u779_824 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_825 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_825 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_825))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_824)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_826 Int)
  (implies
  (and (> ?i1u1u777_826 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_826 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_826)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_827 Int)
  (forall (?i2u0u781_828 Int)
  (implies
  (and (>= ?i2u0u781_828 0)
  (and (< ?i2u0u781_828 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_827 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_827 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_827))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_828)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_829 Int)
  (implies
  (and (>= ?ju1u780_829 0)
  (< ?ju1u780_829 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_829))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 196, characters 35-134
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_830 Int)
  (forall (?i1u2u778_831 Int)
  (implies
  (and (>= ?i2u1u779_830 0)
  (and (< ?i2u1u779_830 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_831 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_831 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_831))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_830)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_832 Int)
  (implies
  (and (> ?i1u1u777_832 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_832 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_832)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_833 Int)
  (forall (?i2u0u781_834 Int)
  (implies
  (and (>= ?i2u0u781_834 0)
  (and (< ?i2u0u781_834 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_833 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_833 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_833))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_834)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_835 Int)
  (implies
  (and (>= ?ju1u780_835 0)
  (< ?ju1u780_835 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_835))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 196, characters 35-134
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_836 Int)
  (forall (?i1u2u778_837 Int)
  (implies
  (and (>= ?i2u1u779_836 0)
  (and (< ?i2u1u779_836 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_837 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_837 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_837))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_836)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_838 Int)
  (implies
  (and (> ?i1u1u777_838 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_838 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_838)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_839 Int)
  (forall (?i2u0u781_840 Int)
  (implies
  (and (>= ?i2u0u781_840 0)
  (and (< ?i2u0u781_840 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_839 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_839 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_839))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_840)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_841 Int)
  (implies
  (and (>= ?ju1u780_841 0)
  (< ?ju1u780_841 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_841))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (and (>= (integer_of_int32 (c_sort int32 ?result3)) 0)
  (<= (integer_of_int32 (c_sort int32 ?result3)) (- (integer_of_int32
                                                    (c_sort int32 ?n_1)) 1)))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 196, characters 35-134
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_842 Int)
  (forall (?i1u2u778_843 Int)
  (implies
  (and (>= ?i2u1u779_842 0)
  (and (< ?i2u1u779_842 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_843 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_843 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_843))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_842)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_844 Int)
  (implies
  (and (> ?i1u1u777_844 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_844 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_844)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_845 Int)
  (forall (?i2u0u781_846 Int)
  (implies
  (and (>= ?i2u0u781_846 0)
  (and (< ?i2u0u781_846 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_845 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_845 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_845))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_846)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_847 Int)
  (implies
  (and (>= ?ju1u780_847 0)
  (< ?ju1u780_847 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_847))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 196, characters 35-134
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_848 Int)
  (forall (?i1u2u778_849 Int)
  (implies
  (and (>= ?i2u1u779_848 0)
  (and (< ?i2u1u779_848 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_849 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_849 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_849))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_848)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_850 Int)
  (implies
  (and (> ?i1u1u777_850 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_850 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_850)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_851 Int)
  (forall (?i2u0u781_852 Int)
  (implies
  (and (>= ?i2u0u781_852 0)
  (and (< ?i2u0u781_852 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_851 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_851 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_851))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_852)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_853 Int)
  (implies
  (and (>= ?ju1u780_853 0)
  (< ?ju1u780_853 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_853))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?result3)))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/wholeprogram.jessie/wholeprogram.jc", line 196, characters 35-134
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_854 Int)
  (forall (?i1u2u778_855 Int)
  (implies
  (and (>= ?i2u1u779_854 0)
  (and (< ?i2u1u779_854 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_855 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_855 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_855))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_854)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_856 Int)
  (implies
  (and (> ?i1u1u777_856 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_856 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_856)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_857 Int)
  (forall (?i2u0u781_858 Int)
  (implies
  (and (>= ?i2u0u781_858 0)
  (and (< ?i2u0u781_858 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_857 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_857 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_857))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_858)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_859 Int)
  (implies
  (and (>= ?ju1u780_859 0)
  (< ?ju1u780_859 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_859))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?result3)))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 44, characters 25-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_860 Int)
  (forall (?i1u2u778_861 Int)
  (implies
  (and (>= ?i2u1u779_860 0)
  (and (< ?i2u1u779_860 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_861 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_861 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_861))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_860)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_862 Int)
  (implies
  (and (> ?i1u1u777_862 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_862 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_862)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_863 Int)
  (forall (?i2u0u781_864 Int)
  (implies
  (and (>= ?i2u0u781_864 0)
  (and (< ?i2u0u781_864 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_863 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_863 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_863))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_864)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_865 Int)
  (implies
  (and (>= ?ju1u780_865 0)
  (< ?ju1u780_865 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_865))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                           (c_sort int32 ?n_1)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?result3)) (integer_of_int32
                                             (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?result3)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?result3)))))))))))
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u710_866 Int)
  (implies (dom ?i1u710_866 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u709_867 Int) (and
                            (dom
                            ?i2u709_867 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_0) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u710_866)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_1) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u709_867))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0))
  (forall (?ku1u708_868 Int)
  (implies
  (and (<= 0 ?ku1u708_868)
  (and (< ?ku1u708_868 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u708_868 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u708_868 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u708_868)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u708_868))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_0) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (<= 0 (- (- (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                                       (c_sort int32 ?i_0_0))) 1))))))))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 44, characters 25-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_869 Int)
  (forall (?i1u2u778_870 Int)
  (implies
  (and (>= ?i2u1u779_869 0)
  (and (< ?i2u1u779_869 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_870 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_870 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_870))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_869)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_871 Int)
  (implies
  (and (> ?i1u1u777_871 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_871 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_871)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_872 Int)
  (forall (?i2u0u781_873 Int)
  (implies
  (and (>= ?i2u0u781_873 0)
  (and (< ?i2u0u781_873 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_872 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_872 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_872))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_873)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_874 Int)
  (implies
  (and (>= ?ju1u780_874 0)
  (< ?ju1u780_874 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_874))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (> (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                (c_sort int32 ?result2)))
  (implies (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (- (integer_of_int32
                                                  (c_sort int32 ?n_1)) 1)))
  (implies
  (and (>= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 0)
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) (- (integer_of_int32
                                                        (c_sort int32 ?n_1)) 1)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_1)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                           (c_sort int32 ?n_1)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?result3)) (integer_of_int32
                                             (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?result3)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?result3)))))))))))
  (forall (?intP_intM_a_4_1 c_unsorted)
  (implies
  (and
  (and
  (forall (?i1u710_875 Int)
  (implies (dom ?i1u710_875 (integer_of_int32 (c_sort int32 ?n_1)))
  (exists (?i2u709_876 Int) (and
                            (dom
                            ?i2u709_876 (integer_of_int32
                                        (c_sort int32 ?n_1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_4_0) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_1) ?i1u710_875)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_4_1) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_1) ?i2u709_876))))))))))
  (and
  (swapped
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?i_0_0)) 
  (integer_of_int32 (c_sort int32 ?result3)) (c_sort
                                             (memory intP int32) ?intP_intM_a_4_1) 
  (c_sort (memory intP int32) ?intP_intM_a_4_0))
  (forall (?ku1u708_877 Int)
  (implies
  (and (<= 0 ?ku1u708_877)
  (and (< ?ku1u708_877 (integer_of_int32 (c_sort int32 ?n_1)))
  (and (not (= ?ku1u708_877 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (not (= ?ku1u708_877 (integer_of_int32 (c_sort int32 ?result3)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_1) ?ku1u708_877)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?ku1u708_877))))))))))
  (not_assigns
  (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                    (memory intP int32) ?intP_intM_a_4_0) 
  (c_sort (memory intP int32) ?intP_intM_a_4_1) (c_sort
                                                (pset intP) (pset_union
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?result3)))) 
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_range
                                                            (c_sort
                                                            (pset intP) 
                                                            (pset_singleton
                                                            (c_sort
                                                            (pointer intP) ?a_1))) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0)) 
                                                            (integer_of_int32
                                                            (c_sort
                                                            int32 ?i_0_0))))))))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result4 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result4))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result4))
  (< (- (- (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                                    (c_sort int32 ?i_0_1))) 1) 
  (- (- (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                                 (c_sort int32 ?i_0_0))) 1))))))))))))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 59, characters 17-22
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_878 Int)
  (forall (?i1u2u778_879 Int)
  (implies
  (and (>= ?i2u1u779_878 0)
  (and (< ?i2u1u779_878 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_879 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_879 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_879))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_878)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_880 Int)
  (implies
  (and (> ?i1u1u777_880 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_880 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_880)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_881 Int)
  (forall (?i2u0u781_882 Int)
  (implies
  (and (>= ?i2u0u781_882 0)
  (and (< ?i2u0u781_882 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_881 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_881 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_881))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_882)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_883 Int)
  (implies
  (and (>= ?ju1u780_883 0)
  (< ?ju1u780_883 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_883))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1)))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 59, characters 17-22
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_884 Int)
  (forall (?i1u2u778_885 Int)
  (implies
  (and (>= ?i2u1u779_884 0)
  (and (< ?i2u1u779_884 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_885 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_885 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_885))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_884)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_886 Int)
  (implies
  (and (> ?i1u1u777_886 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_886 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_886)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_887 Int)
  (forall (?i2u0u781_888 Int)
  (implies
  (and (>= ?i2u0u781_888 0)
  (and (< ?i2u0u781_888 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_887 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_887 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_887))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_888)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_889 Int)
  (implies
  (and (>= ?ju1u780_889 0)
  (< ?ju1u780_889 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_889))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 44, characters 25-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_890 Int)
  (forall (?i1u2u778_891 Int)
  (implies
  (and (>= ?i2u1u779_890 0)
  (and (< ?i2u1u779_890 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_891 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_891 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_891))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_890)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_892 Int)
  (implies
  (and (> ?i1u1u777_892 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_892 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_892)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_893 Int)
  (forall (?i2u0u781_894 Int)
  (implies
  (and (>= ?i2u0u781_894 0)
  (and (< ?i2u0u781_894 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_893 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_893 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_893))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_894)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_895 Int)
  (implies
  (and (>= ?ju1u780_895 0)
  (< ?ju1u780_895 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_895))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (<= 0 (- (- (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                                       (c_sort int32 ?i_0_0))) 1))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 44, characters 25-34
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_896 Int)
  (forall (?i1u2u778_897 Int)
  (implies
  (and (>= ?i2u1u779_896 0)
  (and (< ?i2u1u779_896 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_897 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_897 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_897))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_896)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_898 Int)
  (implies
  (and (> ?i1u1u777_898 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_898 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_898)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_899 Int)
  (forall (?i2u0u781_900 Int)
  (implies
  (and (>= ?i2u0u781_900 0)
  (and (< ?i2u0u781_900 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_899 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_899 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_899))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_900)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_901 Int)
  (implies
  (and (>= ?ju1u780_901 0)
  (< ?ju1u780_901 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_901))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?result0)))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (integer_of_int32 (c_sort int32 ?i_0_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (offset_max
                                               (c_sort
                                               (alloc_table intP) ?intP_a_4_alloc_table) 
                                               (c_sort (pointer intP) ?a_1))))
  (forall (?result1 c_unsorted)
  (implies
  (= (c_sort int32 ?result1)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i_0_0))))) 1)
  (<= 1 (offset_max
        (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) 
                                                          (integer_of_int32
                                                          (c_sort
                                                          int32 ?i_0_0)))))))
  (forall (?result2 c_unsorted)
  (implies
  (= (c_sort int32 ?result2)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0)))) 1)))))
  (implies
  (<= (integer_of_int32 (c_sort int32 ?result1)) (integer_of_int32
                                                 (c_sort int32 ?result2)))
  (implies
  (and (<= (- 2147483648) (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (<= (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1) 2147483647))
  (forall (?result3 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result3))
  (+ (integer_of_int32 (c_sort int32 ?i_0_0)) 1))
  (forall (?i_0_1 c_unsorted)
  (implies (= (c_sort int32 ?i_0_1) (c_sort int32 ?result3))
  (< (- (- (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                                    (c_sort int32 ?i_0_1))) 1) 
  (- (- (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                                 (c_sort int32 ?i_0_0))) 1))))))))))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 34, characters 22-27
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_902 Int)
  (forall (?i1u2u778_903 Int)
  (implies
  (and (>= ?i2u1u779_902 0)
  (and (< ?i2u1u779_902 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_903 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_903 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_903))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_902)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_904 Int)
  (implies
  (and (> ?i1u1u777_904 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_904 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_904)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_905 Int)
  (forall (?i2u0u781_906 Int)
  (implies
  (and (>= ?i2u0u781_906 0)
  (and (< ?i2u0u781_906 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_905 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_905 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_905))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_906)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_907 Int)
  (implies
  (and (>= ?ju1u780_907 0)
  (< ?ju1u780_907 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_907))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (<= 0 (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1)))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 34, characters 22-27
  (not
  (forall (?a_1 c_unsorted)
  (forall (?n_1 c_unsorted)
  (forall (?intP_a_4_alloc_table c_unsorted)
  (implies
  (and (<= 0 (integer_of_int32 (c_sort int32 ?n_1)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_4_alloc_table) (c_sort
                                                        (pointer intP) ?a_1)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1))))
  (forall (?k_2 c_unsorted)
  (implies (= (c_sort int32 ?k_2) (c_sort int32 ?n_1))
  (forall (?intP_intM_a_4 c_unsorted)
  (forall (?k_2_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i2u1u779_908 Int)
  (forall (?i1u2u778_909 Int)
  (implies
  (and (>= ?i2u1u779_908 0)
  (and (< ?i2u1u779_908 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u2u778_909 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u2u778_909 (integer_of_int32 (c_sort int32 ?n_1))))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) ?i1u2u778_909))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i2u1u779_908)))))))))
  (and
  (or
  (= (integer_of_int32 (c_sort int32 ?k_2_0))
  (integer_of_int32 (c_sort int32 ?n_1)))
  (forall (?i1u1u777_910 Int)
  (implies
  (and (> ?i1u1u777_910 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (< ?i1u1u777_910 (integer_of_int32 (c_sort int32 ?n_1))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_1) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?k_2_0))))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4) (c_sort
                                                    (pointer intP) (shift
                                                                   (c_sort
                                                                   (pointer
                                                                   intP) ?a_1) ?i1u1u777_910)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4))
  (and (>= (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (<= (integer_of_int32 (c_sort int32 ?k_2_0)) (integer_of_int32
                                               (c_sort int32 ?n_1)))))))
  (implies (> (integer_of_int32 (c_sort int32 ?k_2_0)) 0)
  (forall (?result c_unsorted)
  (implies (= (integer_of_int32 (c_sort int32 ?result)) 0)
  (forall (?i_0 c_unsorted)
  (implies (= (c_sort int32 ?i_0) (c_sort int32 ?result))
  (forall (?i_0_0 c_unsorted)
  (forall (?intP_intM_a_4_0 c_unsorted)
  (implies true
  (implies
  (and
  (forall (?i1u0u782_911 Int)
  (forall (?i2u0u781_912 Int)
  (implies
  (and (>= ?i2u0u781_912 0)
  (and (< ?i2u0u781_912 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (and (>= ?i1u0u782_911 (integer_of_int32 (c_sort int32 ?k_2_0)))
  (<= ?i1u0u782_911 (- (integer_of_int32 (c_sort int32 ?n_1)) 1)))))
  (>= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?i1u0u782_911))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) ?i2u0u781_912)))))))))
  (and
  (bubble_sorted
  (c_sort (pointer intP) ?a_1) (integer_of_int32 (c_sort int32 ?k_2_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_1)) 1) (c_sort
                                               (memory intP int32) ?intP_intM_a_4_0))
  (and
  (forall (?ju1u780_913 Int)
  (implies
  (and (>= ?ju1u780_913 0)
  (< ?ju1u780_913 (integer_of_int32 (c_sort int32 ?i_0_0))))
  (<= (integer_of_int32
      (c_sort
      int32 (smtlib__select
            (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                          (pointer intP) 
                                                          (shift
                                                          (c_sort
                                                          (pointer intP) ?a_1) ?ju1u780_913))))) 
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_4_0) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_1) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i_0_0))))))))))
  (and (>= (integer_of_int32 (c_sort int32 ?i_0_0)) 0)
  (and
  (< (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                              (c_sort int32 ?k_2_0)))
  (<= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?n_1))))))))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result0 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result0))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (implies
  (>= (integer_of_int32 (c_sort int32 ?i_0_0)) (integer_of_int32
                                               (c_sort int32 ?result0)))
  (implies
  (and (<= (- 2147483648) (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (<= (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1) 2147483647))
  (forall (?result1 c_unsorted)
  (implies
  (= (integer_of_int32 (c_sort int32 ?result1))
  (- (integer_of_int32 (c_sort int32 ?k_2_0)) 1))
  (forall (?k_2_1 c_unsorted)
  (implies (= (c_sort int32 ?k_2_1) (c_sort int32 ?result1))
  (< (- (integer_of_int32 (c_sort int32 ?k_2_1)) 1) (- (integer_of_int32
                                                       (c_sort int32 ?k_2_0)) 1)))))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/swap3.h", line 21, characters 12-117
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (forall (?intP_intM_a_0_2 c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (forall (?result c_unsorted)
  (implies
  (= (c_sort int32 ?result)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?j)))))))
  (forall (?d c_unsorted)
  (implies (= (c_sort int32 ?d) (c_sort int32 ?result))
  (forall (?result0 c_unsorted)
  (implies
  (= (c_sort int32 ?result0)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i)))))))
  (forall (?intP_intM_a_0_2_0 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_0)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                                    (pointer
                                                                    intP) 
                                                                    (shift
                                                                    (c_sort
                                                                    (pointer
                                                                    intP) ?a_0) 
                                                                    (integer_of_int32
                                                                    (c_sort
                                                                    int32 ?j)))) 
                      (c_sort int32 ?result0))))
  (forall (?intP_intM_a_0_2_1 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_1)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2_0) 
                      (c_sort
                      (pointer intP) (shift
                                     (c_sort (pointer intP) ?a_0) (integer_of_int32
                                                                  (c_sort
                                                                  int32 ?i)))) 
                      (c_sort int32 ?d))))
  (forall (?i1 Int)
  (implies (dom ?i1 (integer_of_int32 (c_sort int32 ?n_2)))
  (exists (?i2u807_914 Int) (and
                            (and (>= ?i2u807_914 0)
                            (<= ?i2u807_914 (- (integer_of_int32
                                               (c_sort int32 ?n_2)) 1)))
                            (= (integer_of_int32
                               (c_sort
                               int32 (smtlib__select
                                     (c_sort
                                     (memory intP int32) ?intP_intM_a_0_2) 
                                     (c_sort
                                     (pointer intP) (shift
                                                    (c_sort
                                                    (pointer intP) ?a_0) ?i1)))))
                            (integer_of_int32
                            (c_sort
                            int32 (smtlib__select
                                  (c_sort
                                  (memory intP int32) ?intP_intM_a_0_2_1) 
                                  (c_sort
                                  (pointer intP) (shift
                                                 (c_sort (pointer intP) ?a_0) ?i2u807_914))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/swap3.h", line 23, characters 12-36
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (forall (?intP_intM_a_0_2 c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (forall (?result c_unsorted)
  (implies
  (= (c_sort int32 ?result)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?j)))))))
  (forall (?d c_unsorted)
  (implies (= (c_sort int32 ?d) (c_sort int32 ?result))
  (forall (?result0 c_unsorted)
  (implies
  (= (c_sort int32 ?result0)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i)))))))
  (forall (?intP_intM_a_0_2_0 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_0)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                                    (pointer
                                                                    intP) 
                                                                    (shift
                                                                    (c_sort
                                                                    (pointer
                                                                    intP) ?a_0) 
                                                                    (integer_of_int32
                                                                    (c_sort
                                                                    int32 ?j)))) 
                      (c_sort int32 ?result0))))
  (forall (?intP_intM_a_0_2_1 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_1)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2_0) 
                      (c_sort
                      (pointer intP) (shift
                                     (c_sort (pointer intP) ?a_0) (integer_of_int32
                                                                  (c_sort
                                                                  int32 ?i)))) 
                      (c_sort int32 ?d))))
  (and
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_0) 
                                                         (integer_of_int32
                                                         (c_sort int32 ?i)))))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2_1) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_0) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?j))))))))
  (and
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_0) 
                                                         (integer_of_int32
                                                         (c_sort int32 ?j)))))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2_1) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_0) 
                                                        (integer_of_int32
                                                        (c_sort int32 ?i))))))))
  (forall (?ku611_915 Int)
  (implies
  (and (not (= ?ku611_915 (integer_of_int32 (c_sort int32 ?i))))
  (not (= ?ku611_915 (integer_of_int32 (c_sort int32 ?j)))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                         (pointer intP) 
                                                         (shift
                                                         (c_sort
                                                         (pointer intP) ?a_0) ?ku611_915)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2_1) (c_sort
                                                        (pointer intP) 
                                                        (shift
                                                        (c_sort
                                                        (pointer intP) ?a_0) ?ku611_915))))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/swap3.h", line 24, characters 12-86
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (forall (?intP_intM_a_0_2 c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (forall (?result c_unsorted)
  (implies
  (= (c_sort int32 ?result)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?j)))))))
  (forall (?d c_unsorted)
  (implies (= (c_sort int32 ?d) (c_sort int32 ?result))
  (forall (?result0 c_unsorted)
  (implies
  (= (c_sort int32 ?result0)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i)))))))
  (forall (?intP_intM_a_0_2_0 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_0)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                                    (pointer
                                                                    intP) 
                                                                    (shift
                                                                    (c_sort
                                                                    (pointer
                                                                    intP) ?a_0) 
                                                                    (integer_of_int32
                                                                    (c_sort
                                                                    int32 ?j)))) 
                      (c_sort int32 ?result0))))
  (forall (?intP_intM_a_0_2_1 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_1)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2_0) 
                      (c_sort
                      (pointer intP) (shift
                                     (c_sort (pointer intP) ?a_0) (integer_of_int32
                                                                  (c_sort
                                                                  int32 ?i)))) 
                      (c_sort int32 ?d))))
  (forall (?k_1 Int)
  (implies
  (and (<= 0 ?k_1)
  (and (< ?k_1 (integer_of_int32 (c_sort int32 ?n_2)))
  (and (not (= ?k_1 (integer_of_int32 (c_sort int32 ?i))))
  (not (= ?k_1 (integer_of_int32 (c_sort int32 ?j)))))))
  (= (integer_of_int32
     (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_0_2_1) (c_sort
                                                           (pointer intP) 
                                                           (shift
                                                           (c_sort
                                                           (pointer intP) ?a_0) ?k_1)))))
  (integer_of_int32
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) ?k_1))))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/swap3.h", line 27, characters 12-17
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (forall (?intP_intM_a_0_2 c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (forall (?result c_unsorted)
  (implies
  (= (c_sort int32 ?result)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?j)))))))
  (forall (?d c_unsorted)
  (implies (= (c_sort int32 ?d) (c_sort int32 ?result))
  (forall (?result0 c_unsorted)
  (implies
  (= (c_sort int32 ?result0)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?i)))))))
  (forall (?intP_intM_a_0_2_0 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_0)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                                    (pointer
                                                                    intP) 
                                                                    (shift
                                                                    (c_sort
                                                                    (pointer
                                                                    intP) ?a_0) 
                                                                    (integer_of_int32
                                                                    (c_sort
                                                                    int32 ?j)))) 
                      (c_sort int32 ?result0))))
  (forall (?intP_intM_a_0_2_1 c_unsorted)
  (implies
  (= (c_sort (memory intP int32) ?intP_intM_a_0_2_1)
  (c_sort
  (memory intP int32) (smtlib__store
                      (c_sort (memory intP int32) ?intP_intM_a_0_2_0) 
                      (c_sort
                      (pointer intP) (shift
                                     (c_sort (pointer intP) ?a_0) (integer_of_int32
                                                                  (c_sort
                                                                  int32 ?i)))) 
                      (c_sort int32 ?d))))
  (forall (?pu355_916 c_unsorted)
  (implies
  (and
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?pu355_916)) 0)
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?pu355_916)) 0))
  (not
  (in_pset
  (c_sort (pointer intP) ?pu355_916) (c_sort
                                     (pset intP) (pset_union
                                                 (c_sort
                                                 (pset intP) (pset_range
                                                             (c_sort
                                                             (pset intP) 
                                                             (pset_singleton
                                                             (c_sort
                                                             (pointer intP) ?a_0))) 
                                                             (integer_of_int32
                                                             (c_sort
                                                             int32 ?j)) 
                                                             (integer_of_int32
                                                             (c_sort
                                                             int32 ?j)))) 
                                                 (c_sort
                                                 (pset intP) (pset_range
                                                             (c_sort
                                                             (pset intP) 
                                                             (pset_singleton
                                                             (c_sort
                                                             (pointer intP) ?a_0))) 
                                                             (integer_of_int32
                                                             (c_sort
                                                             int32 ?i)) 
                                                             (integer_of_int32
                                                             (c_sort
                                                             int32 ?i)))))))))
  (= (c_sort
     int32 (smtlib__select
           (c_sort (memory intP int32) ?intP_intM_a_0_2_1) (c_sort
                                                           (pointer intP) ?pu355_916)))
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) ?pu355_916))))))))))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 5, characters 7-15
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 5, characters 7-15
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (<= (integer_of_int32 (c_sort int32 ?j)) (offset_max
                                           (c_sort
                                           (alloc_table intP) ?intP_a_0_2_alloc_table) 
                                           (c_sort (pointer intP) ?a_0))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 6, characters 10-18
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (forall (?intP_intM_a_0_2 c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (<= (integer_of_int32 (c_sort int32 ?j)) (offset_max
                                           (c_sort
                                           (alloc_table intP) ?intP_a_0_2_alloc_table) 
                                           (c_sort (pointer intP) ?a_0))))
  (forall (?result c_unsorted)
  (implies
  (= (c_sort int32 ?result)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?j)))))))
  (forall (?d c_unsorted)
  (implies (= (c_sort int32 ?d) (c_sort int32 ?result))
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i))))))))))))))))

:formula
  ;; File "/home/gajaka/formal/frama-c-Fluorine-20130601/tests/A2/bubble.c", line 6, characters 10-18
  (not
  (forall (?a_0 c_unsorted)
  (forall (?n_2 c_unsorted)
  (forall (?i c_unsorted)
  (forall (?j c_unsorted)
  (forall (?intP_a_0_2_alloc_table c_unsorted)
  (forall (?intP_intM_a_0_2 c_unsorted)
  (implies
  (and (>= (integer_of_int32 (c_sort int32 ?n_2)) 0)
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 0)
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (- (integer_of_int32 (c_sort int32 ?n_2)) 1))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?i)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (dom
  (integer_of_int32 (c_sort int32 ?j)) (integer_of_int32 (c_sort int32 ?n_2)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?i)))
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (>= (offset_max
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))))))))))
  (implies
  (and
  (<= (offset_min
      (c_sort (alloc_table intP) ?intP_a_0_2_alloc_table) (c_sort
                                                          (pointer intP) ?a_0)) 
  (integer_of_int32 (c_sort int32 ?j)))
  (<= (integer_of_int32 (c_sort int32 ?j)) (offset_max
                                           (c_sort
                                           (alloc_table intP) ?intP_a_0_2_alloc_table) 
                                           (c_sort (pointer intP) ?a_0))))
  (forall (?result c_unsorted)
  (implies
  (= (c_sort int32 ?result)
  (c_sort
  int32 (smtlib__select
        (c_sort (memory intP int32) ?intP_intM_a_0_2) (c_sort
                                                      (pointer intP) 
                                                      (shift
                                                      (c_sort
                                                      (pointer intP) ?a_0) 
                                                      (integer_of_int32
                                                      (c_sort int32 ?j)))))))
  (forall (?d c_unsorted)
  (implies (= (c_sort int32 ?d) (c_sort int32 ?result))
  (<= (integer_of_int32 (c_sort int32 ?i)) (offset_max
                                           (c_sort
                                           (alloc_table intP) ?intP_a_0_2_alloc_table) 
                                           (c_sort (pointer intP) ?a_0))))))))))))))))


)
