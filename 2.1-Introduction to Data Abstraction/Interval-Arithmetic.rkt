(define (make-interval a b) (cons a b))
(define (upper-bound interval) (cdr interval))
(define (lower-bound interval) (car interval))

(define (mul-interval x y) 
  (let (
        (p1 (* (lower-bound x) (lower-bound y))) 
        (p2 (* (lower-bound x) (upper-bound y))) 
        (p3 (* (upper-bound x) (lower-bound y))) 
        (p4 (* (upper-bound x) (upper-bound y)))
       ) 
       (make-interval 
        (min p1 p2 p3 p4) 
        (max p1 p2 p3 p4)
       )
  )
) 
; TODO
(define (div-interval a b)
  (if (<= 0 (* (lower-bound b) (upper-bound b)))
      (error "Div Error")
      (mul-interval 
        a
        (make-interval 
          (/ 1.0 (lower-bound b))
          (/ 1.0 (upper-bound b))
        )
      )
  )
)

(define (sub-interval x y)
  (make-interval
    (- (lower-bound x) (upper-bound y))
    (- (upper-bound x) (lower-bound y))
  )
)