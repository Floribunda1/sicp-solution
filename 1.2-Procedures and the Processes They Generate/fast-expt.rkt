#lang scheme

(define (square x) (* x x))

(define (is-even val)
        (= (remainder val 2) 0)
)
; recursive process
(define (fast-expt base exponent)
        (cond ((= exponent 0) 1)
              ((is-even exponent) (square (fast-expt base (/ exponent 2))))
              (else (* base (fast-expt base (- exponent 1))))
        )
)

; iterative process
(define (fast-expt-iter base exponent)
        (iter base exponent 1)
)

(define (iter base exponent product)
        (cond ((= exponent 0) product)
              ((is-even exponent) (iter (square base) (/ exponent 2) product))    
              (else (iter base (- exponent 1) (* product base)))
        )
)

(fast-expt-iter 2 3)