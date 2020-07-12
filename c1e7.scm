

(define (sqrt1 x)
    (define (good-enough? guess)
        (< (abs (- (* guess guess) x) ) 0.00001)
    )
    ; improve is infact newton iteration method.
    (define (improve guess)
        (* 0.5 (+ guess (/ x guess)))
    )
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))
        )
    )
    (sqrt-iter 1.0)
)