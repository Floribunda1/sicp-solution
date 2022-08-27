#lang scheme

(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define (no-more? list)
  (null? list)
)

(define (except-first-denominant list)
  (cdr list)
)

(define (first-denominant list)
  (car list)
)

(define (coin-change amount coin-values)
  (cond 
    ((= amount 0) 1)
    ((or (< amount 0) (no-more? coin-values)) 0)
    (else
      (+ 
        (coin-change amount (except-first-denominant coin-values))
        (coin-change (- amount (first-denominant coin-values)) coin-values)
      )
    )
  )
)

(coin-change 100 us-coins)