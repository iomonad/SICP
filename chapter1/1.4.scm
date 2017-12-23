;; 1.4.scm

;; Procedure definition

;; Dispatch computions inside abstract units

(define (square x)
  (* x x))

;; (define (<fname> <..params..>) (<body>))

(square 21)
;; 441

(square (+ 2 5)) ; reduced at (square 7)
;; 49

;; Computations can be generated as building blocks
(+ (square x) (square y)) ; xx + yy

;; Building more complex procedures
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))
(sum-of-squares 3 4)
;; 25

;; Passing to build blocks
(define (f a)
  (sum-of-squares (square (* (/ a 10)
                             2))
                  (square (+ 1 a))))
(f 4)
