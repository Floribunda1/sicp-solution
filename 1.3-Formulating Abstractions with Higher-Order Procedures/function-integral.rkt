#lang scheme

(define (range-op-sum op lower upper iter)
        (if (> lower upper) 0
            (+ 
               (range-op-sum op (iter lower) upper iter) 
               (op lower)
            )
        )
)

(define (fn-integral fn lower-bound upper-bound dx)
  (define (iter x) (+ x dx))
  (
    *
    (range-op-sum fn 
                (+ lower-bound (/ dx 2)) 
                upper-bound
                iter
    )
    dx
  ) 
)

(define (cube x) (* x x x))

(fn-integral cube 0 10 0.01)