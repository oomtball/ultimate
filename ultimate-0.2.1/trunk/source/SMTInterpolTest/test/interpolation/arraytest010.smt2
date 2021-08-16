(set-option :produce-proofs true)
(set-option :proof-check-mode true)
(set-option :interpolant-check-mode true)

(set-logic QF_AUFLIA)
(declare-sort U 0)
(declare-fun i () U)
(declare-fun j () U)
(declare-fun k1 () U)
(declare-fun k2 () U)
(declare-fun k3 () U)
(declare-fun k4 () U)
(declare-fun v1 () U)
(declare-fun v2 () U)
(declare-fun v3 () U)
(declare-fun v4 () U)
(declare-fun a () (Array U U))
(declare-fun b () (Array U U))
(declare-fun s1 () (Array U U))
(declare-fun s2 () (Array U U))
(declare-fun p (U) Bool)

(assert (! (and (p (select a i))
	        (= a (store (store s1 k1 v1) k2 v2))
		(not (= j k1))
		(not (= j k3)))
	:named A))
(assert (! (and (not (p (select b j)))
	        (= b (store (store s1 k3 v3) k4 v4))
		(= i j)
		(not (= j k2))
		(not (= j k4)))
	:named B))

(check-sat)
(set-option :print-terms-cse false)
(get-proof)
(get-interpolants A B)
(exit)
