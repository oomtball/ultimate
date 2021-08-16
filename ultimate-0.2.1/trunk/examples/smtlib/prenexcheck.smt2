(set-option :produce-proofs true)
(set-logic AUFLIRA)
(declare-fun p ( Int Int) Bool)
(declare-fun q ( Int) Bool)
(declare-fun r ( Int Int) Bool)
(declare-fun t ( Int) Bool)
(assert (not (=> (forall ((x Int)) (and (exists ((y Int)) (p x y)) (exists ((y Int)) (r x y)))) (forall ((x Int)) (exists ((y Int)) (and (p x y) (r x y)))))))
(check-sat)
(exit)
