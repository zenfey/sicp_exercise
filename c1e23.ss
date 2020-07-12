#!/usr/bin/scheme --script

(define (smallest-divisor n)
    (define (next-divisor p)
        (cond 
            [(= p 2) 3]
            [else (+ 2 p)]
        )
    )
    (define (find-divisor n divisor)
        (cond 
            [(> (* divisor divisor) n)  n]
            [(= (remainder n divisor) 0) divisor]
            [else (find-divisor n (next-divisor divisor))]
        )
    )
    (find-divisor n 2)
)

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)