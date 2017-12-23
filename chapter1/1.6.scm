;; 1.6.scm

;; Conditionals and predicates

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 42) ; 42
(abs 0) ; 0
(abs -42) ; 42

;; In a more abstract way function
;; can be reduced to

(define (absp x)
  (cond ((< x 0) (- x))
        (else x)))

(absp -42) ; 42

;; or using predicate based condition

(define (abss x)
  (if (< x 0) ; evaluated to true or false
      (- x)
      x))

;; (if (<predicate>) (<consequent> (<alternative>))

;; binary conditions
(and (> x 5) (< x 10)) ; true true
(or <body>)
(and <body>)
