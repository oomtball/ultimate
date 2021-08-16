(set-option :produce-proofs true)
(set-info :source "{
}")
(set-info :status unsat)
(set-info :difficulty "{ 0 }")
(set-logic AUFLIA)
(declare-fun P ( Int) Bool)
(declare-fun Q ( Int Int) Bool)
(declare-fun foo1 () Int)
(declare-fun foo2 () Int)
(declare-fun bar () Int)
(assert (! (forall ((x Int)) (! (= (P x) (forall ((y Int)) (! (Q x y) :pattern ((Q x y))))) :pattern ((P x)))) :named IP_0))
(assert (! (forall ((y Int)) (! (Q foo2 y) :pattern ((Q foo2 y)))) :named IP_1))
(assert (! (or (not (P foo2)) (and (P foo1) (not (Q foo1 bar)))) :named IP_2))
(check-sat)
(get-interpolants IP_0 IP_1 IP_2)
(exit)