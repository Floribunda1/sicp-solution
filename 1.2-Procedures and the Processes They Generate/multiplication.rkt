#lang scheme

(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (is-even x) (= (remainder x 2) 0))

(define (fast-multiply a b)
  (cond ((= b 1) a)
        ((is-even b) (fast-multiply (double a) (halve b)))
        (else (+ a (fast-multiply a (- b 1))))
  )       
)

(define (fast-multiply-iter a b)
  (define (fast-iter a b product)
    (cond ((= b 0) product)
          ((is-even b) (fast-iter (double a) (halve b) product))
          (else (fast-iter a (- b 1) (+ product a)))
    )
  )
  (fast-iter a b 0)
)

(fast-multiply 10 20)
(fast-multiply-iter 10 20)