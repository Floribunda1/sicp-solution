#lang scheme

(define (make-point x y) (cons x y))
(define (x-coord p) (car p))
(define (y-coord p) (cdr p))

(define (mid p1 p2)
  (make-point 
    (/ 
      (+ (x-coord p1) (x-coord p2))
      2
    )
    (/ 
      (+ (y-coord p1) (y-coord p2))
      2
    )
  )
)

(define (make-line p1 p2) (cons p1 p2))
(define (line-s line) (car line))
(define (line-e line) (cdr line))

(define (mid-point line)
  (mid (line-s line) (line-e line))
)