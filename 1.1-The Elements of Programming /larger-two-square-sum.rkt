#lang scheme

(define (square x) (* x x))

(define (sum-of-square x y)
        (+ (square x) (square y))
)

(define (larger-two-sum-square x y z)
        (cond ((and (< x y) (< x z)) (sum-of-square y z))
              ((and (< y x) (< y z)) (sum-of-square x z))
              ((and (< z x) (< z y)) (sum-of-square x y))
        )
)

(larger-two-sum-square 3 4 5)