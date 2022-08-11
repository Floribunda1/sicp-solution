#lang scheme

(define (abs val)
  (if (< val 0)
      (- val)
      val
  )
)

(define (is-close-enough a b)
  (< 
    (abs (- a b))
    0.001
  )
)

(define (avg a b)
  (/ (+ a b) 2)
)

(define (sqrt-iter guess target)
        (if (is-close-enough guess (/ target guess))
            guess
            (sqrt-iter (avg guess (/ target guess)) target)
        )
)

(define (sqrt x) (sqrt-iter 1 x))