;; Procedures and recursion

(define (factorial n)
  (if (= n 1) 1 ; Linear recursion
      (* n (factorial (- n 1)))))

(factorial 6) ; 720

(define (real-factorial n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))
