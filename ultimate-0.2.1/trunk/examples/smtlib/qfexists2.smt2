(set-option :produce-proofs true)
(set-logic AUFLIA)
(declare-fun P ( Int) Bool)
(assert (! (exists ((x Int)) (P x)) :named IP_0))
(assert (! (forall ((x Int)) (not (P x))) :named IP_1))
(check-sat)
(get-interpolants IP_0 IP_1)
(exit)
