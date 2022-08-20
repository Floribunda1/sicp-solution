#lang scheme

(define (range-op-sum op lower upper next)
  (define (iter val product)
    (if (> val upper) product
      (iter 
        (next val)
        (+ product (op val))
      )
    )
  )
  (iter lower 0)
)

(define (cube x) (* x x x))

(define (inc x) (+ x 1))

(range-op-sum cube 0 4 inc)