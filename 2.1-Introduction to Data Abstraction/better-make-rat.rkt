#lang scheme

(define (abs x)
  (if (< x 0) (- x) x)
)

(define (make-rat a b)
  (if (or
        (and (< a 0) (< b 0)) 
        (and (> a 0) (> b 0))
      )
      (cons (abs a) (abs b))
      (cons (- (abs a)) (abs b))
  )
)

(make-rat 2 -10)