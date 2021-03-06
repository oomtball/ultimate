(set-option :produce-proofs true)
(set-option :interpolant-check-mode true)
(set-info :source "{
Test formula which needs AB-mixed interpolators
Desired Interpolant: (and (<= y x1) (implies (>= y x1) (< (f (- x1 5)) x2)))
}")
(set-info :status unsat)
(set-info :difficulty "{ 0 }")
(set-logic QF_UFLIA)
(declare-fun a1 () Int)
(declare-fun a2 () Int)
(declare-fun b1 () Int)
(declare-fun b2 () Int)
(declare-fun x1 () Int)
(declare-fun x2 () Int)
(declare-fun y () Int)
(declare-fun f ( Int) Int)
(assert (! (and (<= a1 x1) (and (= (f (+ a1 5)) a2) (and (<= y a1) (< a2 x2)))) :named IP_0))
(assert (! (and (<= x1 (- b1 12)) (and (= (f (- b1 7)) b2) (and (<= (- b1 12) y) (< x2 b2)))) :named IP_1))
(check-sat)
(get-interpolants IP_0 IP_1)
(exit)
