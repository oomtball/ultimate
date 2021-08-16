(set-option :produce-proofs true)
(set-logic QF_UFLRA)
(declare-fun x () Real)
(declare-fun y () Real)
(assert (and (<= (+ (- x) (- y)) 1.0) (>= (+ x y) (- 1.0))))
(check-sat)
(exit)
