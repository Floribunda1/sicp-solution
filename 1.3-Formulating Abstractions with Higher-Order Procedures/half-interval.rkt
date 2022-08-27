#lang scheme

(define (abs x)
  (if (< x 0) (- x)
      x
  )
)

(define (close-enough a b)
  (< (abs (- a b)) 0.01)
)

(define (avg a b)
  (/ (+ a b) 2)
)

(define (half-interval f neg pos)
  (let (
        (mid (avg neg pos))
       )
       (if (close-enough neg pos) mid
           (
            let (
                  (test-val (f mid))
                )
                (cond ((> test-val 0) (half-interval f neg mid))
                      ((< test-val 0) (half-interval f mid pos))
                      (else mid)
                ) 
           )
       )
  )
)

(half-interval sin 2.0 4.0)