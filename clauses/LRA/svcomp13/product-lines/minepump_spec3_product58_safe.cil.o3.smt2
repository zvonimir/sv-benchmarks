(set-info :origin "SVCOMP13 benchmarks generated by Arie Gurfinkel")
(set-info :status sat)
(set-logic HORN)
(declare-fun cp-rel-entry () Bool)
(declare-fun cp-rel-bb2.i.i34.i.i () Bool)
(declare-fun cp-rel-bb1.i.i (Real Real Real) Bool)
(assert |cp-rel-entry|)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Bool) )(let (($x395686 (and |cp-rel-entry| (<= ?C 1.0) (>= ?B 0.0) (<= ?B 0.0) (>= ?A 0.0) (<= ?A 0.0) (= ?D true) (>= ?C 1.0))))
(=> $x395686 (|cp-rel-bb1.i.i| ?A ?B ?C))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Bool) (?H Bool) (?I Bool) (?J Bool) (?K Bool) (?L Bool) (?M Real) (?N Real) (?O Bool) (?P Bool) (?Q Bool) (?R Bool) (?S Bool) (?T Bool) (?U Real) (?V Real) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Real) (?L1 Real) (?M1 Real) (?N1 Bool) (?O1 Bool) (?P1 Real) (?Q1 Bool) (?R1 Bool) (?S1 Real) (?T1 Bool) (?U1 Real) (?V1 Real) (?W1 Bool) (?X1 Bool) (?Y1 Real) (?Z1 Bool) (?A2 Bool) (?B2 Bool) (?C2 Bool) (?D2 Bool) )(let (($x520262 (|cp-rel-bb1.i.i| ?D ?E ?F)))
(let (($x199645 (= ?R1 (and ?D2 ?C2))))
(let (($x284963 (or (not ?G) (and ?H ?I (not ?J)))))
(let (($x51222 (or (not ?G) ?I)))
(let (($x439880 (not ?K)))
(let (($x555305 (or $x439880 (and ?G ?L (<= ?M ?N) (>= ?M ?N)) (and ?H ?O ?J (<= ?M ?C) (>= ?M ?C)))))
(let (($x841227 (or $x439880 (and ?L (not ?O)) (and ?O (not ?L)))))
(let (($x317878 (or (not ?P) (and ?K ?Q (not ?R)))))
(let (($x158937 (or (not ?P) ?Q)))
(let (($x327920 (not ?S)))
(let (($x293656 (or $x327920 (and ?P ?T (<= ?U ?V) (>= ?U ?V)) (and ?K ?W ?R (<= ?U ?B) (>= ?U ?B)))))
(let (($x128216 (or $x327920 (and ?T (not ?W)) (and ?W (not ?T)))))
(let (($x874111 (or (not ?X) (and ?S ?Y ?Z))))
(let (($x250822 (or (not ?X) ?Y)))
(let (($x78638 (or (not ?A1) (and ?S ?B1 (not ?Z)))))
(let (($x815146 (or (not ?A1) ?B1)))
(let (($x422194 (or (not ?C1) (and ?X ?D1 ?E1))))
(let (($x626609 (or (not ?C1) ?D1)))
(let (($x353436 (or (not ?F1) (and ?A1 ?G1 ?H1))))
(let (($x103121 (or (not ?F1) ?G1)))
(let (($x173801 (>= ?K1 ?P1)))
(let (($x642212 (<= ?K1 ?P1)))
(let (($x897678 (and ?A1 ?Q1 (not ?H1) $x642212 $x173801 (<= ?L1 0.0) (>= ?L1 0.0))))
(let (($x364524 (>= ?K1 ?M)))
(let (($x320909 (<= ?K1 ?M)))
(let (($x549643 (not ?I1)))
(let (($x359894 (or $x549643 (and ?C1 ?J1 $x320909 $x364524 (<= ?L1 ?M1) (>= ?L1 ?M1)) (and ?X ?N1 (not ?E1) $x320909 $x364524 (<= ?L1 ?A) (>= ?L1 ?A)) (and ?F1 ?O1 $x642212 $x173801 (<= ?L1 ?A) (>= ?L1 ?A)) $x897678)))
(let (($x861313 (or $x549643 (and ?J1 (not ?N1) (not ?O1) (not ?Q1)) (and ?N1 (not ?J1) (not ?O1) (not ?Q1)) (and ?O1 (not ?J1) (not ?N1) (not ?Q1)) (and ?Q1 (not ?J1) (not ?N1) (not ?O1)))))
(let (($x261165 (= ?I1 true)))
(let (($x89463 (= ?J (= ?S1 0.0))))
(let (($x873562 (= ?U1 (ite ?T1 1.0 0.0))))
(let (($x348249 (= ?R (= ?V1 0.0))))
(let (($x172291 (= ?V (ite ?W1 1.0 0.0))))
(let (($x846438 (= ?E1 (not (<= ?M 1.0)))))
(let (($x878445 (= ?X1 (not (<= ?M 0.0)))))
(let (($x82040 (= ?Y1 (+ (~ 1.0) ?M))))
(let (($x619421 (= ?P1 (ite ?X1 ?Y1 ?M))))
(let (($x313861 (= ?H1 (= ?P1 0.0))))
(let (($x808375 (= ?Z1 (= ?U 0.0))))
(let (($x348506 (= ?A2 (= ?U 0.0))))
(let (($x407345 (= ?B2 (= ?K1 2.0))))
(let (($x870670 (= ?C2 (= ?L1 0.0))))
(let (($x621779 (= ?D2 (and ?B2 ?A2))))
(let (($x688998 (and (|cp-rel-bb1.i.i| ?A ?B ?C) $x621779 $x870670 $x407345 $x348506 (= ?M1 (ite ?Z1 1.0 ?A)) $x808375 $x313861 $x619421 $x82040 $x878445 $x846438 (= ?Z (= ?A 0.0)) $x172291 (= ?W1 (= ?B 0.0)) $x348249 (= ?N (+ ?U1 ?C)) $x873562 (= ?T1 (not (<= 2.0 ?C))) $x89463 (>= ?F ?K1) (<= ?F ?K1) (>= ?E ?U) (<= ?E ?U) (>= ?D ?L1) (<= ?D ?L1) (not (= ?R1 true)) $x261165 $x861313 $x359894 $x103121 $x353436 $x626609 $x422194 $x815146 $x78638 $x250822 $x874111 $x128216 $x293656 $x158937 $x317878 $x841227 $x555305 $x51222 $x284963 $x199645)))
(=> $x688998 $x520262))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Bool) (?E Bool) (?F Bool) (?G Bool) (?H Bool) (?I Bool) (?J Real) (?K Real) (?L Bool) (?M Bool) (?N Bool) (?O Bool) (?P Bool) (?Q Bool) (?R Real) (?S Real) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Real) (?I1 Real) (?J1 Real) (?K1 Bool) (?L1 Bool) (?M1 Real) (?N1 Bool) (?O1 Bool) (?P1 Real) (?Q1 Bool) (?R1 Real) (?S1 Real) (?T1 Bool) (?U1 Bool) (?V1 Real) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Bool) (?A2 Bool) )(let (($x199645 (= ?O1 (and ?A2 ?Z1))))
(let (($x284963 (or (not ?D) (and ?E ?F (not ?G)))))
(let (($x51222 (or (not ?D) ?F)))
(let (($x439880 (not ?H)))
(let (($x353988 (or $x439880 (and ?D ?I (<= ?J ?K) (>= ?J ?K)) (and ?E ?L ?G (<= ?J ?C) (>= ?J ?C)))))
(let (($x841227 (or $x439880 (and ?I (not ?L)) (and ?L (not ?I)))))
(let (($x317878 (or (not ?M) (and ?H ?N (not ?O)))))
(let (($x158937 (or (not ?M) ?N)))
(let (($x327920 (not ?P)))
(let (($x119736 (or $x327920 (and ?M ?Q (<= ?R ?S) (>= ?R ?S)) (and ?H ?T ?O (<= ?R ?B) (>= ?R ?B)))))
(let (($x128216 (or $x327920 (and ?Q (not ?T)) (and ?T (not ?Q)))))
(let (($x874111 (or (not ?U) (and ?P ?V ?W))))
(let (($x250822 (or (not ?U) ?V)))
(let (($x78638 (or (not ?X) (and ?P ?Y (not ?W)))))
(let (($x815146 (or (not ?X) ?Y)))
(let (($x422194 (or (not ?Z) (and ?U ?A1 ?B1))))
(let (($x626609 (or (not ?Z) ?A1)))
(let (($x353436 (or (not ?C1) (and ?X ?D1 ?E1))))
(let (($x103121 (or (not ?C1) ?D1)))
(let (($x173801 (>= ?H1 ?M1)))
(let (($x642212 (<= ?H1 ?M1)))
(let (($x897678 (and ?X ?N1 (not ?E1) $x642212 $x173801 (<= ?I1 0.0) (>= ?I1 0.0))))
(let (($x364524 (>= ?H1 ?J)))
(let (($x320909 (<= ?H1 ?J)))
(let (($x549643 (not ?F1)))
(let (($x283401 (or $x549643 (and ?Z ?G1 $x320909 $x364524 (<= ?I1 ?J1) (>= ?I1 ?J1)) (and ?U ?K1 (not ?B1) $x320909 $x364524 (<= ?I1 ?A) (>= ?I1 ?A)) (and ?C1 ?L1 $x642212 $x173801 (<= ?I1 ?A) (>= ?I1 ?A)) $x897678)))
(let (($x861313 (or $x549643 (and ?G1 (not ?K1) (not ?L1) (not ?N1)) (and ?K1 (not ?G1) (not ?L1) (not ?N1)) (and ?L1 (not ?G1) (not ?K1) (not ?N1)) (and ?N1 (not ?G1) (not ?K1) (not ?L1)))))
(let (($x261165 (= ?F1 true)))
(let (($x638816 (= ?O1 true)))
(let (($x89463 (= ?G (= ?P1 0.0))))
(let (($x873562 (= ?R1 (ite ?Q1 1.0 0.0))))
(let (($x348249 (= ?O (= ?S1 0.0))))
(let (($x172291 (= ?S (ite ?T1 1.0 0.0))))
(let (($x846438 (= ?B1 (not (<= ?J 1.0)))))
(let (($x878445 (= ?U1 (not (<= ?J 0.0)))))
(let (($x82040 (= ?V1 (+ (~ 1.0) ?J))))
(let (($x619421 (= ?M1 (ite ?U1 ?V1 ?J))))
(let (($x313861 (= ?E1 (= ?M1 0.0))))
(let (($x808375 (= ?W1 (= ?R 0.0))))
(let (($x348506 (= ?X1 (= ?R 0.0))))
(let (($x407345 (= ?Y1 (= ?H1 2.0))))
(let (($x870670 (= ?Z1 (= ?I1 0.0))))
(let (($x621779 (= ?A2 (and ?Y1 ?X1))))
(let (($x520262 (|cp-rel-bb1.i.i| ?A ?B ?C)))
(let (($x645551 (and $x520262 $x621779 $x870670 $x407345 $x348506 (= ?J1 (ite ?W1 1.0 ?A)) $x808375 $x313861 $x619421 $x82040 $x878445 $x846438 (= ?W (= ?A 0.0)) $x172291 (= ?T1 (= ?B 0.0)) $x348249 (= ?K (+ ?R1 ?C)) $x873562 (= ?Q1 (not (<= 2.0 ?C))) $x89463 $x638816 $x261165 $x861313 $x283401 $x103121 $x353436 $x626609 $x422194 $x815146 $x78638 $x250822 $x874111 $x128216 $x119736 $x158937 $x317878 $x841227 $x353988 $x51222 $x284963 $x199645)))
(=> $x645551 |cp-rel-bb2.i.i34.i.i|)))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (not cp-rel-bb2.i.i34.i.i))
(check-sat)
