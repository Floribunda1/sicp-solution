#lang scheme

(define (list-ref list n)
  (if (= n 0) 
      (car list)
      (list-ref (cdr list) (- n 1))
  )
)

(define (length list)
  (if (null? list) 0
      (+ 1 (length (cdr list)))
  )
)

(define odds (list 1 3 5 7 9))
(define evens (list 2 4 6 8 10))

(define (append list1 list2)
  (if (null? list1) list2
      (cons (car list1) (append (cdr list1) list2))
  )
)

(define (last-pair list)
  (if (null? (cdr list)) 
      (car list)
      (last-pair (cdr list))
  )
)

(define (reverset list)
  (if (null? (cdr list))
    list
    (cons (reverse (cdr list)) (car list))
  )
)
