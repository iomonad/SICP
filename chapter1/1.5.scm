;; 1.5.scm

;; Substitution model

(f 5) ; can be evaluated to

(sum-of-squares (+ 5 1) (* 5 2)) ; can be evaluated to

(+ (square (+ 5 1)) (square (* 5 2))) ; can be evaluated to

(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
;; Followed by reduction
(+ (* 6 6) (* 10 10)) ; followed by
(+ 36 100) ; reduced as
;; 136
