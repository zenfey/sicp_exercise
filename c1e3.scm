

(define (mot x y z)
    (cond ((and (< x y) (< x z)) (+ y z))
        ((and (< y x) (< y z)) (+ x z))
        ((and (< z x) (< z y)) (+ y x))
    )
)