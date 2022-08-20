#lang scheme

(define (range-op-product-recur op lower upper next)
  (if (> lower upper)
      1
      (*
        (op lower)
        (range-op-product-recur op (next lower) upper next)
      )
  )
)

(define (range-op-product-iter op lower upper next)
  (define (iter val product)
          (if (> val upper) 
              product
              (iter (next val) (* product (op val)))
          )
  )
  (iter lower 1)
)

(define (inc x) (+ x 1))

(define (is-even n) (= (remainder n 2) 0))
(define (pi-op n) 
  (if (is-even n) 
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2)) 
  )
)

(range-op-product-iter pi-op 1 1000 inc)