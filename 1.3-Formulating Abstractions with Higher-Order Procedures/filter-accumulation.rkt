#lang scheme

(define (accumulate combiner null-val op lower upper next)
  (if (> lower upper) null-val
    (combiner
      (op lower)
      (accumulate combiner null-val op (next lower) upper next)     
    )
  )
)

(define (filter-accumulate combiner null-val op lower upper next predicate)
  (cond ((> lower upper) null-val)
        ((predicate lower) 
         (combiner
            (op lower)
            (accumulate combiner null-val op (next lower) upper next)
         )
        )
        (else (accumulate combiner null-val op (next lower) upper next))
  )
)