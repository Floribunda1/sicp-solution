#lang scheme

(define (is-even? v) (= (remainder v 2) 0))
(define (is-odd? v) (= (remainder v 2) 1))

(define (filter-list list predicate)
  (cond ((null? list) list)
        (
          (predicate (car list)) 
          (cons (car list) (filter-list (cdr list) predicate))
        )
        (else (filter-list (cdr list) predicate))
  )
)

(define (same-parity first . other)
  (if (is-even? first) 
    (filter-list other is-even?)
    (filter-list other is-odd?)
  )
)

(same-parity 2 3 4 5 6 7)