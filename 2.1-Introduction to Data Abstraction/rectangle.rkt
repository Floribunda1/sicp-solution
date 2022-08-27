#lang scheme

(define (make-point x y) (cons x y))
(define (x-coord p) (car p))
(define (y-coord p) (cdr p))

(define (make-rectangle p1 p2) (cons p1 p2))

; TODO
(define (perimeters rect)
  (+
    (* (get-width rect) 2)
    (* (get-height rect) 2)
  )
)

(define (area rect)
  (* (get-width rect) (get-height rect))
)

(define zero
  (lambda (f)
    (lambda (x) x)
  )
)