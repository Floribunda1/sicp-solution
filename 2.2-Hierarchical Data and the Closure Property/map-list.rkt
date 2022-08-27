#lang scheme

(define (map-list list map-fn)
  (if (null? list) 
      '()
      (cons (map-fn (car list)) (map-list (cdr list) map-fn))
  )
)

(map-list (list 1 2 3 4 5) (lambda (x) (* x x)))