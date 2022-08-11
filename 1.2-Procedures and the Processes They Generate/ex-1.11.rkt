#lang scheme

(define (fn n)
        (if (< n 3) n
            (+
              (fn (- n 1))
              (* 2 (fn (- n 2)))
              (* 3 (fn (- n 3)))
            )
        )
)

(define (fn-iter n)
        (if (< n 3) n
            (iter 3 n 2 1 0)
        )
)

(define (iter counter max n1 n2 n3)
        (if (> counter max) n1
            (iter (+ counter 1) max (+ n1 (* 2 n2) (* 3 n3)) n1 n2)
        )
)