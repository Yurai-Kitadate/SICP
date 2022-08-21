(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess) ) 3)
)
(define (good-enough? guess x)
    (< (abs (- (* guess guess guess) x))0.001))
(define (tri-iter guess x)
    (if (good-enough? guess x)
    guess
    (tri-iter (improve guess x) x
)))
(define (tri n) (* n n n))
(display (tri (tri-iter 1.0 2)))