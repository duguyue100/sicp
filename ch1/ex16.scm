(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (new-if predicate then-calause else-calause)
  (cond (predicate then-calause)
	(else else-calause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))
; will abort from maximum recursion depth
;

(define (sqrt x)
  (sqrt-iter 1.0 x))
