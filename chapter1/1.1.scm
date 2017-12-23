;; 1.1.scm

(+ 137 349)

(- 1000 334)

(* 5 99)

(/ 10 5)

(+ 2.7 10) ; Implicit cast to float

(+ 11 22 33 44) ; Apply on list

(* 20 32 42)

(+ (* 3 5)
   (- 10 3)) ; Multiples instructions

;; There is no limits to such nesting

(+ (* 4
      (+ 12 (* 4
               (+ 1 1))
         (* 1 2)))
   (+ (- 10 7)
      2)) ;; 93
