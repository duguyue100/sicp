(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess new-guess)
  (< (abs (- guess new-guess)) 0.0000001))

(define (sqrt-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess)
      guess
      (sqrt-iter new-guess x)))
