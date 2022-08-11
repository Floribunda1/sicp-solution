#lang scheme

(define (first-denomination kinds)
        (cond ((= kinds 1) 1)
              ((= kinds 2) 5) 
              ((= kinds 3) 10) 
              ((= kinds 4) 25) 
              ((= kinds 5) 50) 
        )
)

(define (coin-change amount kinds)
        (cond ((= amount 0) 1)
              ((or (< amount 0) (= kinds 0)) 0)
              (else
                   (+ 
                    ; all kinds and amount = (total - first-kind-denominant)
                    (coin-change (- amount (first-denomination kinds)) kinds)
                    ; all kinds but first
                    (coin-change amount (- kinds 1))
                   )
              )
        )
)

(coin-change 100 5)