(set-option :produce-proofs true)
(set-info :source "{
}")
(set-info :status unsat)
(set-info :difficulty "{ 0 }")
(set-logic AUFLIRA)
(declare-fun x () Int)
(declare-fun y () Int)
(assert (and (= x 3) (<= (- (* 7 x) (* 5 y)) (- 1))))
(check-sat)
(exit)