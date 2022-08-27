#lang scheme

(define (for-each list fn)
  (if (null? list) 
      #f
      (and (fn (car list)) (for-each (cdr list) fn))
  )
)

(for-each (list 1 2 3 4 5) (lambda (x) (display x)))