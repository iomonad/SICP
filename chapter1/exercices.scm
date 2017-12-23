;; chapters1 exercices

;; ~~ 1.1 ~~

10 ; 10
(+ 5 3 4) ; 12
(- 9 1) ; 8
(/ 6 2); 3
(+ (* 2 4) (- 4 6)) ; 6
(define a 3) ; Nil
(define b (+ a 1)) ; Nil
(+ a b (* a b)) ; 19
(= a b) ; Nil

(if (and (> a b) (< b (* a b)))
    b
    a) ; a

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; (+ 6 7 3) -> 16

(+ 2 (if (> b a) b a)) ; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; (* 4 4) -> 16

;; ~~ 1.2 ~~

(/ (+ 5 4
      (- 2 (- 3
              (+ 6
                 (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

;; ~~ 1.3 ~~

(define (sq x) (* x x))
(define (sqsum x y) (+ (sq x) (sq y)))

(define (solution1-3 a b c)
  (cond ((not (or (> a b) (> a c))) (sqsum b c))
	(else (solution1-3 b c a))))

;; ~~ 1.4 ~~

;; use untyped features
;; of lisp to use operators
;; as data variable, defined
;; by conditional form.

;; ~~ 1.5 ~~

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p)) ;; impure body passed to 'int' variable

;; applicative order - arguments will be evaluated first, 
;; then procedure will be applied to them - therefore procedure (p)
;; in (test 0 (p)) will be called immediately. 
;; Result is an infinite loop.
;;
;; normal order - evaluation of the arguments will be postponed
;; until they are needed. The arguments of (test  ) will be passed
;; unevaluated to the procedure body. In the case of (test 0 (p)), 
;; the execution never reaches (p) because of the predicate (= x 0).
