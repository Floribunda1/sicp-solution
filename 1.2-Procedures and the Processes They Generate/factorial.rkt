#lang scheme

(define (factorial-iter counter result)
  (if (= counter 1)
      result
      (factorial-iter (- counter 1) (* result counter))
  )
)

(define (factorial val)
  (factorial-iter val 1)
)

(factorial 5)

(define (factorial-recursive val)
  (if (= val 1)
      1
      (* 
        val
        (factorial-recursive (- val 1))
      )
  )
)