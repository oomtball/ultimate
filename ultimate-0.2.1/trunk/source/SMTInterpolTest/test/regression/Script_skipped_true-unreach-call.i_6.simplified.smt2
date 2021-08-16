(set-option :produce-interpolants true)
(set-logic QF_AUFLIRA)
(declare-fun ~SIZE_5 () Int)
(declare-fun main_~i~7_7 () Int)
(declare-fun main_~i~7_12 () Int)
(declare-fun main_~i~7_23 () Int)
(declare-fun main_~i~7_31 () Int)
(assert (< 1 ~SIZE_5))
(assert (and (= main_~i~7_7 1) (= (mod ~SIZE_5 2) 0)))
(assert (= main_~i~7_12 (+ main_~i~7_7 1)))
(assert (not (<= main_~i~7_12 (div ~SIZE_5 2))))
(assert (= main_~i~7_23 1))
(assert (= main_~i~7_31 (+ main_~i~7_23 1)))
(assert (< main_~i~7_31 ~SIZE_5))
(assert (! true :named ssa_36))
(assert (! true :named ssa_37))
(check-sat)
(get-interpolants ssa_36 ssa_37)
