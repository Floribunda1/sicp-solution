#lang scheme

;;; (define (fibonacci-recursive n)
;;;   (cond ((= n 1) 1)
;;;         ((= n 2) 2)
;;;         (
;;;           else (+ 
;;;                 (fibonacci-recursive (- n 1))
;;;                 (fibonacci-recursive (- n 2))
;;;                )
;;;         )
;;;   )
;;; )

;;; (fibonacci-recursive 6)


(define (iter counter max n1 n2)
  (if (> counter max) 
      n1
      (iter (+ counter 1) max (+ n1 n2) n1)
  )
)

(define (fibonacci val)
  (if (or (= val 1) (= val 2))
      1
      (iter 3 val 1 1)
  )
)

(fibonacci 10)