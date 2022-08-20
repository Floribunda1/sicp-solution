#lang scheme

(define (range-op-sum op lower upper iter)
        (if (> lower upper) 0
            (+ 
               (range-op-sum op (iter lower) upper iter) 
               (op lower)
            )
        )
)

(define (is-even x) (= (remainder x 2) 0))

(define (simpson-integral op lower upper n)
  (define h (/ (- upper lower) n))
  (define (val k) (+ lower (* k h)))
  (define (compose-op k)
          (cond ((or (= k 0) (= k n)) (op (val k)))
                ((is-even k) (* 2 (op (val k))))
                (else (* 4 (op (val k))))
          )
  )
  (define (inc x) (+ x 1))
  (* 
    (range-op-sum compose-op 0 n inc)
    (/ h 3)
  )
)

(define (cube x) (* x x x))

(simpson-integral cube 0 10 1000)