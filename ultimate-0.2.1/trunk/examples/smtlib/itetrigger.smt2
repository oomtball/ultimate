(set-option :produce-proofs true)
(set-logic AUFLIA)
(declare-fun f ( Int) Int)
(declare-fun s1 () Int)
(assert (and (forall ((x Int)) (= (f (ite (< s1 5) 42 x)) 3)) (>= s1 25) (= (f 42) 7)))
(check-sat)
(exit)
